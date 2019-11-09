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
		Pokemon pokemon = em.find(Pokemon.class, id);
		if (em.contains(Pokemon.class)) {
			return pokemon;
		}
		else
		return null;
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
