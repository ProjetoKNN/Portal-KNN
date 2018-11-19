<!DOCTYPE html>
<html>
    <head>
        <title>Pagamento</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="../css/bootstrap.css" type="text/css">
        <link rel="stylesheet" href="../css/estilo.css" type="text/css">
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
                                        <a class="dropdown-item" href="buscar_pag.php">Controle de mensalidades</a>
                                    </div>
                                </li>
                            </ul>   
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item">
                                    <a href="buscar_pag.php" class="nav-link" name="voltar">Voltar</a>
                                </li>
                            </ul>
                    </div>
                </div>
            </nav>
            <div class="container" id="pag">
        <form action="../adm/php/lancaPagamento.php" method="POST">
            <h2>Pagamentos</h2>
            Codigo do aluno: <input type="text" name="cod" value="" />
            <input type="submit" class="btn btn-danger" value="busca" />
        </form><br>

        <form action="php/lancapagamentocpf.php" method="POST">
        	CPF do aluno: <input type="text" name="cpf" maxlength="14" OnKeyPress="formatar('###.###.###-##', this)" />
            <input type="submit" class="btn btn-danger" value="busca" />
        </form> <br>
    </div>
        <script src="../jquery/dist/jquery.js"></script>
        <script src="popper.js/dist/popper.js"></script>
        <script src="../js/bootstrap.js"></script>
    </body>
</html>