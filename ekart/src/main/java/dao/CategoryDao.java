package dao;

import java.util.List;

import model.Category;

public interface CategoryDao {
	List<Category> getCategories();
	//Category getProductsByCategory(String category);
}
