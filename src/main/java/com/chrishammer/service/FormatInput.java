package com.chrishammer.service;

import org.apache.commons.lang3.text.WordUtils;

import com.chrishammer.model.Recipe;

public class FormatInput {

		public static String capitalizeFirstLetter(String input) {
			String formatted = input.substring(0, 1).toUpperCase() + input.substring(1).toLowerCase();
			return formatted;
		}
		public static String lowerCase(String input) {
			String formatted = input.toLowerCase();
			return formatted;
		}
		public static Recipe formatRecipe(Recipe input) {
			input.setTitle(WordUtils.capitalizeFully(input.getTitle()));
			input.setSubTitle(capitalizeFirstLetter(input.getSubTitle()));
			input.setRecipeBio(capitalizeFirstLetter(input.getRecipeBio()));
			input.setImageUrl(input.getImageUrl());
			
			return input;
		}

}
