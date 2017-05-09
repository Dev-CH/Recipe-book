package com.chrishammer.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.chrishammer.model.Ingredient;

@Repository("IngredientRepository")
public class IngredientRepositoryImpl implements IngredientRepository {
	
	@PersistenceContext
	private EntityManager em;

	public void save(Ingredient newIngredients) {
		em.persist(newIngredients);
		em.flush();
	}
	
	public void removeIngredients(long recipeId) {
		em.createQuery("delete Ingredient i where i.recipe.id LIKE :id")
			.setParameter("id", recipeId)
			.executeUpdate();
	}

	@SuppressWarnings("unchecked")
	public List<Ingredient> getRecipeIngredientsById(long recipeId) {
		Query query = em.createQuery("select i from Ingredient i where i.recipe.id LIKE :id")
				.setParameter("id", recipeId);
		List<Ingredient> ingredients = query.getResultList();
		return ingredients;
	}

	public void removeIngredientById(long ingredientId) {
		em.createQuery("delete Ingredient i where id LIKE :id")
		.setParameter("id", ingredientId)
		.executeUpdate();
		
	}

	
}
