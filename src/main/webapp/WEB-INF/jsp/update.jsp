<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/stylesheet.css"/>" rel="stylesheet" />
<link href="<c:url value="/resources/bootstrap/bootstrap.min.css" />" rel="stylesheet" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="<c:url value="/resources/js/addMethod.js" />"></script>
<script src="<c:url value="/resources/js/addIngredient.js" />"></script>
<title>Insert title here</title>
</head>
<body class="background" background="<c:url value='/resources/img/Process.jpg' />">
<div class="box">
 	<div class="slender-bar"></div>
		<div class="container-fluid wrapper">
		 	<div class="row">
		 		<div class="col-md-8">
		 			<div class="header-box text-center">
						<h1 class=" main-header">Edit ${recipe.title}</h1>
						<hr class="break">
					</div>
				
			<form:form commandName="recipe">
			<div class="form-wrapper">
				<div class="row">
					<div class="col-xs-4">	
						 <form:label class="placeholder" path="title">What is it?</form:label>
					</div>
					<div class="col-xs-8">
						<form:input class="form-input" path="title" value="${recipe.title}"/>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-4">	
						 <form:label class="placeholder"  path="subTitle">Subtitle</form:label>
					</div>
					<div class="col-xs-8">
						<form:input class="form-input" path="subTitle" value="${recipe.subTitle}" />
					</div>
				</div>
				<div class="row">
					<div class="col-xs-4">	
						 <form:label class="placeholder"  path="imageUrl">Image Url</form:label>
					</div>
					<div class="col-xs-8">
						<form:input class="form-input" path="imageUrl" value="${recipe.imageUrl}" />
					</div>
				</div>
				<div class="row">
		 			<div class="col-xs-4">
						<form:label class="extra-info"  path="photoCredit">Who provided the photo?</form:label>
						</div>
			 		<div class="col-xs-8">
						<form:input class="form-input" path="photoCredit" value="${recipe.photoCredit}" />
					</div>
				</div>
				<div class="row">
		 			<div class="col-xs-4">
						<form:label class="extra-info"  path="photoSource">Have they got a website?</form:label>
						</div>
			 		<div class="col-xs-8">
						<form:input class="form-input" path="photoSource" value="${recipe.photoSource}" />
					</div>
				</div>
				<div class="row">
					<div class="col-xs-4">	
						 <form:label class="placeholder"  path="recipeBio">Biography</form:label>
					</div>
					<div class="col-xs-8">
						<form:textarea class="form-bio" path="recipeBio" value="${recipe.recipeBio}" />
					</div>
				</div>
			</div>
			<div class="form-wrapper">
				<form:form commandName="editIngredients">
					<h4 class="bold top-margin">Ingredients</h4>
					<hr class="break">
					<c:forEach items="${recipe.ingredients}" var="ingredient">
						<div class="row">
							<div class="col-sm-4">
								<form:label class="extra-info" path="name">Ingredient: </form:label>
								<form:input class="ingredient-input" path="name" value="${ingredient.name}" />
							</div>
							<div class="col-sm-4">
								<form:label class="extra-info" path="amount">Amount: </form:label>
								<form:input class="ingredient-input" path="amount" value="${ingredient.amount}" />
							</div>
							<div class="col-sm-4">
								<form:label class="extra-info" path="unit">Unit: </form:label>
								<form:input class="ingredient-input" path="unit" value="${ingredient.unit}" />
							</div>
							<a class="delete-ingredient" href="/Recipe-book/removeIngredient.html?ID=${ingredient.id}">X</a>
						</div>
					</c:forEach>
					<div id="dynamic_ingredients">
						<a id="add-ingredient" href="#">Add Another Ingredient +</a>
						<div class="ingredient_field">
							<div class="row">
								<div class="col-sm-4">
									<form:label class="extra-info" path="name">Ingredient: </form:label>
									<form:input class="ingredient-input" path="name"/>
								</div>
								<div class="col-sm-4">
									<form:label class="extra-info" path="amount">Amount: </form:label>
									<form:input class="ingredient-input" path="amount"/>
								</div>
								<div class="col-sm-4">
									<form:label class="extra-info" path="unit">Unit: </form:label>
									<form:input class="ingredient-input" path="unit"/>
								</div>
							</div>
						</div>
					</div>
					<form:form commandName="editMethods">
							<h4 class="bold top-margin">Method</h4>
							<hr class="break">
							<c:forEach items="${recipe.methods}" var="method">
							<div class="row">
								<div class="col-sm-12">
									<form:label class="extra-info" path="instruction"><p class="step italic"></p></form:label>
									<form:input class="method-input" path="instruction" value="${method.instruction}" />
									<a class="existing-delete-m" href="/Recipe-book/removeMethod.html?ID=${method.id}">X</a>
								</div>
								
							</div>
							</c:forEach>
						
						<div id="dynamic_methods">
                			<a id="add-method" href="#">Add Another Method +</a>
  							<div class="method_field">
  								<form:label class="extra-info" path="instruction"><p class="step italic"></p></form:label>
								<form:input class="method-input" path="instruction" />
							</div>
						</div>
					</form:form>
					<div class="text-center">
						<form:button class="submit-button" type="submit">Update</form:button>
					</div>
				</form:form>
			</div>
		</form:form>
	</div>
	<div class="col-md-4 side-collumn">
					<div class="row">
						<div class="col-md-12">
							<h4 class="bold">How do I Update This?</h4>
							
						</div>
					</div>
					<div class="row top-margin">
						<div class="col-md-12">
							<p class="extra-info">Updating this recipe can be done by making changed to the populated fields, deleting the fields or adding more.</p>
							<p class="extra-info"><strong>Please only make changes if you are the author of this recipe!</strong></p>
							<hr>
						</div>
					</div>
					<div class="row">
						
					</div>
				</div>
		</div>
		<div class="col-md-10 col-md-offset-1 text-right">
			<a href="/Recipe-book/details.html?ID=${recipe.id}"><button class="button" >Cancel</button></a>
		</div>
	</div>
	<div class="slender-bar"></div>
</div>
<!-- <form:form commandName="recipe">
	title: <form:input path="title" value="${recipe.title}"/>
	sub Title: <form:input path="subTitle" value="${recipe.subTitle}" />
	image : <form:input path="imageUrl" value="${recipe.imageUrl}" />
	bio : <form:input path="recipeBio" value="${recipe.recipeBio}" />
	<br>
	<form:form commandName="editIngredients">
		<c:forEach items="${recipe.ingredients}" var="ingredient">
			<form:input path="name" value="${ingredient.name}" />
			<form:input path="amount" value="${ingredient.amount}" />
			<form:input path="unit" value="${ingredient.unit}" />
			
			<a href="/Recipe-book/removeIngredient.html?ID=${ingredient.id}">X</a>
			<br>
		</c:forEach>
		<div id="dynamic_ingredients">
			<a id="add-ingredient" href="#">Add Another Ingredient +</a>
			<div class="ingredient_field">
				<form:input path="name"/>
				<form:input path="amount"/>
				<form:input path="unit"/>
			</div>
		</div>
	
	<br>

		<form:form commandName="editMethods">
			<c:forEach items="${recipe.methods}" var="method">
				<form:input path="instruction" value="${method.instruction}" />
				
				<a href="/Recipe-book/removeMethod.html?ID=${method.id}">Remove Method</a>
				
				<br>
			</c:forEach>
			<div id="dynamic_methods">
	        	<a id="add-method" href="#">Add Another Method +</a>
				<div class="method_field">
					<form:input class="text-box" path="instruction" />
				</div>
			</div>
			<form:button type="submit">Submit</form:button>
		</form:form>
	</form:form>
</form:form>-->

</body>
</html>
</body>
</html>