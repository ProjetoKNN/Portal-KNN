<!DOCTYPE html>
<html>
<head>
	<title>Pagamentos</title>
    <meta charset="UTf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="../css/estilo.css">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
</head>
<script>
        function formatar(mascara, documento){
            var i = documento.value.length;
            var saida = mascara.substring(0,1);
            var texto = mascara.substring(i)

            if (texto.substring(0,1) != saida){
                documento.value += texto.substring(0,1);
            }

        }
    </script>
<body class="BuscarAL">
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
                                        </div>  
                                    </li>
                                </ul>   
                                <ul class="navbar-nav ml-auto">
                                    <li class="nav-item">
                                        <a href="adm_func.php" class="nav-link" name="voltar">Voltar</a>
                                    </li>
                                </ul>
                        </div>
                    </div>
                </nav>
                <div class="container"><br>
	<h2>Pagamentos</h2><br>
	<form name="BuscaPag" method="POST">
        <div class='row'>
            <div class="col-md-8">
                Busca por data:
    		    <input type="date" name="PagData">
		        <input type="submit" name="BuscaData" class="btn btn-danger" value="Buscar"><br><br>
                Busca por CPF:
                <input type="text" name="PagCPF" maxlength="14" OnKeyPress="formatar('###.###.###-##', this)">
                <input type="submit" name="BuscaCPF" class="btn btn-danger" value="Buscar"><br>
            </div>
            <div class="col-md-4">
        		<a href="pagamentos.php" id="addAL"><button class="btn btn-danger" type="button">Inserir pagamento</button></a>
            </div>
        </div>
	</form><br>
	<div class="table-responsive table-striped">
	<table class="table table-sm">
		<thead class="bg-danger" style="color: white;">
			<tr>
				<th>Aluno</th>
				<th>Data do pagamento</th>
				<th>Valor</th>
				<th>Descrição</th>
			</tr>
		</thead>
		<tbody>
			<?php
				include("../conexao.php");
                    if(!$conexao){
                        echo "Ops.. Erro na conexão.";
                        exit;
                    }
                    if (isset($_POST['BuscaData'])) {
                    	$data = $_POST['PagData'];

                    	$query = "SELECT aluno.nome as NomeAluno, aluno.cod as CodAluno, pagamentos.valor as Valor, pagamentos.datamat as DataPag, pagamentos.descricao as Descr from pagamentos INNER JOIN aluno ON aluno.cod = pagamentos.codAluno WHERE pagamentos.datamat = '$data'";
                    	$consultaData = mysqli_query($conexao,$query);
                    	// echo "Aqui: ".$data."<br><br>";
                    	while($dadoss = mysqli_fetch_assoc($consultaData))
                            {   
                            	echo "<tr>";
                                echo "<td>".$dadoss['NomeAluno']."</td>";
                                echo "<td>".$dadoss['DataPag']. "</td>";
                                echo "<td>".$dadoss['Valor']."</td>";
                                echo "<td>".$dadoss['Descr']."</td>";
                                echo "</td>";
                                echo "</tr>";
                            }
                        }

                        if (isset($_POST['BuscaCPF'])) {
                    	$cpf = $_POST['PagCPF'];

                    	$consultaCPF = mysqli_query($conexao,"SELECT aluno.nome as NomeAluno, aluno.cod as CodAluno, aluno.cpf as Cpf, pagamentos.valor as Valor, pagamentos.descricao as Descr, pagamentos.datamat as DataPag from pagamentos inner join aluno on aluno.cod = pagamentos.codAluno where aluno.cpf = '$cpf'" );

                    	while($dados = mysqli_fetch_assoc($consultaCPF))
                            {   echo "<tr>";
                                //echo "<td>".$dados['cod']. "</td>";
                                echo "<td>".$dados['NomeAluno']."</td>";
                                echo "<td>".$dados['DataPag']. "</td>";
                                echo "<td>".$dados['Valor']."</td>";
                                echo "<td>".$dados['Descr']."</td>";
                                echo "</td>";
                                echo "</tr>";
                            }
                        }
			?>
		</tbody>
	</table>
</div>
</div>
<script src="../jquery/dist/jquery.js"></script>
            <script src="popper.js/dist/popper.js"></script>
            <script src="../js/bootstrap.js"></script> 
</body>
</html>