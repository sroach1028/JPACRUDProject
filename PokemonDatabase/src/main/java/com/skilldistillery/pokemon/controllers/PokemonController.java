package com.skilldistillery.pokemon.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.pokemon.data.PokemonDAO;

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
	
}
