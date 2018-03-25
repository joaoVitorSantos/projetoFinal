<?php
/**
 * Created by PhpStorm.
 * User: aluno
 * Date: 20/03/18
 * Time: 16:06
 */

class Esporte
{

    private $id_esporte;
    private $nome_esporte;
    private $historia;
    private $num_praticantes;
    private $regras;

    /**
     * @return mixed
     */
    public function getNomeEsporte()
    {
        return $this->nome_esporte;
    }


    public function setNomeEsporte($nome_esporte): void {
        //garantir alguma coisa, executar a a verificacao de alguam regra
        $this->nome_esporte = $nome_esporte;
    }

    /**
     * @return mixed
     */
    public function getHistoria()
    {
        return $this->historia;
    }

    /**
     * @param mixed $historia
     */
    public function setHistoria($historia): void
    {
        $this->historia = $historia;
    }

    /**
     * @return mixed
     */
    public function getNumPraticantes()
    {
        return $this->num_praticantes;
    }

    /**
     * @param mixed $num_praticantes
     */
    public function setNumPraticantes($num_praticantes): void
    {
        $this->num_praticantes = $num_praticantes;
    }

    /**
     * @return mixed
     */
    public function getRegras()
    {
        return $this->regras;
    }

    /**
     * @param mixed $regras
     */
    public function setRegras($regras): void
    {
        $this->regras = $regras;
    }






}