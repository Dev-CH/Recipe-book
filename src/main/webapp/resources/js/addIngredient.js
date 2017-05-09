$(document).ready(function(){
	$(document).on('click', '.delete-ingredient', function(){
		//var button_id = $(this).attr("class");
		$(this).parent().remove();
	});
//Keep a single clone of the original
	var clonedField = $('.ingredient_field').clone(), 
    	main = $('#dynamic_ingredients');

// Add in the delete <a>
		$('<a>', {
			text: 'X', 
			class: 'delete-ingredient', 
			href: '#'
		}).appendTo(clonedField);

// Clone the cloned original and append it back to the list
		$('#add-ingredient').click(function() {
			main.append(clonedField.clone());
			return false;
		});
});