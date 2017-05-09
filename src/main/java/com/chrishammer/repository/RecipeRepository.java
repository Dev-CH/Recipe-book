package com.chrishammer.repository;

import java.util.List;

import com.chrishammer.model.Recipe;

public interface RecipeRepository {
	List<Recipe> getAllRecipes();

	void save(Recipe newRecipe);

	Recipe getRecipeById(long recipeId);

	void removeRecipe(long recipeId);
}
