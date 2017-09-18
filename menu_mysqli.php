<?php
require('conexion/conexion.php');	
?>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    </head>
  <body>
   

<style>
.dropdown-menu {
    position: absolute;
    top: 100%;
    left: 0;
    z-index: 1000;
    display: none;
    float: left;
    min-width: 160px;
    padding: 5px 0;
    margin: 2px 0 0;
        margin-top: 2px;
    font-size: 14px;
    text-align: left;
    list-style: none;
    background-color: #fff;
    -webkit-background-clip: padding-box;
    background-clip: padding-box;
    border: 1px solid #ccc;
    border: 1px solid rgba(0,0,0,.15);
    border-radius: 4px;
        border-top-left-radius: 2px;
        border-top-right-radius: 2px;
   
}


	
	.dropdown:hover .dropdown-menu {
    display: block;
}



#citrux-bootstrap-menu.navbar-default .navbar-brand {
    color: rgba(119, 119, 119, 1);
}
#citrux-bootstrap-menu.navbar-default {
    font-size: 14px;
    background-color: rgba(248, 248, 248, 1);
    border-bottom-width: 1px;
}
#citrux-bootstrap-menu.navbar-default .navbar-nav>li>a {
    color: rgba(119, 119, 119, 1);
    background-color: rgba(248, 248, 248, 0);
}
#citrux-bootstrap-menu.navbar-default .navbar-nav>li>a:hover,
#citrux-bootstrap-menu.navbar-default .navbar-nav>li>a:focus {
    color: rgba(51, 51, 51, 1);
    background-color: rgba(248, 248, 248, 0);
}
#citrux-bootstrap-menu.navbar-default .navbar-nav>.active>a,
#citrux-bootstrap-menu.navbar-default .navbar-nav>.active>a:hover,
#citrux-bootstrap-menu.navbar-default .navbar-nav>.active>a:focus {
    color: rgba(85, 85, 85, 1);
    background-color: rgba(231, 231, 231, 1);
}
#citrux-bootstrap-menu.navbar-default .navbar-toggle {
    border-color: #ddd;
}
#citrux-bootstrap-menu.navbar-default .navbar-toggle:hover,
#citrux-bootstrap-menu.navbar-default .navbar-toggle:focus {
    background-color: #ddd;
}
#citrux-bootstrap-menu.navbar-default .navbar-toggle .icon-bar {
    background-color: #888;
}
#citrux-bootstrap-menu.navbar-default .navbar-toggle:hover .icon-bar,
#citrux-bootstrap-menu.navbar-default .navbar-toggle:focus .icon-bar {
    background-color: #888;
}
</style>




 
<div id="citrux-bootstrap-menu" class="navbar navbar-default navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#example-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar top-bar"></span>
				<span class="icon-bar middle-bar"></span>
				<span class="icon-bar bottom-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Citrux</a>
		</div>
		<!-- .navbar-collapse -->
		
		
		
		
			
<?php

$menu_sql = "SELECT id,nombre, url, tipo_menu, estado_menu FROM tb_menu WHERE estado_menu = 1"; 
$consulta = $conexion->query($menu_sql);
$rows = $consulta->num_rows;

//while ($menu = $consulta->fetch_assoc())
foreach ($consulta as $menu)
{


	

		echo '<div class="collapse navbar-collapse" id="example-1">
			<ul class="nav navbar-nav">';

if($menu['tipo_menu'] == 0){


			echo '<li>
<a href="'.$menu['url'].'">'.$menu['nombre'].'</a></li>';
	
	}

$submenu_sql = "SELECT tb_submenu.id,tb_submenu.nombre,tb_submenu.menu_id, tb_submenu.url FROM tb_submenu WHERE tb_submenu.menu_id = '".$menu['id']."'";
$consulta_submenu = $conexion->query($submenu_sql);
$rows_sub = $consulta_submenu->num_rows;


if ($rows_sub > 0) {			


					
	echo '<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">'.$menu['nombre'].' <span class="caret"></span></a>
					<ul class="dropdown-menu">';
					
					

	

foreach ($consulta_submenu as $submenu)
{


	
                    echo '<li><a href="'.$submenu['url'].'">'.$submenu['nombre'].'</a></li>';
						
}
		
						
				echo '</ul></li>';
}
				
			echo '</ul>';
}		
		echo '</div>
	</div>
</div>';


?>





   
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  </body>
</html>










 