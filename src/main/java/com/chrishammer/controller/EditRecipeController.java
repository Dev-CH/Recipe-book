package com.chrishammer.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.chrishammer.model.Ingredient;
import com.chrishammer.model.Method;
import com.chrishammer.model.Recipe;
import com.chrishammer.service.IngredientService;
import com.chrishammer.service.MethodService;
import com.chrishammer.service.RecipeService;

@Controller
@SessionAttributes({"detailsId"})
public class EditRecipeController {

	@Autowired
	private RecipeService recipeService;
	@Autowired
	private IngredientService ingredientService;
	@Autowired
	private MethodService methodService;
	
	@RequestMapping(value="/removeIngredient") 
	public String removeIngredient(@RequestParam("ID") long ingredientId, HttpSession session){
		String redirect = "redirect:edit.html?ID=" + session.getAttribute("detailsId");
		ingredientService.removeIngredientById(ingredientId);
		
		return redirect;
	}
	@RequestMapping(value="/removeMethod") 
	public String removeMethod(@RequestParam("ID") long methodId, HttpSession session) {
		String redirect = "redirect:edit.html?ID=" + session.getAttribute("detailsId");
		methodService.removeMethodById(methodId);
		 
		return redirect ;
	}
	
	@RequestMapping(value="/remove")
	public String removeRecipe(@RequestParam("ID") long recipeId) {
		System.out.println("Hitting the remove method controller");
		recipeService.removeRecipe(recipeId);
		
		return "redirect:/" ;
	}
	
	@RequestMapping(value="/edit", method=RequestMethod.GET)
	public String editRecipe(@RequestParam("ID") long recipeId, Model model, @ModelAttribute("editMethods") Method method, @ModelAttribute("editIngredients") Ingredient ingredient) {
		Recipe existingRecipe = recipeService.getRecipeById(recipeId);
		model.addAttribute("recipe", existingRecipe);
		model.addAttribute("editMethods", method);
		model.addAttribute("editIngredients", ingredient);
		model.addAttribute("detailsId", recipeId);
		
		
		return "update";
	}
	@RequestMapping(value="/edit", method=RequestMethod.POST)
	public String submitEditRecipe(@RequestParam("ID") long recipeId, @ModelAttribute("recipe") Recipe existingRecipe, @ModelAttribute("editMethods")Method existingMethods, @ModelAttribute("editIngredients")Ingredient existingIngredients) {
		existingRecipe.setId(recipeId);
		
		List<Ingredient> updatedIngredients = ingredientService.createListOfIngredients(existingIngredients, existingRecipe);
		List<Method> updatedMethods = methodService.createListOfMethods(existingMethods, existingRecipe);
		
		existingRecipe.setMethods(updatedMethods);
		existingRecipe.setIngredients(updatedIngredients);
		recipeService.update(existingRecipe);	
		return "redirect:/";
	}
	
	
}
