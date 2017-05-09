package com.chrishammer.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Ingredient {

	@GeneratedValue
	@Id
	private long id;
	
	private String name;
	private String amount;
	private String unit;
	
	@ManyToOne
	private Recipe recipe;
	
	public long getId() {return id;}	
	public String getName() {return name;}
	public String getAmount() {return amount;}
	public String getUnit() {return unit;}
	public Recipe getRecipe() {return recipe;}
	
	public void setName(String name) {this.name = name;}
	public void setAmount(String amount) {this.amount = amount;}
	public void setUnit(String unit) {this.unit = unit;}
	public void setRecipe(Recipe recipe) {this.recipe = recipe;}
}
