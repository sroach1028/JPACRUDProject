<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Remove</title>
<link href="show.css" rel="stylesheet" type="text/css">
</head>
<body>
<c:if test="${removed= true}">
<h1>Success!</h1>
</c:if>
<c:if test="${removed=false}">
<h3>Something went wrong, unable to remove pokemon from database</h3>
</c:if>
	<div>
		<a href="/" class="button">Home</a>
	</div>
</body>
</html>