package service;

import java.util.List;

import model.Product;

public interface ProductService {
	Product saveProduct(Product product);
	List<Product> getAllProducts();
	void deleteProduct(int id);
	void updateProduct(Product product);
	Product getProductById(int id);
	/*	Product getProductById(int id);
*/
}
