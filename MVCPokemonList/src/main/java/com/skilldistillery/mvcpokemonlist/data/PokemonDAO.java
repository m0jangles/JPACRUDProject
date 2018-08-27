package com.skilldistillery.mvcpokemonlist.data;

import java.util.List;

import com.skilldistillery.jpapokemon.entities.Pokemon;

public interface PokemonDAO {

	List<Pokemon> index();

	Pokemon show(Integer id);

	Pokemon createPokemon(Pokemon pokemon);

	Pokemon updatePokemon(int id, Pokemon updatedPokemon);
	
	boolean destroy(Pokemon pokemon);

	List<Pokemon> searchByKeyword(String keyword);

	

}
