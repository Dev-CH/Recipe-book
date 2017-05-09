package com.chrishammer.service;

import java.util.List;

import com.chrishammer.model.Method;
import com.chrishammer.model.Recipe;

public interface MethodService {
	
	List<Method> createListOfMethods(Method methods, Recipe newRecipe);

	List<Method> getRecipeMethodById(long recipeId);

	void removeMethodById(long methodId);
	
}
