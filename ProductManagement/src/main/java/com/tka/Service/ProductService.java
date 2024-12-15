package com.tka.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tka.Dao.Productdao;
import com.tka.Entity.Product;

@Service
public class ProductService {

	@Autowired
	private Productdao pd;

	public String addproduct(Product product) {
		String msg = pd.Addproduct(product);
		return msg;
	}

	public List<Product> displaypoduct() {
		List<Product> plist = pd.Displayproduct();
		return plist;
	}

	public String Deleteproduct(int pk) {
		String res = pd.DeleteProduct(pk);
		return res;

	}

	public Product getproduct(int pk) {
		Product pro = pd.getproduct(pk);
		return pro;
	}

	public String updateproduct(Product product) {
	    String msg = pd.Updateproduct(product);
		return msg;
	}
}
