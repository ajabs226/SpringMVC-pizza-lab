<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Submit A Review</title>
<link rel="stylesheet" href="/styles.css">
</head>
<body>
<a href="/">Home</a>
<h2>Leave A Review</h2>

<form action="/review" method="post">
	Name: <input name="name" type="text"/>
	Comment: <input name="comment" type="text"/>
	Rating: <input name="rating" type="number" min="0" max="10"/>
	<input type="submit" class="button" onclick="/confirmation"/>
</form>


</body>
</html>