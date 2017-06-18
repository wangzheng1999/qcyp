package com.dao.impl;

import java.util.List;
import org.hibernate.FlushMode;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import com.dao.GoodsDAO;
import com.domain.Goods;

public class GoodsDAOImpl extends HibernateDaoSupport implements GoodsDAO {
	public void test() {
		System.out.println("goodsDAOImpl:done");
	}

	public boolean create(Goods goods) {
		this.getHibernateTemplate().getSessionFactory().getCurrentSession().setFlushMode(FlushMode.AUTO);
		this.getHibernateTemplate().save(goods);
		return true;
	}

	public boolean update(Goods goods) {
		this.getHibernateTemplate().update(goods);
		return true;
	}

	public boolean delete(Goods goods) {
		this.getHibernateTemplate().delete(goods);
		return true;
	}

	public Goods selectById(Integer id) {
		String hql = "from Goods where gid = ?";
		Goods goods = (Goods) this.getHibernateTemplate().find(hql, id).get(0);
		return goods;
	}

	public List<Goods> selectByKWord(String k) {
		String hql = "from Goods where category = ?";
		List<Goods> list = (List<Goods>) this.getHibernateTemplate().find(hql, k);
		if (list.size() > 0) {
			return list;
		} else
			return null;
	}

	public List<Goods> selectAll() {
		String hql = "from Goods";
		List<Goods> list = (List<Goods>) this.getHibernateTemplate().find(hql);
		if (list.size() > 0) {
			return list;
		} else
			return null;
	}

	public List<Goods> selectLikeKey(String key) {
		String hql = "from Goods where category like '%" + key + "%'" + "or name like '%" + key + "%'"+"or gid like '%"+key+"%'"+"or address like '%"+key+"%'";
		List<Goods> list = (List<Goods>) this.getHibernateTemplate().find(hql);
		if (list.size() > 0) {
			return list;
		} else
			return null;
	}

}
