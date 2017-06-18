package com.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.springframework.transaction.annotation.Transactional;

import com.dao.CarDAO;
import com.domain.Car;
import com.domain.Carshop;
import com.domain.DinDan;
import com.domain.Goods;
import com.domain.Item;
import com.domain.User;
import com.service.CarService;

@Transactional
public class CarServiceimpl implements CarService {
	private CarDAO cardao;

	public void setCardao(CarDAO cardao) {
		this.cardao = cardao;
	}

	public List<Car> showCar() {
		List<Car> list = null;
		list = cardao.showCar();
		return list;
	}

	public void buycar(String id, Carshop shop) {
		Map<String, Item> map = (Map<String, Item>) shop.getMap();
		Item item = map.get(id);
		if (item == null) {
			item = new Item();
			Goods good = cardao.findgoodbyid(id);
			item.setGood(good);
			item.setNumber(1);
			map.put(id, item);

		} else {
			item.setNumber(item.getNumber() + 1);

		}

	}

	public void deletecar(String id, Carshop shop) {
		Map<String, Item> map = shop.getMap();
		map.remove(id);
	}

	public void clearshop(Carshop carshop) {
		Map<String, Item> map = carshop.getMap();
		map.clear();
	}

	public void updateshop(String id, int num, Carshop carshop) {
		Map<String, Item> map = carshop.getMap();
		Item item = map.get(id);
		item.setNumber(num);

	}

	public void w2dbShop(Carshop carshop, int uid) {
		Map<String, Item> map = carshop.getMap();
		User user = cardao.findUserById(uid);
		Set<Entry<String, Item>> set = map.entrySet();
		for (Entry<String, Item> entry : set) {
			Item item = entry.getValue();
			Goods good = item.getGood();
			String name = good.getName();// 商品名称
			double money = good.getPrice();// 商品单价
			int num = item.getNumber(); // 数量
			Car car = new Car();
			car.setMoney(money);
			car.setName(name);
			car.setNum(num);
			car.setUid(uid);
			cardao.save(car);
			DinDan dindan = new DinDan();
			// private Integer did;// 订单编号
			// private Integer uid;// 用户id
			// private String name;// 商品名称
			// private Double money;// 商品单价
			// private Integer num;// 数量
			// private String date;// 订单创建日期
			// private String status;// 订单状态
			// private String address;// 收货地址
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String date = df.format(new Date());// new Date()为获取当前系统时间
			String status = "待发货";
			String address = user.getAddress();
			dindan.setAddress(address);
			dindan.setMoney(money);
			dindan.setName(name);
			dindan.setStatus(status);
			dindan.setUid(uid);
			dindan.setDate(date);
			dindan.setNum(num);
			cardao.saveDinDan(dindan);
			good.setSum(good.getSum()-num);
		    cardao.update(good);
			
			

		}
	}

}
