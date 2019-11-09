<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${pokemon.name }</title>
<link href="show.css" rel="stylesheet" type="text/css">
</head>
<body>
<c:if test="${! empty pokemon}">
	<p>${pokemon.id }</p>
				<p>${pokemon.name }</p>
				<p>${pokemon.type }</p>
<img src= ${pokemon.imageUrl } >
<form action="deletePokemon.do" method="POST">
	<input type="hidden" name="id" value=${pokemon.id } /> <input
	type="submit" class="button" value="Delete Pokemon" />
</form>
<form action="editPokemon.do" method="Get">
	<input type="hidden" name="id" value=${pokemon.id } /> <input
	type="submit" class="button" value="Edit Pokemon" />
</form>
</c:if>
<c:if test="${empty pokemon }">
Unable to locate Pokemon with that ID
</c:if>
	<br>

	<div>
		<a href="/" class="button">Home</a>
	</div>
</body>
</html>