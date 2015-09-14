<?php
/* @var $this yii\web\View */
use backend\models\Category;
use yii\helpers\Html;
use Zelenin\yii\SemanticUI\widgets\ActiveForm;

?>
<h1>category/index</h1>

<p>
    You may change the content of this page by modifying
    the file <code><?= __FILE__; ?></code>.
</p>
<div class="ui grid">
    <div class="four wide column">
        <?php

            $menus = Category::find()->roots()->all();
            $depth = 2; // This will limit to countries & states only for example
            //$menus->children($depth)->all();

            echo '<div id="jstree_demo_div">';
            echo '<ul>';

            foreach ($menus as $menu)
            {
                echo "<li>{$menu->name}";
                if (count($menu->children()->all()))
                {
                    echo "<ul>";

                    foreach ($menu->children($depth)->all() as $state)
                    {


                        if($state->depth == $depth){
                            echo "<ul><li>{$state->name}</li></ul>";
                        }else{
                            echo "<li>{$state->name}";
                        }
                    }

                    echo "</ul>";
                }
                /*$countries = Category::findOne(['name' => $menu->name]);

                $leaves = $countries->leaves()->all();

                foreach ($leaves as $children) {
                    echo $children->name;
                }*/


            }

            echo '</ul>';
            echo '</div>';

        ?>
    </div>
    <div class="eight wide column">
        <?php
        $form = ActiveForm::begin([
            'id' => 'create_category',
            'action' => ['/category/create'],
        ]);

        echo $form->field($model, 'parent')->textInput()->label('Parents');
        echo $form->field($model, 'name')->textInput();

        echo "<button class='ui primary button'>
  Save
</button>";

        ActiveForm::end();
        ?>
    </div>
</div>
<?php

/*$countries = Category::find()->where(['name' => 'Countries'])->roots()->all();
//$parent = $countries->parents()->all();
foreach ($countries as $test) {
    echo $test['name'];
}


$categories = Category::find()->all();
$depth = 0;

foreach ($categories as $n => $category)
{
    echo $category->depth;
    if ($category->depth == $depth) {
        echo Html::endTag('li') . "\n";
    } elseif ($category->depth > $depth) {
        echo Html::beginTag('ul') . "\n";
    } else {
        echo Html::endTag('li') . "\n";

        for ($i = $depth - $category->depth; $i; $i--) {
            echo Html::endTag('ul') . "\n";
            echo Html::endTag('li') . "\n";
        }
    }

    echo Html::beginTag('li');
    echo Html::encode($category->name);
    $depth = $category->depth;
}

for ($i = $depth; $i; $i--) {
    echo Html::endTag('li') . "\n";
    echo Html::endTag('ul') . "\n";
}*/

/*$root = Category::findOne(['name' => 'Provinsi']);

// We need to find our children. We don't do this lazily because it can be
// advantageous to control when it happens. You may wish to provide a
// $depth limit to speed up queries even more.
$depth = 2; // This will limit to countries & states only for example
$root->children($depth)->all();

// We can now loop through our children
foreach ($root->children()->all() as $category)
{
    echo "<h3>{$category->name}</h3>";

    if (count($category->children()->all()))
    {
        echo "<p>{$category->name} has the following states registered with our system:</p>";

        echo "<ul>";

        foreach ($category->children()->all() as $state)
        {
            echo "<li>{$state->name}</li>";
        }

        echo "</ul>";
    }
}*/



$this->registerCssFile('../jstree/themes/default/style.min.css');
$this->registerJsFile('../admin/jstree/jstree.min.js', ['depends' => [\yii\web\JqueryAsset::className()]]);
$this->registerJs("
$('#jstree_demo_div')
.on('changed.jstree', function (e, data) {
    var i, j, r = [];
    for(i = 0, j = data.selected.length; i < j; i++) {
      r.push(data.instance.get_node(data.selected[i]).text);
    }
    $('#category-parent').val(r.join(', '));
  })
.jstree();
");
?>
