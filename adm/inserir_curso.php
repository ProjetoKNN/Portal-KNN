<!DOCTYPE html>
<html>
<head>
	<title>Inserção de Curso</title>
	<meta charset="utf-8">
   	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../css/estilo.css">
</head>
<nav class="navbar navbar-expand-lg bg-danger navbar-dark ">
			<div class="container">
				<a class="navbar-brand" ><img src="../img/testelogo.jpg" class="d-inline-block align-top"></a>
				<a class="navbar-brand" id="bv">Bem-vindo, Administrador</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSite">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSite">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="navDrop">
								Controles
							</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="buscar_al.php">Controle de alunos</a>
								<a class="dropdown-item" href="buscar_prof.php">Controle de professores</a>
								<a class="dropdown-item" href="buscar_turm.php">Controle de turmas</a>
								<a class="dropdown-item" href="buscar_curso.php">Controle de cursos</a>
								<a class="dropdown-item" href="buscar_mat.php">Controle de matrículas</a>
								<a class="dropdown-item" href="buscar_pag.php">Controle de mensalidades</a>
							</div>
						</li>
					</ul>	
					<ul class="navbar-nav ml-auto">
						<li class="nav-item">
							<a href="buscar_curso.php" class="nav-link" name="sair">Voltar</a>
						</li>
						
					</ul>
				</div>
			</div>
		</nav>
<body class="BuscarAL">
	<div class="container" id="divBusca">
	<h3 id="h1Busca">Inserir Curso</h3>
		<form method="POST">
			Nome do curso:
			<input type="text" class="form-control" name="nomecurso"><br>
			<input type="submit" name="curso" class="btn btn-danger" style="width: 100%;" value="Inserir"><br>
			<?php
				if(isset($_POST['curso'])){
				$nomecurso = $_POST['nomecurso'];

				$curso = mysqli_query($conexao,"INSERT INTO curso(nome) VALUES ('$nomecurso') ");

				if(!$curso){
					echo "<br><div class='alert alert-danger' role='alert'>
		        				Erro ao realizar cadastro! Tente outra vez!
		        			</div>";
				}else{
					echo "<br><div class='alert alert-success' role='alert'>
		  						Cadastro realizado com sucesso!
							</div>";
					}
				}
			?>
		</form>
	</div>
		<script src="../jquery/dist/jquery.js"></script>
        <script src="popper.js/dist/popper.js"></script>
        <script src="../js/bootstrap.js"></script>
</body>
</html>