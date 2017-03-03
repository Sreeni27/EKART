package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import model.Product;

@Repository
public class ProductDaoImpl implements ProductDao {
	@Autowired
	private SessionFactory sessionFactory;

	public ProductDaoImpl() {
		System.out.println("CREATING INSTANCE FOR PRODUCTDAOIMPL");
	}

	public SessionFactory getSessionFactory(SessionFactory sessionFactory) {
		return this.sessionFactory = sessionFactory;
	}

	// -----------------------ADD PRODUCT--------------------------------------
	public Product saveProduct(Product product) {
		
		System.out.println(product.getId());// Why i am writing this line
		Session session = sessionFactory.openSession();
		//Transaction Tx=(Transaction)session.beginTransaction();
		session.save(product);
		//Tx.commit();
		session.flush();
		session.close();
		System.out.println(product.getId());// What is the use of this line
		return product;
	}
// -----------------------VIEW PRODUCT--------------------------

public List<Product> getAllProducts() {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Product");
		List<Product> products=query.list();
		
		for(Product p:products)
		{ System.out.println(p.getName());
		}
		session.close();
		return products;
		}
//-------------------------DELETE PRODUCT---------------------------
public void deleteProduct(int id) {
	Session session=sessionFactory.openSession();
	//Make the object persistent[read the data from the table and add it to session]
	Product product=(Product)session.get(Product.class, id);
	session.delete(product);
	session.flush();
	session.close();
}
//------------------------EDIT PRODUCT---------------------
public void updateProduct(Product product) {
	Session session=sessionFactory.openSession();
	System.out.println("Id of the product in dao is " + product.getId());
	session.update(product); //update product set ..... where id=?
	session.flush();
	session.close();
}
public Product getProductById(int id) {
	Session session=sessionFactory.openSession();
	//select * from product where id=34
	Product product=(Product)session.get(Product.class,id);
	session.close();
	return product;
}
}	/*	
	public Product getProductById(int id) {
		Session session=sessionFactory.openSession();
		//select * from product where id=34
		Product product=(Product)session.get(Product.class,id);
		session.close();
		return product;
	}
*/
