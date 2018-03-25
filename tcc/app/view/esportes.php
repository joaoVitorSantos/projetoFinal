<html>
<head>



</head>
<body>

<ul>
    <li><?php foreach ($listaEsportes as $esporte): ?>

        <div class="col-md-3">
            <a href="#"><?= $esporte->getNomeEsporte(); ?></a>
        </div>

        <?php endforeach; ?></li>
</ul>



</body>


</html>



<?php
/**
 * Created by PhpStorm.
 * User: Administrador
 * Date: 24/03/2018
 * Time: 21:33
 */