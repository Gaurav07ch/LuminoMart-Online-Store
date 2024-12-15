package com.tka.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tka.Entity.Product;
import com.tka.Service.ProductService;

@Controller
public class PageController {

	@Autowired
	private ProductService ps;

	@GetMapping("/login")
	public String loginControl() {
		return "login";
	}

	@GetMapping("/add-product")
	public String insertProduct() {
		return "add";
	}

	@PostMapping("/insert-product")
	public String addproduct(@ModelAttribute Product product) {
		System.out.println("in post");
		System.out.println(product);
		String msg = ps.addproduct(product);
		System.out.println(msg);
		return "add";
	}

	@GetMapping("/display-product")
	public String displayProduct(Model model) {
		List<Product> list = ps.displaypoduct();
		System.out.println(list);
		model.addAttribute("products", list);
		return "display";
	}

	@GetMapping("/delete-product")
	public String deleteproduct(@RequestParam("p_id") int pk) {
		String res = ps.Deleteproduct(pk);
		System.out.println(res);
		return "redirect:/display-product";
	}

	@GetMapping("/view-product")
	public String Viewproduct(@RequestParam("p_id") int pk, Model model) {
		Product product = ps.getproduct(pk);
        model.addAttribute("p", product);
		return "update";
	}
	
	@PostMapping("/update-product")
	public String Updateproduct(@ModelAttribute Product product) {
		String msg = ps.updateproduct(product);
		System.out.println(msg);
		return "redirect:/display-product";
	}
}
