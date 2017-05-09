package com.chrishammer.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Method {

	@GeneratedValue
	@Id
	private long id;
	
	private String instruction;
	@ManyToOne
	private Recipe recipe;
	
	public long getId() {return id;}
	public Recipe getRecipe() {return recipe;}
	public String getInstruction() {return instruction;}

	public void setRecipe(Recipe recipe) {this.recipe = recipe;}
	public void setInstruction(String instruction) {this.instruction = instruction;}
}
