<!DOCTYPE html>
<html>
<?php
    include("../conexao.php");
    session_start();

    ?>
    <head>
        <title>Lançar Frequência</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="../css/bootstrap.css" type="text/css">
        <link rel="stylesheet" href="../css/estilo.css" type="text/css">

    </head>
    <body class="BuscarAL">
        <nav class="navbar navbar-expand-lg bg-danger navbar-dark ">
                    <div class="container">
                        <a class="navbar-brand" ><img src="../img/testelogo.jpg" class="d-inline-block align-top"></a>
                        <a class="navbar-brand" id="bv">Bem-vindo, <?php echo $_SESSION['nomeProf']; ?></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSite">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSite">  
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item">
                                    <a href="index_prof.php" class="nav-link" name="voltar">Voltar</a>
                                </li>
                            </ul>
                    </div>
                </div>
            </nav>
        <div class="container" style="margin-top: 20px;">  <!-- Manda dados contidos nesse formulário para a página "frequencia.php".-->
        <form action="frequencia.php" method="POST">
            

            <?php

            //Pega os códigos que foram passados pelo GET e os inserem em uma variável de sessão.
            //$_SESSION['aulita'] = $_GET['cod'];
            //$_SESSION['turmita'] = $_GET['codt'];

            //Passa o código da turma para um variável, para que possa ser utilizada no "sql" abaixo.
            $turma = $_SESSION['codturma'];
            $aula = $_SESSION['codaula'];
            //Seleciona alguns dados de aluno de acordo com a turma que ele foi matriculado.
            $sql = "SELECT aluno.nome as NomeAluno, aluno.cod as CodAluno from aluno inner join matricula on matricula.turma_cod = $turma AND matricula.aluno_cod = aluno.cod ";

            $res = mysqli_query($conexao, $sql);
            echo "<div class='table-responsive table-striped' ";
            echo "<tr>";
            echo "<table class='table table-sm' >";
            while ($r = mysqli_fetch_assoc($res)) {
                echo "<thead class='bg-danger' style='color: white;'><th>Aluno</th><th>Presença</th></thead>";
                echo "<tr>";
                echo "<td>" . $r['NomeAluno'] . "</td>";
                echo "<td>" . "Presente <input type='radio' name='" . $r['CodAluno'] . "' value=0>" . "<br>Ausente <input type='radio' 	name='" . $r['CodAluno'] . "' value=1> " . "</td>";
                echo "</tr>";
            }
            echo "</table>";
            echo "</div>";
            ?>
            <input type="submit" name="inserir" class="btn btn-danger" style='width: 50%;' value="INSERIR">
            <input type="reset" name="limpar" class="btn btn-danger" style='width: 49.5%;' value="LIMPAR">
        </form>
    </div>
    <script src="../jquery/dist/jquery.js"></script>
            <script src="popper.js/dist/popper.js"></script>
            <script src="../js/bootstrap.js"></script>  
    </body>
</html>