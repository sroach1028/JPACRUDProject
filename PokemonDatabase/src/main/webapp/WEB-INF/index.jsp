<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pokemon Database Home</title>
<link href="show.css" rel="stylesheet" type="text/css">

</head>
<body>
<h1>Pokemon Database</h1>
<div>
<p> Search By Id</p>
<form action = "getPokemon_id.do">
<input type = "number" name = "id" min = "1"/>
<input type="submit" class = "button" />
</form>
<br>
<p>Create Pokemon</p>
<form action = "createPokemon.do" method = "Post">
<input type = "text" name = "name" value="Enter Name"/>
<input type = "text" name = "type" value="Enter Type"/>
<input type = "text" name = "weakness" value="Enter Weakness"/>
<input type = "text" name = "evolvedName" value="Enter Evolved Name"/>
<input type = "text" name = "imageUrl" value="Enter Image Address"/>
<input type="submit" class = "button" />
</form>

</div>
</body>
</html>