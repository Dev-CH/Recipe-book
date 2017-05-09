$(document).ready(function(){
	$(document).on('click', '.delete-method', function(){
		//var button_id = $(this).attr("class");
		$(this).parent().remove();
	});
//Keep a single clone of the original
	var clonedField = $('.method_field').clone(), 
    	main = $('#dynamic_methods');

// Add in the delete <a>
		$('<a>', {
			text: 'X', 
			class: 'delete-method', 
			href: '#'
		}).appendTo(clonedField);

// Clone the cloned original and append it back to the list
		$('#add-method').click(function() {
			main.append(clonedField.clone());
			return false;
		});
});