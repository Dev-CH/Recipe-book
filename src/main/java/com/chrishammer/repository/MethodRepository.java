package com.chrishammer.repository;

import java.util.List;

import com.chrishammer.model.Method;

public interface MethodRepository {

	List<Method> getRecipeMethodById (long recipeId);

	void removeMethods(long recipeId);

	void removeMethodById(long methodId);
}
