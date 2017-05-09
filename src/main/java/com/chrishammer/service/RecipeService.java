package com.chrishammer.service;

import java.util.List;

import com.chrishammer.model.Recipe;

public interface RecipeService {

	List<Recipe> getAllRecipes();

	void save(Recipe newRecipe);
	
	void update(Recipe recipe);

	Recipe getRecipeById(long recipeId);

	void removeRecipe(long recipeId);

}
