package com.skilldistillery.pokemon.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.pokemon.data.PokemonDAO;
import com.skilldistillery.pokemon.entities.Pokemon;

@Controller
public class PokemonController {
	@Autowired
	private PokemonDAO pokeDao;
	
	@RequestMapping(path="/")
	public String toIndex() {
		return "index";
	}
	
	@RequestMapping(path="getPokemon_id.do")
	public String findPokemon(Model model, int id) {
		model.addAttribute("pokemon", pokeDao.findPokemonById(id));
		return "display";
	}
	
	@RequestMapping(path="createPokemon.do", method = RequestMethod.POST)
	public String createPokemon(Model model, String name, String type, String weakness, String evolvedName, String imageUrl) {
		model.addAttribute("pokemon", pokeDao.createPokemon(name, type, weakness, evolvedName, imageUrl));
		return "display";
	}
	
	@RequestMapping(path="deletePokemon.do", method = RequestMethod.POST)
	public String deletePokemon(Model model, int id) {
		boolean removed = pokeDao.deletePokemon(id);
		model.addAttribute("removed", removed);
		return "delete_result";
	}
	@RequestMapping(path="editPokemon.do", method = RequestMethod.GET)
	public String editPokemon(Model model, int id) {
		model.addAttribute("pokemon", pokeDao.findPokemonById(id));
		return "edit_pokemon";
	}
	@RequestMapping(path="updatePokemon.do", method=RequestMethod.POST)
	public String updatePokemon(Model model, int id, String name, String type, String weakness, String evolvedName, String imageUrl) {
		Pokemon updatedVersion = new Pokemon(name, type, weakness, evolvedName, imageUrl);
		System.out.println(updatedVersion);
		model.addAttribute("pokemon", pokeDao.updatePokemon(id, updatedVersion));
		return "display";
	}
	
}
