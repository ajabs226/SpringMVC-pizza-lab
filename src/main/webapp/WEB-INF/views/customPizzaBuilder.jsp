<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Build Your Own Pizza</title>
<link rel="stylesheet" href="/styles.css">
</head>
<body>
	<a href="/">Home</a>
	<h2>Build Your Own Pizza</h2>
	<form action="/customPizza" method="post">
		Size: <select name="size" required>
			<option>Small</option>
			<option>Medium</option>
			<option>Large</option>
		</select><br> Toppings: <input name="toppings" type="number" min="0"
			max="10" required value="0" /><br> Gluten Free: <input
			name="glutenFree" type="checkbox" /><br> Special Instructions:
		<input name="special" type="text" /><br> <input type="submit"
			class="button" onclick="/customPizza" />
	</form>

</body>
</html>