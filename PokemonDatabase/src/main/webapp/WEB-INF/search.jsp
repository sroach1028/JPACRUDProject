<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link href="show.css" rel="stylesheet" type="text/css">

<style> 
body
{
background-image: url("https://www.freeiconspng.com/uploads/pokeball-transparent-image-15.png");
background-repeat: no-repeat;
background-size: 60%;
background-position: center;
background-color: gray;
}
nav
{
top: 100px;
}
</style>
</head>

<body>
	
    <!--Navbar-->
    <div class = "container">
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #e3f2fd;">

      <!-- Navbar brand -->
      <a class="navbar-brand" href="#">Logo</a>

      <!-- Collapse button -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav" aria-controls="basicExampleNav"
        aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <!-- Collapsible content -->
      
          <form class="form-inline" action = "getPokemon_id.do">
    <input class="form-control mr-sm-2" type="number" name = "id" min="1"placeholder="ID#" aria-label="Search ID">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
  </form>

      <!-- Collapsible content -->

    </nav>
    </div>
 </div>
    <!--/.Navbar-->

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>

</html>