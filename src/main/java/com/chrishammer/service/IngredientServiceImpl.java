package com.chrishammer.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chrishammer.model.Ingredient;
import com.chrishammer.model.Recipe;
import com.chrishammer.repository.IngredientRepository;

@Service("IngredientsService")
@Transactional
public class IngredientServiceImpl implements IngredientService {
	
	@Autowired
	private IngredientRepository ingredientRepositry;

	public List<Ingredient> createListOfIngredients(Ingredient ingredients, Recipe recipe) {
		List<Ingredient> createdList = new ArrayList<Ingredient>();
		
	
		String[] getIngredients = ingredients.getName().split(",");
		String[] getAmount = ingredients.getAmount().split(",");
		String[] getUnit = ingredients.getUnit().split(",");
		int size = getIngredients.length;

		for(int i=0; i< size; i++){
			Ingredient newIngredients = new Ingredient();
			
			newIngredients.setName(FormatInput.capitalizeFirstLetter(getIngredients[i]));
			newIngredients.setAmount(getAmount[i]);
			newIngredients.setUnit(FormatInput.lowerCase(getUnit[i]));
			newIngredients.setRecipe(recipe);
			createdList.add(newIngredients);
		}
		return createdList;
	}

	public List<Ingredient> getRecipeIngredientsById(long recipeId) {
		return ingredientRepositry.getRecipeIngredientsById(recipeId);
	}

	public void removeIngredientById(long ingredientId) {
		ingredientRepositry.removeIngredientById(ingredientId);
		
	}

}
