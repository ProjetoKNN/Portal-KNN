<!DOCTYPE html>
<html>
<?php
    include("../conexao.php");
    session_start();

    ?>
    <head>
        <title>Lançar Aula</title>
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
            <div class="container">
        <form action="insereaulabd.php" method="POST">
            <h2>Lançar aula</h2>
            <input type="hidden" name="turma" readonly="redonly" value="<?php echo  $_GET['cod'];?>"><br>            
            Conteudo:
            <input type="text" name="conteudo" class="form-control" placeholder="Insira o conteúdo da aula" required="true">
            <br>
            Data:
            <input type="date" class="form-control" name="dataaula"><br>
            <input type="submit" name="inserir" class="btn btn-danger" style="width: 100%;" value="INSERIR"><br><br>
            <input type="reset" name="limpar" class="btn btn-danger" style="width: 100%;" value="LIMPAR">
        </form>
    </div>
    <script src="../jquery/dist/jquery.js"></script>
            <script src="popper.js/dist/popper.js"></script>
            <script src="../js/bootstrap.js"></script>  
    </body>
</html>