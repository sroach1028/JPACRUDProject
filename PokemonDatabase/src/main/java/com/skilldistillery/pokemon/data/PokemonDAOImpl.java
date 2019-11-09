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
		return em.find(Pokemon.class, 1);
	}

	@Override
	public List<Pokemon> findPokemonByKeyword(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Pokemon> showAllPokemon() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Pokemon> findPokemonByType(String type) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Pokemon> findPokemonByWeakness(String weakness) {
		// TODO Auto-generated method stub
		return null;
	}

}
