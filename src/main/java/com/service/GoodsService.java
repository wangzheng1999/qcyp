package com.service;

import java.util.List;

import com.domain.Goods;

public interface GoodsService {
	void test();

	boolean create(Goods goods);

	boolean update(Goods goods);

	boolean delete(Goods goods);

	Goods selectById(Integer id);

	List<Goods> selectByKWord(String k);

	List<Goods> selectAll();

	List<Goods> selectLikeKey(String key);

}
