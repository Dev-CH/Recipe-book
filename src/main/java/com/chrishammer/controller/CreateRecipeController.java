package com.chrishammer.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.chrishammer.model.Ingredient;
import com.chrishammer.model.Method;
import com.chrishammer.model.Recipe;
import com.chrishammer.service.FormatInput;
import com.chrishammer.service.IngredientService;
import com.chrishammer.service.MethodService;
import com.chrishammer.service.RecipeService;

@Controller
public class CreateRecipeController {
	@Autowired
	private RecipeService recipeService;
	@Autowired
	private IngredientService ingredientsService;
	@Autowired
	private MethodService methodService;
	
	@RequestMapping(value="/addRecipe", method=RequestMethod.GET)
	public String createRecipe(@ModelAttribute("newRecipe")Recipe newRecipe,@ModelAttribute("newIngredients")Ingredient newIngredients,@ModelAttribute("newMethods") Method newMethods, Model model) {
		model.addAttribute("newRecipe", newRecipe);
		model.addAttribute("newIngredients", newIngredients);
		model.addAttribute("newMethods", newMethods);
		return "create";
	}
	@RequestMapping(value="/addRecipe", method=RequestMethod.POST)
	public String submitNewRecipe(@ModelAttribute Recipe newRecipe,@ModelAttribute Ingredient ingredients,@ModelAttribute Method methods, Model model) {

		Recipe formattedRecipe = FormatInput.formatRecipe(newRecipe);
		List<Method> newMethods = methodService.createListOfMethods(methods, formattedRecipe);
		List<Ingredient> newIngredients = ingredientsService.createListOfIngredients(ingredients, formattedRecipe);

		newRecipe.setMethods(newMethods);
		newRecipe.setIngredients(newIngredients);
		recipeService.save(formattedRecipe);

		return "redirect:/";
	}
}
