package com.chrishammer.service;

import java.util.List;

import com.chrishammer.model.Ingredient;
import com.chrishammer.model.Recipe;

public interface IngredientService {


	List<Ingredient> createListOfIngredients(Ingredient ingredients, Recipe newRecipe);

	List<Ingredient> getRecipeIngredientsById(long recipeId);

	void removeIngredientById(long ingredientId);
}
