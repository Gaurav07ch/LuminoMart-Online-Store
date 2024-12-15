package com.tka;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class MyMvcProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(MyMvcProjectApplication.class, args);
		System.err.println("App Started...");
	}
}
