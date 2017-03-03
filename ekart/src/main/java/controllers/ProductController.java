package controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.ProductDao;
import model.Product;
import service.CategoryService;
// import service.CategoryService;
import service.ProductService;

@Controller
public class ProductController {
	  
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categoryservice;

		@RequestMapping("/admin/product/productform")
		public String getProductForm(Model model) {
			model.addAttribute("product", new Product());
			model.addAttribute("categories", categoryservice.getCategories());
			return "productform";
		}

	public ProductController() {
		System.out.println("CREATING INSTANCE FOR PRODUCTCONTROLLER");
	}

	
//-------------add product--------------------------------
	@RequestMapping("admin/product/addProduct")
public String saveProduct(@Valid @ModelAttribute(value="product") Product product,BindingResult result){
		if(result.hasErrors())
			return "productform";
		productService.saveProduct(product);
	return "redirect:/getAllProducts";
}
//-------------view product-----------------------------------
@RequestMapping("/getAllProducts")
public String getAllProducts(Model model){
	List<Product> products=productService.getAllProducts();
	//Assigning list of products to model attribute products
	model.addAttribute("productlist",products);
	return "productlist"; 
}
@RequestMapping("/all/product/viewproduct/{id}")
public String viewProduct(@PathVariable int id,Model model){
	Product product=productService.getProductById(id);
	model.addAttribute("product",product);
return "viewproduct";
}
//---------------delete product------------------------
@RequestMapping("/admin/product/deleteproduct/{id}")
public String deleteProduct(@PathVariable int id){
	productService.deleteProduct(id);
	return "redirect:/getAllProducts";
}
//-----------------edit form--------------------------------------
@RequestMapping("/admin/product/editform/{id}")
public String editProductForm(@PathVariable int id,Model model){
	Product product=productService.getProductById(id);
	model.addAttribute("product",product);
//	model.addAttribute("categories",categoryService.getCategories());
	return "editproductform";
}
//-----------------edit product-----------------
@RequestMapping("/admin/product/editproduct")
public String editProductDetails(@Valid @ModelAttribute("product") Product product,
		BindingResult result){
	if(result.hasErrors())
		return "editproductform";
	productService.updateProduct(product);
	return "redirect:/getAllProducts";
}
@RequestMapping("/product/single")
public String getSingle(Model model){
	//Product product = new Product();
	model.addAttribute("product",new Product());
	return "single11";
}
@RequestMapping("/all/product/productsByCategory")
public String getProductsByCategory(@RequestParam(name="searchCondition") String searchCondition,
		Model model){
	List<Product> products=productService.getAllProducts();
	//Assigning list of products to model attribute products
	model.addAttribute("productlist",products);
	model.addAttribute("searchCondition",searchCondition);
	return "productlist";
}
}
	 

