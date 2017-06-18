package com.domain;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class Carshop{
     //图书列表
	private Map<String,Item> map = new LinkedHashMap<String, Item>();
	//总价i
	 
	
	private  double  totalprice;
	public Map<String, Item> getMap() {
		return map;
	}
	public void setMap(Map<String, Item> map) {
		this.map = map;
	}
	public double getTotalprice() {
		totalprice =0;
		Set<Entry<String,Item>> set=this.map.entrySet();
		 for( Entry<String,Item> entry : set){
			totalprice += totalprice=entry.getValue().getItemprice();
		 
		 }
		return totalprice;
	}
	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}
	
}