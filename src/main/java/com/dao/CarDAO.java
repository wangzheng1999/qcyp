package com.dao;

import java.util.List;

import com.domain.Car;
import com.domain.DinDan;
import com.domain.Goods;
import com.domain.User;

public interface CarDAO {
	public List<Car> showCar();

	public Goods findgoodbyid(String id);

	public void save(Car car);

	public  User findUserById(int uid);
	

	public void saveDinDan(DinDan dindan);

	public void  update(Goods good);



}
