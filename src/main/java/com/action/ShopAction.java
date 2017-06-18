package com.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.domain.Carshop;
import com.opensymphony.xwork2.ActionSupport;
import com.service.CarService;

  public class ShopAction extends ActionSupport {
	CarService  carservice ;
	private Integer uid;
	
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public CarService getCarservice() {
		return carservice;
	}
   public void setCarservice(CarService carservice) {
		this.carservice = carservice;
	}
   public String  buycar(){
    	HttpServletRequest request=ServletActionContext.getRequest();
    	String id = request.getParameter("id");  	
    	   Carshop shop =  (Carshop) request.getSession().getAttribute("carshop");
    	   if(shop==null){
    		   shop=new Carshop();
    		 request.getSession().setAttribute("carshop", shop);
    	   }
    	 carservice.buycar(id,shop);
	   return  "showcar";
	}
	
	public String clearshop(){
		Carshop carshop=(Carshop) ServletActionContext
				.getRequest().getSession().getAttribute("carshop");
		carservice.clearshop(carshop);
		return "showcar";
	}
	 public String delete(){
		   HttpServletRequest request = ServletActionContext.getRequest();
		       String id =  request.getParameter("id");
		          Carshop  shop = (Carshop) request.getSession().getAttribute("carshop");
		         carservice.deletecar(id,shop);
		   return  "showcar";
	   }
	 public String updateshop(){
		   HttpServletRequest request=ServletActionContext.getRequest();
		  String id = request.getParameter("id");
		  int num =Integer.parseInt(request.getParameter("num"));
		 Carshop carshop = (Carshop) request.getSession().getAttribute("carshop");
		  carservice.updateshop(id,num,carshop);		   
		   return "showcar";
	   }
	 public String  w2db(){
		 HttpServletRequest request=ServletActionContext.getRequest();
		Carshop carshop = (Carshop) request.getSession().getAttribute("carshop");
		  carservice.w2dbShop(carshop,uid);
		  return SUCCESS;
	 }
}
