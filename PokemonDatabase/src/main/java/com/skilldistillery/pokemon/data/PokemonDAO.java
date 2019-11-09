package com.skilldistillery.pokemon.data;

import java.util.List;

import com.skilldistillery.pokemon.entities.Pokemon;

public interface PokemonDAO {
	Pokemon findPokemonById(int id);
	List<Pokemon> findPokemonByName(String name);
	List<Pokemon> showAllPokemon();
	List<Pokemon> findPokemonByType(String type);
	List<Pokemon> findPokemonByWeakness(String weakness);
	Pokemon createPokemon(String name, String type, String weakness, String evolvedName, String imageUrl);
	boolean deletePokemon(int id);
	Pokemon updatePokemon(int id, Pokemon prototype);
}
