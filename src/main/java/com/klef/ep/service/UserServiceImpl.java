package com.klef.ep.service;

import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.klef.ep.models.User;


@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class UserServiceImpl  implements UserService
{

	
	
	@Override
	public User checkUserLogin(String username, String password,String repassword) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
		EntityManager em = emf.createEntityManager();
		
		Query qry= em.createQuery("select a from User a where a.username=? and a.password=? and a.repassword=? ");
		qry.setParameter(1, username);
		qry.setParameter(2, password);
		qry.setParameter(3, repassword);
		
		User user=null;
		
		if(qry.getResultList().size()>0)
		{
			user=(User)qry.getSingleResult();
		}
		return user;
	}

	@Override
	public String registrationUser(User user)
	{
		
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("jpa");
		EntityManager em=emf.createEntityManager();
		
		em.getTransaction().begin();
		em.persist(user); 
		em.getTransaction().commit();
		
		em.close();
		emf.close();
		
		return "User Registered Successfully";
	}

}
