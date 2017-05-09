package com.chrishammer.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.chrishammer.model.Recipe;

@Repository("RecipeRepository")
public class RecipeRepositoryImpl implements RecipeRepository {
	
	@PersistenceContext
	private EntityManager em;
	
	public void removeRecipe(long recipeId) {
		em.createQuery("Delete Recipe r where id LIKE :id")
			.setParameter("id", recipeId)
			.executeUpdate();
	}
	
	public void save(Recipe newRecipe) {
		if (newRecipe.getId() == 0) {
			em.persist(newRecipe);
			em.flush();	
		}else {
			newRecipe = em.merge(newRecipe);
		}
		
	}
	
	@SuppressWarnings("unchecked")
	public List<Recipe> getAllRecipes() {
		Query query = em.createQuery("select r from Recipe r");
		@SuppressWarnings("rawtypes")
		List recipes = query.getResultList();
		
		return recipes;
	}
	public Recipe getRecipeById(long recipeId) {
		Query query = em.createQuery("select r from Recipe r where id LIKE :id")
				.setParameter("id", recipeId);
		return (Recipe) query.getSingleResult();
	}
}
