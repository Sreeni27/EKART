package dao;


import java.util.List;

import model.Product;

public interface ProductDao {
Product saveProduct(Product product);
 List<Product> getAllProducts();
 void deleteProduct(int id);
 void updateProduct(Product product);
 Product getProductById(int id);

}