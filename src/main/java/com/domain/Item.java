package com.domain;

public class Item {
	private Goods good;
	private int number;
	private double itemprice;
	public Goods getGood() {
		return good;
	}
	public void setGood(Goods good) {
		this.good = good;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public double getItemprice() {
		this.itemprice= good.getPrice()*number;
		return itemprice;
	}
	public void setItemprice(double itemprice) {
		this.itemprice = itemprice;
	}


}
