<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add a Recipe</title>
<link href="<c:url value="/resources/css/stylesheet.css"/>" rel="stylesheet" />
<link href="<c:url value="/resources/bootstrap/bootstrap.min.css" />" rel="stylesheet" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="<c:url value="/resources/js/addMethod.js" />"></script>
<script src="<c:url value="/resources/js/addIngredient.js" />"></script>

</head>
<body class="background" background="<c:url value='/resources/img/Process.jpg' />">
	<div class="box">
	 	<div class="slender-bar"></div>
			<div class="container-fluid wrapper">
			
			 	<div class="row">
			 		<div class="col-md-8">
			 			<div class="header-box text-center">
						<h1 class=" main-header">Add A New Recipe</h1>
						<hr class="break">
					</div>
			 		<form:form commandName="newRecipe">
			 			<div class="form-wrapper">
			 				<h4 class="bold top-margin">Some Key Details</h4>
							<hr class="break">
							<p class="italic">This section is where you can describe the dish, a short tittle with a subtitle, could be the main ingredients followed by the name it would take on a menu.</p>
				 			<div class="row">
					 			<div class="col-xs-4">	
						 			<form:label class="extra-info" path="title">Main header</form:label>
						 		</div>
						 		<div class="col-xs-8">
									<form:input class="form-input" path="title" />
								</div>
							</div>
							<div class="row">
					 			<div class="col-xs-4">
									<form:label class="extra-info"  path="subTitle">Menu title</form:label>
								</div>
						 		<div class="col-xs-8">
									<form:input class="form-input" path="subTitle" />
								</div>
							</div>
							<div class="row">
					 			<div class="col-xs-4">
									<form:label class="extra-info"  path="imageUrl">Image Url</form:label>
									</div>
						 		<div class="col-xs-8">
									<form:input class="form-input" path="imageUrl" />
								</div>
							</div>
							<div class="row">
					 			<div class="col-xs-4">
									<form:label class="extra-info"  path="photoCredit">Who provided the photo?</form:label>
									</div>
						 		<div class="col-xs-8">
									<form:input class="form-input" path="photoCredit" />
								</div>
							</div>
							
							<div class="row">
					 			<div class="col-xs-4">
									<form:label class="extra-info"  path="photoSource">Have they got a website?</form:label>
									</div>
						 		<div class="col-xs-8">
									<form:input class="form-input" path="photoSource" />
								</div>
							</div>
							<div class="row">
					 			<div class="col-xs-4">
									<form:label class="extra-info"  path="recipeBio">A little extra information</form:label>
									</div>
						 		<div class="col-xs-8">
									<form:textarea class="form-bio" path="recipeBio" />
								</div>
							</div>
						</div>
						<div class="form-wrapper">
								<form:form commandName="newIngredients">
									<h4 class="bold top-margin">Ingredients</h4>
									<hr class="break">
									<p class="italic">Please enter the ingredients that are needed to put this dish together.</p>
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
									
									<form:form commandName="newMethods">
										<h4 class="bold top-margin">Method</h4>
										<hr class="break">
										<p class="italic">This is where you can break down how to put this dish together, please break it down into manageable steps!</p>
											<div id="dynamic_methods">
					                			<a id="add-method" href="#">Add Another Method +</a>
					  							<div class="method_field">
					  								<form:label class="extra-info" path="instruction"><p class="step italic"></p></form:label>
													<form:input class="method-input" path="instruction" />
												</div>
											</div>
									</form:form>
									<div class="text-center">
										<form:button class="submit-button" type="submit">Create Recipe</form:button>
									</div>
								</form:form>
							</div>
					</form:form>
				</div>
				<div class="col-md-4 side-collumn">
					<div class="row">
						<div class="col-md-12">
							<h4 class="bold">What do I do?</h4>
							
						</div>
					</div>
					<div class="row top-margin">
						<div class="col-md-12">
							<p class="extra-info">This is where you can add recipes of your own! This is aimed to be a collection of recipes created and used by chefs in professional kitchens, to become a resource for professionals in passing on knowledge easily and effectively.</p>
							<p class="extra-info"><strong>Please only submit a recipe if you are a professional working chef!</strong></p>
							<hr>
						</div>
					</div>
					<div class="row">
						
					</div>
				</div>
		 	</div>
		 	<div class="col-md-10 col-md-offset-1 text-right">
		 		<a href="/Recipe-book/"><button class="button"> <em>&larr;</em>  Back</button></a>
		 	</div>
		 </div>
	</div> 	
<!-- <a href="/Recipe-book/"> Back</a> -->
</body>
</html>