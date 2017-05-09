<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Recipes</title>
<link href="<c:url value="/resources/css/stylesheet.css"/>" rel="stylesheet" />

<link href="<c:url value="/resources/bootstrap/bootstrap.min.css" />" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script>
$(document).ready(function(){
	var a = $('.wrap');

	for( var i = 0; i < a.length; i+=3 ) {
	    a.slice(i, i+3).wrapAll('<div class="row border"></div>');
	}
});
</script>
</head>


<body class="background" background="<c:url value='/resources/img/Process.jpg' />">
 
<div class="box">
	<div class="slender-bar"></div>
	<div class="row wrapper">
		<div class="col-md-8">
			<div class="header-box text-center">
			<h1 class=" main-header">A Chef's Collection</h1>
			<hr class="break">
			</div>
			<c:forEach items="${recipe}" var="allRecipes"> <!--items refers to recipes from the DB, var refers to local variable created -->
				<div class="col-md-4 text-center wrap">
					<div class="white-box">
						<a class="" href="/Recipe-book/details.html?ID=${allRecipes.id}">
							<div class="someClassName" style="background-image:url('${allRecipes.imageUrl}')"></div>	
							<h4 class="thumbnail-title">${allRecipes.title}</h4>
						</a>
						<hr class="break">
						<p class="extra-info"><em>${allRecipes.subTitle}</em></p>
					</div>
					<hr>
				</div>
			</c:forEach>
		</div>
		<div class="col-md-4 ">
			<div class="side-collumn text-center">
				<div class="row">
					<div class="col-md-12">
						<h4>What Is This?</h4>
					</div>
				</div>
				<div class="row top-margin">
					<div class="col-md-12">
						<p class="extra-info">This is a recipe book with a diference, these recipes are things that are cooked in professional kitchens and have been tried, tested and perfected.</p>
						
						<hr>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<h4 class="underlined">My Favourites</h4>
					</div>
				</div>
				<div class="row top-margin">
					<a class="side-collumn-link" href="#">
					<div class="col-md-4">
						<div class="side-collumn-img" style="background-image:url('http://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/article_thumbnails/quizzes/food_safety_quiz/650x350_food_safety_quiz.jpg')"></div>
					</div>
					<div class="col-md-8">
						<h5 class="side-collumn-heading">Sensational Salmon</h5>
						<p class="extra-info">This Salmon is cured using beetroot to add flavour and a deep purple colour.</p>
						<hr class="break">
					</div>
					</a>
				</div>
				<hr>
				<div class="row">
					<a class="side-collumn-link" href="#">
					<div class="col-md-4">
						<div class="side-collumn-img" style="background-image:url('https://thepsychologist.bps.org.uk/sites/thepsychologist.bps.org.uk/files/food.jpg')"></div>
					</div>
					<div class="col-md-8">
						<h5 class="side-collumn-heading">Best Beef Burger</h5>
						<p class="extra-info">A beef burger made with freshly minced meat and juicy red tomatoes.</p>
						<hr class="break">
					</div>
					</a>
				</div>
				<hr>
				<div class="row">
				<a class="side-collumn-link" href="#">
					<div class="col-md-4">
						<div class="side-collumn-img" style="background-image:url('http://goodtoknow.media.ipcdigital.co.uk/111/0000158d5/bc10_orh412w625/Baked-Camembert.jpg')"></div>
					</div>
					<div class="col-md-8">
						<h5 class="side-collumn-heading">Creamy Camembert</h5>
						<p class="extra-info">The trick to getting a gooey Camambert with a golden brown glaze</p>
						<hr class="break">
					</div>
				</a>
				</div>
				<hr>
			</div>
		</div>
		<div class="row">
				<div class="col-md-10 col-md-offset-1 text-right">
					<a href="/Recipe-book/addRecipe.html"><button class="button">Add a Recipe </button></a>
				</div>
			</div>
	</div>
</div>
<div class="slender-bar"></div>
</body>
</html>