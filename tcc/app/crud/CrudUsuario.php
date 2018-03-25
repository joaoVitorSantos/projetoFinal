<?php

require_once __DIR__.'/../database/Conexao.php';
require_once __DIR__.'/../model/Usuario.php';

class CrudUsuario {

    private $conexao;

    public function __construct() {
        $this->conexao = Conexao::getConexao();
    }

    public function getPostCadastro(){
        $email = $_POST["email"];
        $senha = $_POST["senha"];
        $user = $_POST["usuario"];
        $id = null;
        $tipo = 2;

        echo 12;

        //$this->cadastrarUsuario($id, $user, $tipo, $senha, $email);
    }


    public function cadastrarUsuario(Usuario $user){

        $sql = "INSERT INTO usuario (email, senha, nome_usuario, tipo_usuario_id_tipo_usuario) VALUES ('{$user->getEmail()}','{$user->getSenhaUsuario()}','{$user->getNomeUsuario()}','{$user->getIdTipoUsuario()}')";

        $this->conexao->exec($sql);

    }



    public function getUsuarios(){

        $sql = "SELECT * FROM usuario";

        return  $this->conexao->query($sql)->fetchAll(PDO::FETCH_CLASS, Usuario::class);



    }



}

$c = new CrudUsuario();
$c->getUsuarios();



