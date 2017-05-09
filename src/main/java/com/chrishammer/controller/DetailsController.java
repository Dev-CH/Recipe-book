package com.chrishammer.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.chrishammer.model.Ingredient;
import com.chrishammer.model.Method;
import com.chrishammer.model.Recipe;
import com.chrishammer.service.IngredientService;
import com.chrishammer.service.MethodService;
import com.chrishammer.service.RecipeService;

@Controller
public class DetailsController {
	@Autowired 
	private RecipeService recipeService;
	
	@Autowired
	private MethodService methodService;
	
	@Autowired
	private IngredientService ingredientService;
	
	
	
	@RequestMapping(value="/details", method=RequestMethod.GET)
	public String showDetails(@RequestParam("ID")long recipeId, Model model) {
		
		Recipe recipe = recipeService.getRecipeById(recipeId);
		List<Method> recipeMethod = methodService.getRecipeMethodById(recipeId);
		List<Ingredient> recipeIngredients = ingredientService.getRecipeIngredientsById(recipeId);
		
		model.addAttribute("recipe", recipe);
		model.addAttribute("recipeMethod", recipeMethod);
		model.addAttribute("recipeIngredients", recipeIngredients);
		
		return "details";
	}

}
