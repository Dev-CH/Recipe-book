package com.chrishammer.repository;

import java.util.List;

import com.chrishammer.model.Ingredient;

public interface IngredientRepository {

	void save(Ingredient newIngredients);

	List<Ingredient> getRecipeIngredientsById(long recipeId);

	void removeIngredients(long recipeId);

	void removeIngredientById(long ingredientId);
}
