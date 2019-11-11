<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body
{
background-color: gray;
color: white;
font-size: 20px;
}
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

form {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
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