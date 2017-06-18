package com.service;

import java.util.List;

import com.domain.Car;
import com.domain.Carshop;

public interface CarService {
	public List<Car> showCar();

	public void buycar(String id, Carshop shop);

	public void deletecar(String id, Carshop shop);

	public void clearshop(Carshop carshop);

	public void updateshop(String id, int num, Carshop carshop);

	public void w2dbShop(Carshop carshop, int uid);

	
	
	

	
	

}





