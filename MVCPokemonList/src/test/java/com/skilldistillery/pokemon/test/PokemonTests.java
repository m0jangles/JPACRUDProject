package com.skilldistillery.pokemon.test;

import static org.junit.jupiter.api.Assertions.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.skilldistillery.jpapokemon.entities.Pokemon;

class PokemonTests {

		private EntityManagerFactory emf;
		private EntityManager em;

		@Test
		void test_pokemon_mappings() {
			Pokemon pokemon = em.find(Pokemon.class, 1);
			assertEquals("Alakazam", pokemon.getName());
			assertEquals(80, pokemon.getHp());
			assertEquals(2, pokemon.getStage());
			assertEquals("Base", pokemon.getSet());
			assertEquals("H", pokemon.getStatus());
			assertEquals("0", pokemon.getNotes());
			
			
		}
		
		@BeforeEach
		public void setUp() throws Exception {
			//gets a connection
			emf = Persistence.createEntityManagerFactory("pokemon2");
			em = emf.createEntityManager();
		}

		@AfterEach
		public void tearDown() throws Exception {
			//these close the connections after the tests
			//always close the child before the parent
			em.close();
			emf.close();
		}
		

	}

