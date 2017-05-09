package com.chrishammer.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chrishammer.model.Recipe;
import com.chrishammer.repository.IngredientRepository;
import com.chrishammer.repository.MethodRepository;
import com.chrishammer.repository.RecipeRepository;

@Service("RecipeService")
@Transactional
public class RecipeServiceImpl implements RecipeService {

	@Autowired
	private RecipeRepository recipeRepository;
	@Autowired
	private IngredientRepository ingredientRepository;
	@Autowired
	private MethodRepository methodRepository;

	
	public void save(Recipe newRecipe) {	
		recipeRepository.save(newRecipe);
	}
	public void update(Recipe recipe) {
		ingredientRepository.removeIngredients(recipe.getId());
		methodRepository.removeMethods(recipe.getId());
		save(recipe);
		
	}
	public void removeRecipe(long recipeId) {
		ingredientRepository.removeIngredients(recipeId);
		methodRepository.removeMethods(recipeId);
		recipeRepository.removeRecipe(recipeId);
		
	}
	
	public List<Recipe> getAllRecipes() {
		return recipeRepository.getAllRecipes();
	}

	public Recipe getRecipeById(long recipeId) {
		return recipeRepository.getRecipeById(recipeId);
	}

	
}
