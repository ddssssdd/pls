package com.ruifu;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;

@SpringBootApplication
@EnableCaching
public class PlsApplication {

	public static void main(String[] args) {
		SpringApplication.run(PlsApplication.class, args);
	}
}
