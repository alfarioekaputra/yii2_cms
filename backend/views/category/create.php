<?php
/**
 * Created by PhpStorm.
 * User: rio
 * Date: 14/09/15
 * Time: 20:10
 */

$this->title = 'Create Category';
$this->params['breadcrumbs'][] = $this->title;

    echo $this->render('_form',[
        'model'=>$model,
        'roots' => $roots
    ]);
?>


