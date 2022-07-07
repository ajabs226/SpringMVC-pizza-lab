<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Custom Pizza Order</title>
<link rel="stylesheet" href="/styles.css">
</head>
<body>
	<a href="/">Home</a>

	<h2>Thank you for your order!</h2>

	<ul>
		<li><nobr>Size:</nobr> ${size}</li>
		<li><nobr>Toppings:</nobr> ${toppings}</li>
		<li><nobr>Gluten Free:</nobr> ${glutenChoice}</li>
		<li><nobr>Special Instructions:</nobr> ${special}</li>

	</ul>
	<br>


	<h3>Total: ${type} $${price}
		
	</h3>

</body>
</html>