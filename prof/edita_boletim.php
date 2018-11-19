<?php
include("../conexao.php");
session_start();
$_SESSION['aluno'] = $_GET['cod'];
?>
<html>

    <head>
        <title>Editar</title>
        <meta charset="UTf-8">
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
        <div class="container"><br><br>
    <form>

    <?php
    $CodAluno = $_GET['cod'];
    $sql = "SELECT * FROM boletim where aluno_cod = '$CodAluno'";

    $res = mysqli_query($conexao, $sql);
    $dados = mysqli_fetch_assoc($res);

    echo "<form action='salva_boletim.php' method='POST'>";
    $_SESSION['aluno'];
    for ($i = 1; $i <= 6; $i++) {
        //Utiliza de um if para checar se essa nota existe no BD, caso não exista, não irá mostrar nada, apenas as existentes.
        if ($dados['nota' . $i] != "") {
            
            echo "Nota:" . $i . " <input class='form-control' name='nota" . $i . "' type='number' value='" . $dados['nota' . $i] . "'><br>";
        }
    }
    echo "Media: <input name='media' readonly='redonly' type='number' class='form-control' value='" . $dados['media'] . "'><br>";
    echo "Faltas: <input name='falta' readonly='redonly' type='number' class='form-control' value='" . $dados['falta'] . "'><br>";
    echo "Reposição: <input name='rep' type='number' class='form-control' value='" . $dados['reposicao'] . "'><br><br>";
    echo "<input class='btn btn-danger' type='submit' style='width: 100%;' value='INSERIR'><br><br>";
    echo "<input class='btn btn-danger' type='reset' style='width: 100%;' value='LIMPAR'><br><hr>";
    ?>
    </form>
</div>
</body>
</html>
