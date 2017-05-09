package com.chrishammer.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.chrishammer.model.Method;

@Repository("MethodRepository")
public class MethodRepositoryImpl implements MethodRepository {
	
	@PersistenceContext
	private EntityManager em;
	
	public void removeMethods(long recipeId) {
		em.createQuery("delete Method m where m.recipe.id LIKE :id")
			.setParameter("id", recipeId)
			.executeUpdate();
	}

	@SuppressWarnings("unchecked")
	public List<Method> getRecipeMethodById(long recipeId) {
	
		Query query = em.createQuery("select m from Method m where m.recipe.id LIKE :id")
				.setParameter("id", recipeId);
		List<Method> methods = query.getResultList();
		
		return methods;
	}

	public void removeMethodById(long methodId) {
			em.createQuery("delete Method m where id LIKE :id")
				.setParameter("id", methodId)
				.executeUpdate();
		}
}
