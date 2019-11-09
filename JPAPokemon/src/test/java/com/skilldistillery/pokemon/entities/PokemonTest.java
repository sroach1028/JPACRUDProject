package com.skilldistillery.pokemon.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class PokemonTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Pokemon pokemon;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("Pokemon");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		pokemon = em.find(Pokemon.class, 1);
	}
	

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		pokemon = null;
	}

	@Test
	@DisplayName("test pokemon entity mapped to db_returns pikachu for id 1")
	void test() {
		assertNotNull(pokemon);
		assertEquals("Pikachu", pokemon.getName());
	}

}
