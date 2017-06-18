package com.action;

import java.util.regex.Pattern;

import com.domain.Goods;
import com.opensymphony.xwork2.ActionSupport;

public class Gregister extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 7493937687066922300L;
	private String gid;
	private String name;
	private String info;
	private String date;
	private String address;
	private String sum;

	public String getSum() {
		return sum;
	}

	public void setSum(String sum) {
		this.sum = sum;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPrice() {
		return price;
	}

	private String price;

	public String getGid() {
		return gid;
	}

	public void setGid(String gid) {
		this.gid = gid;
	}

	public void validateGid() {
		Pattern p = Pattern.compile("[0-9]*");
		if (gid.equals("") || !p.matcher(gid).matches()) {
			this.addFieldError("tip", "输入的编号必须是数字且不为空");
		}

	}

	public String Gid() throws Exception {

		return SUCCESS;
	}

	public void validateName() {
		System.out.println(name.length()+"%%%%%%%%%");
		if (name.equals("") || name.length() < 5 || name.length() > 50) {
			this.addFieldError("tip", "姓名长度必须在2-5之间且不为空");
		}
	}

	public String Name() throws Exception {
		return SUCCESS;
	}

	public void validateInfo() {

		if (info.equals("") || info.length() < 3 || info.length() > 200) {
			this.addFieldError("tip", "信息长度不在范围且不为空");
		}
	}

	public String Info() throws Exception {

		return SUCCESS;

	}

	public void validateAddress() {
		if (address.equals("") || address.length() < 5 || address.length() >50) {
			this.addFieldError("tip", "地址长度不在范围且不为空");
		}
	}

	public String Address() throws Exception {

		return SUCCESS;

	}

	public void validateSum() {
		Pattern p = Pattern.compile("[0-9]*");
		if (sum.equals("") || !p.matcher(sum).matches()) {
			this.addFieldError("tip", "数量是数字且不为空");
		}
	}

	public String Sum() throws Exception {
		return SUCCESS;

	}

	public void validateDate() {
		Pattern p = Pattern.compile("^\\d{4}-\\d{2}-\\d{2}$");
		if (date.equals("") || !p.matcher(date).matches()) {
			this.addFieldError("tip", "不符合日期规格且不为空");
		}
	}

	public String Date() throws Exception {

		return SUCCESS;

	}

	public void setPrice(String price) {
		this.price = price;
	}

	public void validatePrice() {
		Pattern p = Pattern.compile("[0-9]*");
		if (price.equals("") || !p.matcher(price).matches()) {
			this.addFieldError("tip", "价格是数字且不为空");
		}
	}

	public String Price() throws Exception {
		return SUCCESS;

	}
}