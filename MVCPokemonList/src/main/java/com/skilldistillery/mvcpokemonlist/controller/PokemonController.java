package com.skilldistillery.mvcpokemonlist.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpapokemon.entities.Pokemon;
import com.skilldistillery.mvcpokemonlist.data.PokemonDAO;

@Controller
public class PokemonController {
	@Autowired
	private PokemonDAO dao;
	
	@RequestMapping(path="index.do")
	public ModelAndView index(Model model) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping(path="list.do", method=RequestMethod.GET)
	public ModelAndView showPokemon(Model model) {
		ModelAndView mv = new ModelAndView();
		
		List<Pokemon> pokeList = dao.index();
		mv.addObject("allPokemon", pokeList);
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping(path="getById.do", method=RequestMethod.GET)
	public String getPokemonById(Model model, Integer id) {
		
		Pokemon pokemon = dao.show(id);
		model.addAttribute("pokemon", pokemon);
	
		return "card/pokemon";
	}
	
	@RequestMapping(path="getPokemon.do", params= "keyword", method=RequestMethod.GET)
	public ModelAndView searchByKeyword(String keyword) {
		ModelAndView mv = new ModelAndView();
		List<Pokemon> pokemons = dao.searchByKeyword(keyword);
		mv.addObject("pokemon", pokemons);
		mv.setViewName("keyWordResult");
		return mv;
	}
	
	@RequestMapping(path="addPokemon.do", method=RequestMethod.POST)
	public ModelAndView createPokemon(Pokemon pokemon) {
		ModelAndView mv = new ModelAndView();
		System.out.println(pokemon);
		Pokemon newPokemon = dao.createPokemon(pokemon);
		mv.addObject("pokemon", newPokemon);
		mv.setViewName("card/pokemon");
		return mv;
	}
	@RequestMapping(path="updatePokemon.do", method=RequestMethod.GET)
	public ModelAndView updatePokemon(int id) {
		ModelAndView mv = new ModelAndView();
		Pokemon pokemon = dao.show(id);
		mv.addObject("pokemon", pokemon);
		mv.setViewName("updatePokemon");
		return mv;
	}
	
	@RequestMapping(path="updatePokemon.do", method=RequestMethod.POST)
	public ModelAndView updatePokemon(Pokemon pokemon) {
		ModelAndView mv = new ModelAndView();
		Pokemon updatedPokemon = dao.updatePokemon(pokemon.getId(), pokemon);
		mv.addObject("pokemon", updatedPokemon);
		mv.setViewName("updateResult");
		return mv;
	}
	
	@RequestMapping(path="deletePokemon.do", method=RequestMethod.POST)
	public ModelAndView deletePokemon(Pokemon pokemon) {
		ModelAndView mv = new ModelAndView();
		boolean result = dao.destroy(pokemon);
		mv.addObject("success", result);
		mv.setViewName("destroyResult");
		return mv;
	}
	
	
}
