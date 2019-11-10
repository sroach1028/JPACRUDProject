package com.skilldistillery.pokemon.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.pokemon.entities.Pokemon;

@Transactional
@Service
public class PokemonDAOImpl implements PokemonDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Pokemon findPokemonById(int id) {
		return em.find(Pokemon.class, id);
	}

	@Override
	public List<Pokemon> findPokemonByName(String name) {
		String query = "Select pokemon from Pokemon pokemon where pokemon.name like :name";
		List<Pokemon> results = em.createQuery(query, Pokemon.class).setParameter("name", name).getResultList();
		return results;
	}

	@Override
	public List<Pokemon> showAllPokemon() {
		String query = "Select pokemon from Pokemon pokemon";
		List<Pokemon> results = em.createQuery(query, Pokemon.class).getResultList();
		return results;
	}

	@Override
	public List<Pokemon> findPokemonByType(String type) {
		String query = "select pokemon from Pokemon pokemon where pokemon.type like :type";
		List<Pokemon> results = em.createQuery(query, Pokemon.class).getResultList();
		return results;
	}

	@Override
	public List<Pokemon> findPokemonByWeakness(String weakness) {
		String query = "select pokemon from Pokemon pokemon where pokemon.type like :weakness";
		List<Pokemon> results = em.createQuery(query, Pokemon.class).getResultList();
		return results;
	}

	@Override
	public Pokemon createPokemon(String name, String type, String weakness, String evolvedName, String imageUrl) {
		Pokemon newPoke = new Pokemon(name, type, weakness, evolvedName, imageUrl);
		em.persist(newPoke);
		return newPoke;
	}

	@Override
	public boolean deletePokemon(int id) {
		Pokemon poke = em.find(Pokemon.class, id);
		if (poke != null) {
			em.remove(poke);
			return true;
		}
			return false;
	}

	@Override
	public Pokemon updatePokemon(int id, Pokemon prototype) {
		Pokemon managed = em.find(Pokemon.class, id);
		managed.setName(prototype.getName());
		managed.setType(prototype.getType());
		managed.setWeakness(prototype.getWeakness());
		managed.setEvolvedName(prototype.getEvolvedName());
		managed.setImageUrl(prototype.getImageUrl());
		return managed;
	}



}
