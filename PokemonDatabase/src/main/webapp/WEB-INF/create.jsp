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
<input type = "text" name = "name" placeholder="Enter Name"/>
<select name="type" multiple>
  <option value="Electric">Electric</option>
  <option value="Fire">Fire</option>
  <option value="Water">Water</option>
  <option value="Grass">Grass</option>
</select>
<input type = "text" name = "weakness" placeholder="Enter Weakness"/>
<input type = "text" name = "evolvedName" placeholder="Enter Evolved Name"/>
<input type = "text" name = "imageUrl" placeholder="Enter Image Address"/>
<input type="submit" class = "button" />
</form>
<br>
</body>
</html>