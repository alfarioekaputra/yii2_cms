<?php

use backend\models\Category;
use dosamigos\tinymce\TinyMce;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Posts */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="posts-form">

    <?php $form = ActiveForm::begin([
        'id' => 'post-form',
    ]); ?>
    <div class="col-sm-8">
        <?= $form->field($model, 'title',['inputOptions'=>[
            'class'=>'form-control',
            'placeholder'=>'Title'
        ]])->textInput(['maxlength' => true])->label(false) ?>

        <?= $form->field($model, 'content')->widget(TinyMce::className(),[
            'options' => ['rows' => 6],
            'clientOptions' => [
                'plugins' => [
                    "advlist autolink lists link charmap print preview anchor",
                    "searchreplace visualblocks code fullscreen",
                    "insertdatetime media table contextmenu paste"
                ],
                'toolbar' => "undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
            ]
        ])->label(false); ?>

        <?= $form->field($model, 'source',['inputOptions'=>[
            'class'=>'form-control',
            'placeholder'=>'source'
        ]])->textInput(['maxlength' => true])->label(false) ?>

        <?= $form->field($model, 'status')->dropDownList([ 'Publish' => 'Publish', 'Draft' => 'Draft', 'Delete' => 'Delete', ], ['prompt' => ''])->label(false) ?>


        <div class="form-group">
            <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="panel panel-default">
            <div class="panel-body">
                Category
                <?php

                $menus = Category::find()->roots()->all();
                $depth = 2; // This will limit to countries & states only for example

                echo '<ul>';

                foreach ($menus as $menu)
                {
                    echo "<li><input type='checkbox' value='".$menu->id."'>{$menu->name}";
                    if (count($menu->children()->all()))
                    {
                        echo "<ul>";

                        foreach ($menu->children($depth)->all() as $state)
                        {


                            if($state->depth == $depth){
                                echo "<ul><li><input type='checkbox' value='".$state->id."'>{$state->name}</li></ul>";
                            }else{
                                echo "<li><input type='checkbox' value='".$state->id."'>{$state->name}";
                            }
                        }

                        echo "</ul>";
                    }

                }

                echo '</ul>';

                ?>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-body">
                Category
                <?php

                $menus = Category::find()->roots()->all();
                $depth = 2; // This will limit to countries & states only for example

                echo '<ul>';

                foreach ($menus as $menu)
                {
                    echo "<li><input type='checkbox' value='".$menu->id."'>{$menu->name}";
                    if (count($menu->children()->all()))
                    {
                        echo "<ul>";

                        foreach ($menu->children($depth)->all() as $state)
                        {


                            if($state->depth == $depth){
                                echo "<ul><li><input type='checkbox' value='".$state->id."'>{$state->name}</li></ul>";
                            }else{
                                echo "<li><input type='checkbox' value='".$state->id."'>{$state->name}";
                            }
                        }

                        echo "</ul>";
                    }

                }

                echo '</ul>';

                ?>
            </div>
        </div>
    </div>
    <?php ActiveForm::end(); ?>

</div>
