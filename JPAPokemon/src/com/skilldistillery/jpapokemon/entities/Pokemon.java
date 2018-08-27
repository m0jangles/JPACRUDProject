package com.skilldistillery.jpapokemon.entities;

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
	
	private String pic;
	
	private String status;
	
//	private int quantity;
	
	private String notes;
	//end fields
	
	public Pokemon() {
		
	}

	public Pokemon(int id, String name, String power, int hp, int stage, String set, String pic, String status, String notes) {
		super();
		this.id = id;
		this.name = name;
		this.power = power;
		this.hp = hp;
		this.stage = stage;
		this.set = set;
		this.pic = pic; 
		this.status = status;
//		this.quantity = quantity;
		this.notes = notes;
	}



//	@Override
//	public String toString() {
//		return "Pokemon [id=" + id + ", name=" + name + ", power=" + power + ", hp=" + hp + ", stage=" + stage
//				+ ", set=" + set + ", pic=" + pic + ", status=" + status + ", quantity=" + quantity + ", notes=" + notes
//				+ "]";
//	}

	@Override
	public String toString() {
		return "Pokemon [id=" + id + ", name=" + name + ", power=" + power + ", hp=" + hp + ", stage=" + stage
				+ ", set=" + set + ", pic=" + pic + ", status=" + status + ", notes=" + notes + "]";
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

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

//	public int getQuantity() {
//		return quantity;
//	}
//
//	public void setQuantity(int quantity) {
//		this.quantity = quantity;
//	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}
	

}
