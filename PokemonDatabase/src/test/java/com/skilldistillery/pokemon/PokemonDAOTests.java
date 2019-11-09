package com.skilldistillery.pokemon;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.List;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.skilldistillery.pokemon.data.PokemonDAO;
import com.skilldistillery.pokemon.data.PokemonDAOImpl;
import com.skilldistillery.pokemon.entities.Pokemon;

class PokemonDAOTests {
	private PokemonDAOImpl dao = new PokemonDAOImpl();
	private Pokemon testPoke;


	@BeforeEach
	void setUp() throws Exception {
	}

	@AfterEach
	void tearDown() throws Exception {
		testPoke = null;
	}

	@Test
	void test() {
		testPoke = dao.findPokemonById(3);
		assertNotNull(testPoke);
	}

}
