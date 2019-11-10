<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>Create Pokemon</p>
<form action = "createPokemon.do" method = "Post">
<input type = "text" name = "name" value="Enter Name"/>
<input type = "text" name = "type" value="Enter Type"/>
<input type = "text" name = "weakness" value="Enter Weakness"/>
<input type = "text" name = "evolvedName" value="Enter Evolved Name"/>
<input type = "text" name = "imageUrl" value="Enter Image Address"/>
<input type="submit" class = "button" />
</form>
<br>
</body>
</html>