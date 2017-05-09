package com.chrishammer.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Recipe {

	@Id
	@GeneratedValue
	private long id;
	private String title;
	private String subTitle;
	private String imageUrl;
	private String photoSource;
	private String photoCredit;
	
	@OneToMany(mappedBy="recipe", cascade=CascadeType.ALL)
	private List<Ingredient> ingredients = new ArrayList<Ingredient>();
	
	@OneToMany(mappedBy="recipe", cascade=CascadeType.ALL)
	private List<Method> methods = new ArrayList<Method>();

	
	

	private String recipeBio;
	
	public void setId(long id) {this.id = id;}
	public void setTitle(String title) {this.title = title;}
	public void setSubTitle(String subTitle) {this.subTitle = subTitle;}
	public void setImageUrl(String imageUrl) {this.imageUrl = imageUrl;}
	public void setIngredients(List<Ingredient> ingredients) {this.ingredients = ingredients;}
	public void setMethods(List<Method> methods) {this.methods = methods;}
	public void setRecipeBio(String recipeBio) {this.recipeBio = recipeBio;}
	public void setPhotoSource(String photoSource) {this.photoSource = photoSource;}
	public void setPhotoCredit(String photoCredit) {this.photoCredit = photoCredit;}
	
	public long getId() {return id;}
	public String getTitle() {return title;}
	public String getSubTitle() {return subTitle;}
	public String getImageUrl() {return imageUrl;}
	public List<Ingredient> getIngredients() {return ingredients;}
	public List<Method> getMethods() {return methods;}
	public String getRecipeBio() {return recipeBio;}
	public String getPhotoSource() {return photoSource;}
	public String getPhotoCredit() {return photoCredit;}
	
	
	
}
