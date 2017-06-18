package com.service.impl;

import java.util.List;
import org.springframework.transaction.annotation.Transactional;
import com.dao.GoodsDAO;
import com.domain.Goods;
import com.service.GoodsService;

@Transactional
public class GoodsServiceImpl implements GoodsService {
	private GoodsDAO goodsDAO;

	public GoodsDAO getgoodsDAO() {
		return goodsDAO;
	}

	public void setgoodsDAO(GoodsDAO goodsDAO) {
		this.goodsDAO = goodsDAO;
	}

	public void test() {
		System.out.println("goodsServiceImpl:done");
		goodsDAO.test();
	}

	public boolean create(Goods goods) {
		return goodsDAO.create(goods);
	}

	public boolean update(Goods goods) {
		return goodsDAO.update(goods);
	}

	public boolean delete(Goods goods) {
		return goodsDAO.delete(goods);
	}

	public Goods selectById(Integer id) {
		return goodsDAO.selectById(id);
	}

	public List<Goods> selectByKWord(String k) {
		return goodsDAO.selectByKWord(k);
	}

	public List<Goods> selectAll() {
		return goodsDAO.selectAll();
	}

	public List<Goods> selectLikeKey(String key) {
		return goodsDAO.selectLikeKey(key);
	}
}
