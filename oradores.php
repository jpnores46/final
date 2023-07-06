<?php 

	$conexion=mysqli_connect('localhost','root','','empresacoacodo2023');

 ?>


<!DOCTYPE html>
<html>

<head>
	<!-- Bootstrap CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" href="style2.css">

  <title>Integrador PHP</title>
	
</head>
<body background="images/ba1.jpg">

<br>
<center><h2>Listado de Oradores</h2></center>
<div id="tabla">
	
          <!-- <img class="calle" src="images/ba1.jpg" width="100%" alt="..."> -->

	<table class="table table-dark table-hover table-bordered" border="1" >
		<tr class="table-primary">
			<td class="table-primary">id</td>
			<td class="table-primary">Apellido</td>
			<td class="table-primary">Nombre</td>
			<td class="table-primary">Email</td>
			<td class="table-primary">Fecha</td>	
			<td class="table-primary">cursos</td>	
		</tr>
		</div>

   

		<?php 
		$sql="SELECT * from alumnos";
		$result=mysqli_query($conexion,$sql);

		while($mostrar=mysqli_fetch_array($result)){
		 ?>

		<tr>
			<td><?php echo $mostrar['id_alumnos'] ?></td>
			<td><?php echo $mostrar['apellido'] ?></td>
			<td><?php echo $mostrar['nombre'] ?></td>	
			<td><?php echo $mostrar['correo'] ?></td>
			<td><?php echo $mostrar['fecha'] ?></td>
			<td><?php echo $mostrar['cursos'] ?></td>
		</tr>
	<?php 
	}
	 ?>
	</table>
	<br>
	<br>
<center><a href="index.html" ><button type="button" class="btn btn-success">Pagina Principal</button></a></center>
</body>
</html>