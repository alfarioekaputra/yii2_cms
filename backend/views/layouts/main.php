<?php

/* @var $this \yii\web\View */
/* @var $content string */

use backend\assets\AppAsset;
use mdm\admin\components\MenuHelper;
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use common\widgets\Alert;
use yii\widgets\Breadcrumbs;
use Zelenin\yii\SemanticUI\collections\Menu;
use Zelenin\yii\SemanticUI\Elements;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>

<div class="wrap">
    <?php

    if (Yii::$app->user->isGuest) {
        $menuItems[] = ['label' => 'Login', 'url' => ['/site/login']];
    } else {
      $menuItems[] =   [
            'label' => Elements::input(\yii\helpers\Html::input('text', null, null, ['placeholder' => 'search'])),
            'encode' => false
        ];
        $menuItems[] = [
            'label' => 'Logout (' . Yii::$app->user->identity->username . ')',
            'url' => ['/site/logout'],
            'options' => ['data-method' => 'post']
        ];
    }

    echo Menu::widget([
        'inverted' => true,
        'fixed' => true,
        'items' => MenuHelper::getAssignedMenu(Yii::$app->user->id),
        'rightMenuItems' =>
            $menuItems,


    ]);
    ?>

    <div class="container">
        <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
        <?= Alert::widget() ?>
        <?= $content ?>
    </div>
</div>

<footer class="footer">
    <div class="container">
        <p class="pull-left">&copy; My Company <?= date('Y') ?></p>

        <p class="pull-right"><?= Yii::powered() ?></p>
    </div>
</footer>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
