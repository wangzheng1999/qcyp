package com.action;

import java.io.File;
import java.util.List;

import com.domain.Goods;
import com.opensymphony.xwork2.ActionSupport;
import com.service.*;

public class GoodsAction extends ActionSupport {

	private static final long serialVersionUID = -4873524541110359999L;
	private GoodsService goodsService;
	private String key;
	private Goods goods;
	private Integer gid;
	private List<Goods> listgoods;
	private List<File> file1;

	public GoodsService getGoodsService() {
		return goodsService;
	}

	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public List<Goods> getListgoods() {
		return listgoods;
	}

	public void setListgoods(List<Goods> listgoods) {
		this.listgoods = listgoods;
	}

	public List<File> getFile1() {
		return file1;
	}

	public void setFile1(List<File> file1) {
		this.file1 = file1;
	}

	public Integer getGid() {
		return gid;
	}

	public void setGid(Integer gid) {
		this.gid = gid;
	}

	public String execute() throws Exception {
		System.out.println("SelectVATAction:done");
		goodsService.test();
		return SUCCESS;
	}

	// 新增商品
	public String create() throws Exception {
		if (goodsService.create(goods)) {
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

	// 更新商品
	public String update() {
		if (goodsService.update(goods)) {
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

	// 删除商品
	public String delete() {
		if (goodsService.delete(goods)) {
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

	// 查询商品
	public String selectAll() {
		listgoods = goodsService.selectAll();
		return SUCCESS;
	}

	// 按种类查询
	public String selectByKWord() {
		listgoods = goodsService.selectByKWord(key);
		return SUCCESS;
	}

	// 查询具体商品
	public String selectById() {
		goods = goodsService.selectById(gid);
		return SUCCESS;
	}
	
	public String selectLikeKey(){
		listgoods=goodsService.selectLikeKey(key);
		return SUCCESS;
	}
}
