<?php

require_once __DIR__.'/../crud/CrudUsuario.php';

function formularioCadastro(){
    //abir a tela
    include_once '../view/cadastro.php';

}

function cadastrar(){

    $usuario = new Usuario($_POST['usuario'],$_POST['senha'], $_POST['email']);
    $crudUsuario = new CrudUsuario();
    $crudUsuario->cadastrarUsuario($usuario);

    header('location: HomeController.php');

}

function formularioLogin(){
    //abrir a tela
    include_once '../view/login.php';

}

function editar(){

    echo "chamou editar";

}


if ($_GET['rota'] == "cadastrar"){
    formularioCadastro();
} elseif ($_GET['rota'] == "editar"){
    editar();
} elseif ($_GET['rota'] == 'realizar_cadastro'){
    cadastrar();
} elseif ($_GET['rota'] == 'logar'){
    formularioLogin();
} elseif ($_GET['rota'] == 'esportes'){
    cadastrar();
}
