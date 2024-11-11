package com.swtest.cakeshop;

import com.swtest.cakeshop.product.category.Category;
import com.swtest.cakeshop.product.category.CategoryRepository;
import com.swtest.cakeshop.role.Role;
import com.swtest.cakeshop.role.RoleRepository;
import com.swtest.cakeshop.user.User;
import com.swtest.cakeshop.user.UserRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadPoolExecutor;

@SpringBootApplication
@EnableAsync
public class CakeShopApplication {

    public static void main(String[] args) {
		SpringApplication.run(CakeShopApplication.class, args);
	}

	@Bean
	public Executor taskExecutor() {
		ThreadPoolTaskExecutor executor = new ThreadPoolTaskExecutor();
		executor.setCorePoolSize(2);
		executor.setMaxPoolSize(2);
		executor.setQueueCapacity(500);
		executor.setThreadNamePrefix("CakeShop-");
		executor.initialize();
		return executor;
	}

}
