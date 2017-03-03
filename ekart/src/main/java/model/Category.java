package model;

import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;


@Entity
public class Category {
	@Id
	@NotNull
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id; 
	
	private String categoryDetails;
	
	@OneToMany(mappedBy="categoryDetails")
	private List<Product>Products;    
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCategoryDetails() {
		return categoryDetails;
	}

	public void setCategoryDetails(String categoryDetails) {
		this.categoryDetails = categoryDetails;
	}
	@Override
	public String toString() {
		return this.id + " " + this.categoryDetails;
	}
	

}
