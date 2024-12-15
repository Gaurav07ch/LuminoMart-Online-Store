package com.tka.Dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.tka.Entity.Product;

@Repository
public class Productdao {

	@Autowired
	private SessionFactory session;

	public String Addproduct(Product product) {
		try {
			Session ss = session.openSession();
			Transaction tx = ss.beginTransaction();
			ss.save(product);
			tx.commit();
			ss.close();
			return "Data Inserted Successful...";
		} catch (Exception e) {
			e.printStackTrace();
			return "Something went Wrong";
		}
	}

	public List<Product> Displayproduct() {
		List<Product> plist = null;
		try {
			Session ss = session.openSession();
			Criteria criteria = ss.createCriteria(Product.class);
			plist = criteria.list();
			return plist;
		} catch (Exception e) {
			e.printStackTrace();
			return plist;
		}
	}

	public Product getproduct(int pk) {
		Product product = null;

		try {
			Session ss = session.openSession();
			product = ss.get(Product.class, pk);
			return product;
		} catch (Exception e) {
			e.printStackTrace();
			return product;
		}

	}

	public String DeleteProduct(int pk) {
		Product pro = null;
		// Product pro = this.getproduct(pk);
		try {
			Session ss = session.openSession();
			Transaction tx = ss.beginTransaction();
			pro = ss.get(Product.class, pk);
			ss.delete(pro);
			tx.commit();
			return "Product Deleted Successful";
		} catch (Exception e) {
			e.printStackTrace();
			return "Something went Wrong";
		}

	}

	public String Updateproduct(Product product) {
		try {
			Session ss = session.openSession();
			Transaction tx = ss.beginTransaction();
			ss.saveOrUpdate(product);
			tx.commit();
			ss.close();
			return "Data Updated Successful...";
		} catch (Exception e) {
			e.printStackTrace();
			return "Something went Wrong";
		}

	}
}
