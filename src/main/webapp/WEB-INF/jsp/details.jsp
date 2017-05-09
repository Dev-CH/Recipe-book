<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Details Recipe - ${recipe.title}</title>
</head>
<link href="<c:url value="/resources/css/stylesheet.css"/>" rel="stylesheet" />
<link href="<c:url value="/resources/bootstrap/bootstrap.min.css" />" rel="stylesheet" />
<script type="text/javascript">
function AlertIt() {
var answer = confirm ("Are you sure you want to delete ${recipe.title}?")
if (answer)
window.location="/Recipe-book/remove.html?ID=${recipe.id}";
}
</script>


<body class="background" background="<c:url value='/resources/img/Process.jpg' />">
	<div class="box">
		 <div class="slender-bar"></div>
			 <div class="container-fluid wrapper">
			 	<div class="row">
			 		<div class="col-sm-6">
			 		<a href="/Recipe-book/"><button class="button"> <em>&larr;</em>  Back</button></a>
			 			<div class="details-img" style="background-image:url('${recipe.imageUrl}')"></div>
			 			<div class="col-md-12">
			 					<p class="copyright">Photo © <a href="${recipe.photoSource}">${recipe.photoCredit}</a></p>
			 				</div>
			 				<div class="text-center">
					 			<h4 class="extra-info top-margin">${recipe.subTitle}</h4>
					 			<hr class="break">
				 			</div>
			 		</div>
			 		<div class="col-sm-6 ">
			 			<div class="text-center">
				 			<h2 class="details-header">${recipe.title}</h2>
				 			<hr class="break">
			 			</div>
			 			<div class="details-ingredients">
			 				<h4 class="details-header">Ingredients</h4>
								<table>
									<c:forEach items="${recipeIngredients}" var="ingredients">
										<tr>
											<td>
												&bull; <span class="bp">${ingredients.name} </span> 
											</td>
											<td class="filler">
											</td>
											<td>
												 ${ingredients.amount} ${ingredients.unit}
											</td>
										</tr>
									</c:forEach>	
								</table>
						</div>
						<hr>
						<div>
						<h4 class="details-header">Method</h4>
							<ul>
								<c:forEach  items="${recipeMethod}" var="method">
									<li>${method.instruction}</li>
								</c:forEach>
							</ul>
						</div>
			 		</div>
			 	</div>
			 	<div class="row">
			 		<div class="col-sm-10 col-sm-offset-1">
			 		<hr>
			 			<h3 class="details-header">Good to Know</h3>
			 			<p>${recipe.recipeBio}</p>
			 		</div>
			 	</div>
			 	<div class="row">
			 		<div class="col-sm-10 col-sm-offset-1 text-right">
			 			<a href="javascript:AlertIt();"><button class="button">Remove Recipe</button></a>
			 		
			 		
						<a href="/Recipe-book/edit.html?ID=${recipe.id}"><button class="button">Edit Recipe</button></a>
					</div>
					
			 	</div>
			 
			 </div>
		<div class="slender-bar"></div>
	</div>
</body>
</html>