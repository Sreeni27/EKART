package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.CategoryDao;
import model.Category;

@Service
public class CategoryServiceImpl implements CategoryService {

	
@Autowired
private CategoryDao categoryDao;

public CategoryServiceImpl() {

	System.out.println("Instance creating for CATEGORYSERVICEIMPL");

}


//@Transactional
public List<Category> getCategories(){
	return categoryDao.getCategories();
}


public Category getProductsByCategory(String category) {
	return null;
}
}