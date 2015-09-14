<?php
/**
 * Created by PhpStorm.
 * User: rio
 * Date: 14/09/15
 * Time: 20:12
 */

use Zelenin\yii\SemanticUI\widgets\ActiveForm;

$form = ActiveForm::begin([
   'id' => 'create_category'
]);

    echo $form->field($model, 'parent')->dropDownList($roots,['prompt'=>''])->label('Parents');
    echo $form->field($model, 'name')->textInput();

    echo "<button class='ui primary button'>
  Save
</button>";

ActiveForm::end();