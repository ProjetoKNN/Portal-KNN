<html>
    <?php
    include("../conexao.php");
    session_start();
    $_SESSION['aluno'] = $_GET['cod'];

    ?>
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
            <div class="container">
        <h2>Aluno <?php echo $_GET['cod']?></h2>
        <form action="../prof/insereboletim.php" method="POST">
            Nota 1:
            <input type="number" class="form-control" name="nota1" placeholder="Insira a nota"><br>
            Nota 2:
            <input type="number" class="form-control" name="nota2" placeholder="Insira a nota"><br>
            Nota 3:
            <input type="number" class="form-control" name="nota3" placeholder="Insira a nota"><br>
            Nota 4:
            <input type="number" class="form-control" name="nota4" placeholder="Insira a nota"><br>
            Nota 5:
            <input type="number" class="form-control" name="nota5" placeholder="Insira a nota"><br>
            Nota 6:
            <input type="number" class="form-control" name="nota6" placeholder="Insira a nota"><br>
            Reposição:
            <input type="number" class="form-control" name="reposicao" placeholder="Reposição"><br>
            <br>
            <input class="btn btn-danger" type="submit" style="width: 100%;" value="INSERIR"><br><br>   
            <input class="btn btn-danger" type="reset" style="width: 100%;" value="LIMPAR"><hr>

        </form>
    </div>
    <script src="../jquery/dist/jquery.js"></script>
    <script src="popper.js/dist/popper.js"></script>
    <script src="../js/bootstrap.js"></script>
</body>
</html>