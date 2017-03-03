package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Category;
@Repository
public class CategoryDaoImpl implements CategoryDao {


	public CategoryDaoImpl() {
	
	System.out.println("CATEGORY DAO IMPL INSTANCE CREATING");
		}
@Autowired
private SessionFactory sessionfactory;


public List<Category> getCategories(){
	Session session=sessionfactory.openSession();
	//Transaction Tc=(Transaction)session.beginTransaction();
	
	Query query = session.createQuery("from Category");
	List<Category> categories=query.list();
	//Tc.commit();  // haing dout in this line
	session.close();
	return categories;
	
	
	
}
}
