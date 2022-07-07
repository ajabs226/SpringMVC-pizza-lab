<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Specialty Pizza</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<a href="/">Home</a>

	<h1>Specialty Pizzas</h1>
	<ul>
		<li><a href="/specialtyPizza?name=Meat Lover's&price=14.99">Meat
				Lover's</a></li>
		<li><a href="/specialtyPizza?name=Hawaiian Pizza&price=14.50">Hawaiian
				Pizza</a></li>
		<li><a href="/specialtyPizza?name=Veggie Delight&price=12.50">Veggie
				Delight</a></li>
	</ul>

	<h3>The ${name} pizza is $${price}</h3>

</body>
</html>