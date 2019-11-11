package com.skilldistillery.pokemon;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class PokemonDatabaseApplication extends SpringBootServletInitializer{
	@Override
	  protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
	    return application.sources(PokemonDatabaseApplication.class);
	  }

	public static void main(String[] args) {
		SpringApplication.run(PokemonDatabaseApplication.class, args);
	}

}
