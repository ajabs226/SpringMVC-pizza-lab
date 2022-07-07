<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC Pizza</title>
<link rel="stylesheet" href="style.css" />
</head>
<body>
	<div class="header">
		<h1>MVC Pizza</h1>
		<h6>Slightly Better Than Little Caesar's Pizza</h6>

		<div class="links">
			<a href="/specialty" class="button">Specialty Pizzas</a> <a
				href="/customPizzaBuilder" class="button">Custom Pizza</a> <a
				href="/review" class="button">Submit A Review</a>
		</div>
	</div>

	<div class="links">
		<p>
		<h2>
			Specialty Pizzas <a
				href="/specialtyPizza?name=Meat Lover's&price=14.99">Meat
				Lover's</a> <a href="/specialtyPizza?name=Hawaiian Pizza&price=14.50">Hawaiian
				Pizza</a> <a href="/specialtyPizza?name=Veggie Delight&price=12.50">Veggie
				Delight</a>
	</div>
</body>
</html>