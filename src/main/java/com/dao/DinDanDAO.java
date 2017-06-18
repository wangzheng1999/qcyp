package com.dao;

import java.util.List;

import com.domain.DinDan;

public interface DinDanDAO {

	List<DinDan> selectOrderByUid(Integer uid);

	DinDan selectOrderByDid(Integer did);

	boolean update(DinDan dinDan);

	List<DinDan> selectAllOrder();

}
