<?php
/**
 * Created by PhpStorm.
 * User: aluno
 * Date: 23/03/18
 * Time: 14:56
 */

require_once __DIR__.'/../database/Conexao.php';
require_once __DIR__.'/../model/Esporte.php';


class CrudEsporte
{
    private $conexao;

    /**
     * CrudEsportes constructor.
     */
    public function __construct() {
        $this->conexao = Conexao::getConexao();

    }

    public function buscarEsportes(){
        $consulta = "SELECT * FROM esportes";

        return  $this->conexao->query($consulta)->fetchAll(PDO::FETCH_CLASS, Esporte::class);


    }



}