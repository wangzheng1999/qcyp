package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.dao.DinDanDAO;
import com.domain.DinDan;
import com.domain.Goods;

public class DinDaoDAOImpl extends HibernateDaoSupport implements DinDanDAO {

	public List<DinDan> selectOrderByUid(Integer uid) {
		String hql = "from DinDan where uid = ?";
		List<DinDan> list = (List<DinDan>) this.getHibernateTemplate().find(hql, uid);
		if (list.size() > 0) {
			return list;
		} else
			return null;
	}

	public DinDan selectOrderByDid(Integer did) {
		String hql = "from DinDan where did = ?";
		DinDan dinDan =  (DinDan) this.getHibernateTemplate().find(hql, did).get(0);
		return dinDan;
	}

	public boolean update(DinDan dinDan) {
		this.getHibernateTemplate().update(dinDan);
		return true;
	}

	public List<DinDan> selectAllOrder() {
		String hql = "from DinDan";
		List<DinDan> list = (List<DinDan>) this.getHibernateTemplate().find(hql);
		if (list.size() > 0) {
			return list;
		} else
			return null;
	}

}
