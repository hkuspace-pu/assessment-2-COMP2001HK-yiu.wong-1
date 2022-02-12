package com.comp2001hkcw2api;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Comp2001hkcw2ApiApplication {
	
	private static final Logger logger = LoggerFactory.getLogger(Comp2001hkcw2ApiApplication.class);

	public static void main(String[] args) {
		
		SpringApplication.run(Comp2001hkcw2ApiApplication.class, args);
	}

}
