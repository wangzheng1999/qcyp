package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.dao.CarDAO;
import com.domain.Car;
import com.domain.DinDan;
import com.domain.Goods;
import com.domain.User;

public class CarDAOimpl extends HibernateDaoSupport implements CarDAO {

	public List<Car> showCar() {
		List<Car> list = null;
		list = (List<Car>) this.getHibernateTemplate().find("from Car");
		return list;
	}

	public Goods findgoodbyid(String id) {
		Integer gid = Integer.valueOf(id);
		Goods good = (Goods) this.getHibernateTemplate().find("from Goods where gid = ?", gid).get(0);
		return good;
	}

	public void save(Car car) {
		this.getHibernateTemplate().save(car);

	}

	public User findUserById(int uid) {
		User user = (User) this.getHibernateTemplate().find("from User").get(0);
		return user;
	}

	public void saveDinDan(DinDan dindan) {
		this.getHibernateTemplate().save(dindan);

	}

	public void update(Goods good) {
		this.getHibernateTemplate().update(good);
		
	}

}
