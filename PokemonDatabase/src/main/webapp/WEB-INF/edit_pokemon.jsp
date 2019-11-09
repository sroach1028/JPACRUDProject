<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Pokemon</title>
</head>
<body>
<form action = "updatePokemon.do" method = "Post">
<input type = "hidden" name = "id" value= "${pokemon.id}" />
<input type = "text" name = "name" value= "${pokemon.name}" />
<input type = "text" name = "type" value=" ${pokemon.type}" />
<input type = "text" name = "weakness" value="${pokemon.weakness} "/>
<input type = "text" name = "evolvedName" value="${pokemon.evolvedName}" />
<input type = "text" name = "imageUrl" value="${pokemon.imageUrl}" />
<input type="submit" class = "button" />
</form>
</body>
</html>