package com.groupeisi.companyspringmvc.dao;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import com.groupeisi.companyspringmvc.config.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class RepositoryImpl<T> implements Repository<T> {
	protected Session session = HibernateUtil.getSessionFactory().openSession();
	Transaction transaction = null;

	@Override
	public boolean save(T t) {
		try {
			transaction = session.beginTransaction();
			session.save(t);
			transaction.commit();
			return true;
		} catch (Exception e2) {
			return false;
		}
	}

	@Override
	public boolean delete(long id, T t) {
		try {
			transaction = session.beginTransaction();
			session.delete(session.get(t.getClass(), id));
			transaction.commit();
			return true;
		} catch (Exception e2) {
			return false;
		}
	}

	@Override
	public boolean update(T t) {
		try {
			transaction = session.beginTransaction();
			session.merge(t);
			transaction.commit();
			return true;
		} catch (Exception e2) {
			return false;
		}
	}

	@Override
	public List<T> list(T t) {
		// Utilisation de l'API criteria
		CriteriaBuilder cb = session.getCriteriaBuilder();
		CriteriaQuery<T> cq = (CriteriaQuery<T>) cb.createQuery(t.getClass());
		Root<T> root = (Root<T>) cq.from(t.getClass());
		cq.select(root);
		return session.createQuery(cq).getResultList();

	}

	@Override
	public T get(long id, T t) {
		return (T) session.get(t.getClass(), id);
	}

	@Override
	public T get(String id, T t) {
		return (T) session.get(t.getClass(), id);
	}

}
