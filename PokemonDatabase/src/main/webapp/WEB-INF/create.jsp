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