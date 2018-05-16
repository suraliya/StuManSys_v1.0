package com.persistence.user;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.action.LoginAction;
import com.bean.User;

public class UserManager {
	
	public static Session session;
	public static Transaction transaction;
	
	public static void addSettings(){
		
		Configuration configuration = new Configuration().configure();		
		SessionFactory sessionFactory = configuration.buildSessionFactory();	
		session = sessionFactory.getCurrentSession();
		transaction = session.beginTransaction();
	}	
	
	
	public static boolean validateAccount(User user) {
		
		addSettings();		
		String hql = "FROM Users u WHERE u.email = ? AND u.password = ?";		
		Query query = session.createQuery(hql);
		query.setString(0, user.getEmail());
		query.setString(1, user.getPassword());
		
		List<Users> list = query.list();
		
		java.util.Iterator<Users> iter = list.iterator();
		boolean result = iter.hasNext();
		System.out.println(result);
		
		while(iter.hasNext()) {
			Users u = iter.next();
			user.setFname(u.getFirstname());
			user.setLname(u.getLastname());
			user.setUsertype(u.getUsertype());
		}
		transaction.commit();
		return result;		
	}
	
	public static void addUser(Users u) {
		addSettings();
		session.save(u);
		transaction.commit();
//		System.out.println(result);
//		return result;		
	}
	
	public static Iterator<Users> fetchUsers() {
		addSettings();
		String hql = "FROM Users u";
		Query query = session.createQuery(hql);
		List<Users> list = query.list();
		
		java.util.Iterator<Users> iter = list.iterator();
		return iter;
		
		/*while (iter.hasNext()) {

			Users u = iter.next();
			System.out.print(u.getFirstname() + " ");
			System.out.print(u.getEmail() + " ");
			System.out.print(u.getContactno() + " ");
			System.out.println(u.getUsertype() + " ");
		}
*/
	}

}
