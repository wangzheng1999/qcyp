package com.service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.dao.DinDanDAO;
import com.domain.DinDan;
import com.service.DinDanService;

@Transactional
public class DinDanServiceImpl implements DinDanService {
	private DinDanDAO dinDanDAO;
	public DinDanDAO getDinDanDAO() {
		return dinDanDAO;
	}

	public void setDinDanDAO(DinDanDAO dinDanDAO) {
		this.dinDanDAO = dinDanDAO;
	}

	public List<DinDan> selectOrderByUid(Integer uid) {
		return dinDanDAO.selectOrderByUid(uid);
	}

	public DinDan selectOrderByDid(Integer did) {
		return dinDanDAO.selectOrderByDid(did);
	}

	public boolean update(DinDan dinDan) {
		return dinDanDAO.update(dinDan);
	}

	public List<DinDan> selectAllOrder() {
		return dinDanDAO.selectAllOrder();
	}

}
