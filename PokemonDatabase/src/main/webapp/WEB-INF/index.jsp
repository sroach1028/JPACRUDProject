<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Pokemon Database Home</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link href="show.css" rel="stylesheet" type="text/css">
<style>
img
{
size: 50%;
}

</style>
</head>
<body id="indexbody">

    <!--Navbar-->
 
    <nav id="indexnav" class="navbar navbar-expand-lg" style="background-color: #e3f2fd;"">

      <!-- Navbar brand -->
      <a class="navbar-brand" href="">
      <img src="https://cdn2.iconfinder.com/data/icons/gaming-color-icons/104/22-gaming-pokemon-pokeball-512.png"/>
      </a>

      <!-- Collapse button -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav" aria-controls="basicExampleNav"
        aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <!-- Collapsible content -->
      <div class="collapse navbar-collapse" id="basicExampleNav">

        <!-- Links -->
        <ul class="navbar-nav mr-auto">


          <!-- Dropdown -->
          <li class="nav-item dropdown" class="nav-item active">
              <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true"
                aria-expanded="false">Poke-Options</a>
              <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink1">
                <a class="dropdown-item" href="search.do">Search for Pokemon</a>
                <a class="dropdown-item" href="create.do">Create Pokemon</a>
                <a class="dropdown-item" href="getAllPokemon.do">Show All Pokemon</a>
              </div>
            </li>
        </ul>
		    <span class="navbar-text">
      Pokemon Data Storage
    </span>
      <!-- Collapsible content -->

    </nav>
    <!--/.Navbar-->


<div class = "body">
<h1>Pokemon Database</h1>
    <footer class="footer">
      <div class="container">
        <span class="text-muted">Created by Shaun Roach @ Skill Distillery, Denver, CO</span>
      </div>
    </footer>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</div>
</body>

</html>