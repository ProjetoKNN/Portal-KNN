<?php
include_once '../../conexao.php';
session_start();

$codigoAluno = filter_input(INPUT_POST, 'cod');
$cpfAluno = filter_input(INPUT_POST, 'cpf');

$queryAluno = "SELECT aluno.nome FROM aluno WHERE cod = $codigoAluno";
$r = mysqli_query($conexao, $queryAluno);
$nome = mysqli_fetch_assoc($r)['nome'];
$_SESSION['nomeAluno'] = $nome;
// echo $_SESSION['nomeAluno'];
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Pagamento</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="../../css/bootstrap.css" type="text/css">
        <link rel="stylesheet" href="../../css/estilo.css" type="text/css">
    </head>
    <body class="BuscarAL">
        <nav class="navbar navbar-expand-lg bg-danger navbar-dark ">
                    <div class="container">
                        <a class="navbar-brand" ><img src="../../img/testelogo.jpg" class="d-inline-block align-top"></a>
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
                                    <a href="../pagamentos.php" class="nav-link" name="voltar">Voltar</a>
                                </li>
                            </ul>
                    </div>
                </div>
            </nav>
        <div class="container">
        <form action="pagamentoBD.php" method="POST">
            <h2>Inserir pagamento</h2>
            Aluno <input type="text" class="form-control" readonly="readonly" value="<?php echo $_SESSION['nomeAluno']; ?>"><br>
            Valor <input type="text" class="form-control" name="mensa" value="" /> <br>
            Dexcrição <select class="form-control" name="descricao">
                <option>Mensalidade</option>
                <option>Rematricula</option>
                <option>VAN</option>
                <option>Material</option>
                    </select>
                <?php 
                $_SESSION['codAluno'] = $codigoAluno;
                $_SESSION['cpfAluno'] = $cpfAluno;
                ?>
                    <br>
            <!--<br>Data pagamento: <input type="date" name="data" value="" />-->
            <input type="submit" class="btn btn-danger" style="width: 100%;" value="Enviar" />
        </form>
    </div>
        <script src="../jquery/dist/jquery.js"></script>
        <script src="popper.js/dist/popper.js"></script>
        <script src="../js/bootstrap.js"></script>
    </body>
</html>