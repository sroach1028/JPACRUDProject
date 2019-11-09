package com.skilldistillery.pokemon.data;

import java.util.List;

import com.skilldistillery.pokemon.entities.Pokemon;

public interface PokemonDAO {
	Pokemon findPokemonById(int id);
	List<Pokemon> findPokemonByKeyword(String keyword);
	List<Pokemon> showAllPokemon();
	List<Pokemon> findPokemonByType(String type);
	List<Pokemon> findPokemonByWeakness(String weakness);
	
}
