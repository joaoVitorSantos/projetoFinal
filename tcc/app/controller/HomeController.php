<?php

require_once __DIR__.'/../crud/CrudEsporte.php';

function index(){

    $esportes = new CrudEsporte();
    $listaEsportes = $esportes->buscarEsportes();

    include_once '../view/index.php';

}

index();