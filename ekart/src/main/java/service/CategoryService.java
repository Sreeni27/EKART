package service;

import java.util.List;

import model.Category;

public interface CategoryService {
	
	List<Category> getCategories();
	Category getProductsByCategory(String category);
}
