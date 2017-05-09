package com.chrishammer.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chrishammer.model.Method;
import com.chrishammer.model.Recipe;
import com.chrishammer.repository.MethodRepository;

@Service("MethodService")
@Transactional
public class MethodServiceImpl implements MethodService {
	
	@Autowired
	private MethodRepository methodRepository;

	public List<Method> createListOfMethods(Method method, Recipe recipe) {
		List<Method> createdList = new ArrayList<Method>();
		
		String [] getInstructions = method.getInstruction().split(",");
		
		int size = getInstructions.length;

		for(int i=0; i< size; i++){
			
			Method newMethod = new Method();
			newMethod.setInstruction(FormatInput.capitalizeFirstLetter(getInstructions[i]));
			newMethod.setRecipe(recipe);
			createdList.add(newMethod);
		}
		return createdList;
	}

	public List<Method> getRecipeMethodById(long recipeId) {
		return methodRepository.getRecipeMethodById(recipeId);
	}

	public void removeMethodById(long methodId) {
		methodRepository.removeMethodById(methodId);
		
	}

}
