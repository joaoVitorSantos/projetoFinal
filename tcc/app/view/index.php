<!DOCTYPE html>
<html>



<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- PAGE settings -->
  <link rel="icon" href="https://templates.pingendo.com/assets/Pingendo_favicon.ico">
  <title>TCC</title>
  <meta name="description">
  <meta name="keywords">
  <meta name="author" content="">
  <!-- CSS dependencies -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="../../assets/wireframe.css"> </head>

<body>
  <div class="collapse bg-dark" id="navbarHeader">
    <div class="container">
      <div class="row">
        <div class="col-md-7 py-4">
          <h4>About</h4>
          <p class="text-info">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
        </div>
        <div class="col-md-3 offset-md-1 py-4">
          <h4>Contact</h4>
          <ul class="list-unstyled">
            <li>
              <a href="#" class="text-secondary">Follow on Twitter</a>
            </li>
            <li>
              <a href="#" class="text-secondary">Like on Facebook</a>
            </li>
            <li>
              <a href="#" class="text-secondary">Email me</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <nav class="navbar navbar-expand-md navbar-dark bg-secondary">
    <div class="container">
      <a class="navbar-brand" href="index.php">TCC</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar2SupportedContent" aria-controls="navbar2SupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse text-center justify-content-end" id="navbar2SupportedContent">

        <a class="btn navbar-btn ml-2 text-white btn-secondary mx-1" href="../controller/UsuarioController.php?rota=logar"><i class="fa d-inline fa-lg fa-user-circle-o"></i>&nbsp;Login</a>
        <a class="btn navbar-btn ml-2 text-white btn-secondary" href="../controller/UsuarioController.php?rota=cadastrar"><i class="fa d-inline fa-lg fa-user-circle-o"></i>&nbsp;Cadastrar</a>
      </div>
    </div>
  </nav>
  <div class="text-center py-5">
    <div class="container">
      <div class="row my-5 justify-content-center">
        <div class="col-md-10">
          <h1 class="text-dark">Bem Vindo&nbsp;</h1>
          <p class="lead text-dark">Abaixo, você encontra algumas sugestões de times, esportes, ligas e jogadores da qual pode se interessar!</p>
          <div class="row">
            <div class="col-md-3">
              <a class="btn m-1 w-50 text-white btn-primary" href="../controller/UsuarioController.php/?rota=esportes">Esportes</a>
            </div>
            <div class="col-md-3">
              <a class="btn m-1 w-50 text-white btn-primary" href="#">Ligas</a>
            </div>
            <div class="col-md-3">
              <a class="btn m-1 w-50 text-white btn-primary" href="#">Times</a>
            </div>
            <div class="col-md-3">
              <a class="btn m-1 w-50 btn-primary text-white" href="#">Jogadores</a>
            </div>

              <div class="col-md-3">
                  <a class="btn m-1 w-50 btn-primary text-white" href="#">Jogadores</a>
              </div>


            <?php

            foreach ($listaEsportes as $esporte): ?>

                <div class="col-md-3">
                    <a class="btn m-1 w-50 btn-primary text-white" href="#"><?= $esporte->getNomeEsporte(); ?></a>
                </div>

            <?php endforeach; ?>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5 bg-light">
    <div class="container">
      <div class="row">
        <div class="col-md-3 my-1">
          <div class="card">
            <img class="card-img-top" src="../../assets/images/futeba.jpg" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">Futebol</h5>
              <p class="card-text">Seu Esporte de Hoje!</p>
              <a href="esporte.php" class="btn btn-secondary text-white">Ver Mais</a>
            </div>
          </div>
        </div>
        <div class="col-md-3 my-1">
          <div class="card">
            <img class="card-img-top" src="../../assets/images/NBA.jpeg" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">NBA</h5>
              <p class="card-text">Seu(a) Torneio/Liga de Hoje!</p>
              <a href="liga.php" class="btn btn-secondary text-white">Ver Mais
                <br> </a>
            </div>
          </div>
        </div>
        <div class="col-md-3 my-1">
          <div class="card">
            <img class="card-img-top" src="../../assets/images/montreal.jpeg" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">Montreal Canadiens</h5>
              <p class="card-text">Seu Time de Hoje!</p>
              <a href="time.php" class="btn btn-secondary text-white">Ver Mais</a>
            </div>
          </div>
        </div>
        <div class="col-md-3 my-1">
          <div class="card">
            <img class="card-img-top" src="../../assets/images/tombrady.jpeg" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">Tom Brady</h5>
              <p class="card-text">Seu(a) Jogador(a) de Hoje!</p>
              <a href="atleta.php" class="btn btn-secondary text-white">Ver Mais</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="text-white bg-secondary">
    <div class="container">
      <div class="row">
        <div class="col-md-12 mt-3">
          <p class="text-center text-white">©</p>
        </div>
      </div>
    </div>
  </div>


  <!--  //TODO Remover links na pasta ao invés da internet -->
  <script src="../../assets/scripts/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>

</html>