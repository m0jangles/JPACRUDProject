package com.skilldistillery.mvcpokemonlist.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.skilldistillery.jpapokemon.entities.Pokemon;

@Transactional
@Component
public class PokemonDAOImpl implements PokemonDAO {

	@PersistenceContext
//	private EntityManagerFactory emf = Persistence.createEntityManagerFactory("pokemon");
	private EntityManager em;// = emf.createEntityManager();


	@Override
	public List<Pokemon> index() {
		String qs = "SELECT p FROM Pokemon p";
		List<Pokemon> results = em.createQuery(qs, Pokemon.class).getResultList();
		return results;
	}

	@Override
	public List<Pokemon> searchByKeyword(String keyword) {
		String qs = "SELECT p FROM Pokemon p WHERE p.name LIKE :word";
		List<Pokemon> results = em.createQuery(qs, Pokemon.class).setParameter("word", keyword).getResultList();
		return results;
	}
	
	@Override
	public Pokemon show(Integer id) {
		// TODO Auto-generated method stub
		return em.find(Pokemon.class, id);
	}
	
	@Override
	public Pokemon createPokemon(Pokemon pokemon) {
	
		em.persist(pokemon);

		// update the "local" Customer object
		em.flush();
		// commit the changes (actually perform the operation)

		// return the Customer object
		return pokemon;
	}
	@Override
	public Pokemon updatePokemon(int id, Pokemon updatedPokemon) {

		// open a transaction
//		em.getTransaction().begin();

//		Pokemon detachedPokemon  = new Pokemon ();

		Pokemon  managed = em.find(Pokemon .class, id);
		managed.setName(updatedPokemon.getName());
		managed.setPower(updatedPokemon.getPower());
		managed.setHp(updatedPokemon.getHp());
		managed.setStage(updatedPokemon.getStage());
		managed.setSet(updatedPokemon.getSet());
		managed.setPic(updatedPokemon.getPic());
		managed.setStatus(updatedPokemon.getStatus());
		managed.setNotes(updatedPokemon.getNotes());

//		em.getTransaction().commit();
		// ...

		return managed;

	}
	
	public boolean destroy(Pokemon pokemon) {
//		em.getTransaction().begin();
		em.remove(pokemon);
		
//		em.getTransaction().commit();
		if(em.find(Pokemon.class, pokemon.getId()) == null)
			return true;
			else
		return false;
		
	}
}
