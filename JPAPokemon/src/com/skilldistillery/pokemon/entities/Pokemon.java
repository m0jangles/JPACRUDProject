package com.skilldistillery.pokemon.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Pokemon {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	private String power;
	
	private int hp;
	
	private int stage;
	
	private String set;
	//end fields
	
	public Pokemon() {
		
	}

	public Pokemon(int id, String name, String power, int hp, int stage, String set) {
		super();
		this.id = id;
		this.name = name;
		this.power = power;
		this.hp = hp;
		this.stage = stage;
		this.set = set;
	}

	@Override
	public String toString() {
		return "Pokemon [id=" + id + ", name=" + name + ", power=" + power + ", hp=" + hp + ", stage=" + stage
				+ ", set=" + set + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPower() {
		return power;
	}

	public void setPower(String power) {
		this.power = power;
	}

	public int getHp() {
		return hp;
	}

	public void setHp(int hp) {
		this.hp = hp;
	}

	public int getStage() {
		return stage;
	}

	public void setStage(int stage) {
		this.stage = stage;
	}

	public String getSet() {
		return set;
	}

	public void setSet(String set) {
		this.set = set;
	}
	
	
	

}
