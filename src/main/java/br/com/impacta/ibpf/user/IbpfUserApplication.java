package br.com.impacta.ibpf.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@EnableEurekaClient
@SpringBootApplication
public class IbpfUserApplication {

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	public static void main(String[] args) {

		SpringApplication.run(IbpfUserApplication.class, args);
	}

}
