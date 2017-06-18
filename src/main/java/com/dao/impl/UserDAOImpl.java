package com.dao.impl;

import java.util.List;

import org.hibernate.FlushMode;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.dao.UserDAO;
import com.domain.User;

public class UserDAOImpl extends HibernateDaoSupport implements UserDAO {

	public User findIdandPassword(User user) {
		String hql = "from User where uid = ? and pwd = ?";
		List<User> list = (List<User>) this.getHibernateTemplate().find(hql, user.getUid(), user.getPwd());
		if (list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	public boolean create(User user) {
//		this.getHibernateTemplate().getSessionFactory().getCurrentSession().setFlushMode(FlushMode.AUTO);
//		if(0!=((List<User>)this.getHibernateTemplate().find("from User where uid=?", user.getUid())).size()){
//			return false;
//		}
		this.getHibernateTemplate().save(user);
		return true;
	}

	public boolean update(User user) {
		this.getHibernateTemplate().update(user);
		return true;
	}

}
