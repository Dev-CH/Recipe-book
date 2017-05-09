package com.chrishammer.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chrishammer.model.Recipe;
import com.chrishammer.service.RecipeService;

@Controller
public class DisplayController {
	@Autowired
	private RecipeService recipeService;
	
	
	@RequestMapping(value="/")
	public String displayAllRecipes(Model model) {
		List<Recipe> allRecipes = recipeService.getAllRecipes();
		model.addAttribute("recipe", allRecipes);
		return "recipes";
	}
	
	
}
