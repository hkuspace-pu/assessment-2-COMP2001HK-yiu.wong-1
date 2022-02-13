package com.comp2001hkcw2api.sqlquery;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.comp2001hkcw2api.model.Programme;

@Repository
public class ProgrammeSQL {
	
	@PersistenceContext
	private EntityManager em;
	
	public List<Programme> getAllProg()
	{
		String sql = "select * from A2P1.Programmes";
		Query q = em.createNativeQuery(sql, Programme.class);
		List<Programme> list = (List<Programme>) q.getResultList();
		return list;
	}
	
	@Transactional
	public void insertNewProg(Programme p)
	{
/*		Query q = em.createNativeQuery("{call Create_Programme(?)}");           
		q.setParameter(1, A2P1.Programmes.getTitle());
		int result = q.executeUpdate();
		return result; */
		
		String sql = "insert into A2P1.Programmes (title) values (:title)";
		Query q = em.createNativeQuery(sql);
		q.setParameter("title", p.getTitle());
		q.executeUpdate(); 
	}
	
	@Transactional
	public void updateProg(Integer code, Programme p)
	{
/*		Query q = em.createNativeQuery("{call Update_Programme(?, ?)}");           
		q.setParameter(1, code);
		q.setParameter(2, A2P1.Programmes.getTitle());
		int result = q.executeUpdate();
		return result; */
		
		String sql = "update A2P1.Programmes set title = :title where code = :code";
		Query q = em.createNativeQuery(sql);
		q.setParameter("title", p.getTitle());
		q.setParameter("code", code);
		q.executeUpdate(); 
	}
	
	@Transactional
	public void delProg(Integer code)
	{
/*		Query q = em.createNativeQuery("{call Delete_Programme(?)}");           
		q.setParameter(1, code);
		int result = q.executeUpdate();
		return result; */
		
		String sql = "delete A2P1.Programmes where code = :code";
		Query q = em.createNativeQuery(sql);
		q.setParameter("code", code);
		q.executeUpdate();
	} 
}
