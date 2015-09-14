<?php

namespace backend\controllers;

use backend\models\Category;
use yii\helpers\ArrayHelper;


class CategoryController extends \yii\web\Controller
{
    public function actionIndex()
    {
        /*$countries = new  Category(['name' => 'Provinsi']);
        $countries->makeRoot();

        $russia = new Category(['name' => 'Sumatra Barat']);
        $russia->prependTo($countries);

        $australia = new Category(['name' => 'Padang']);
        $australia->appendTo($russia);*/

        /*$indonesia = new Category(['name' => 'Surabaya']);
        $indonesia->appendTo($countries);*/

        /*$countries = Category::findOne(['name' => 'Countries']);
        $leaves = $countries->leaves()->all();

        var_dump($leaves);*/

        $model = new Category();
        return $this->render('index',[
            'model' => $model,
        ]);
    }

    public function actionCreate()
    {
        $model = new Category();
        $roots = ArrayHelper::map(Category::find()->roots()->all(), 'name', 'name');

        if($model->load(\Yii::$app->request->post())){
            $post = \Yii::$app->request->post('Category');

            if($post['parent'] == null){
                $parent = new  Category(['name' => $post['name']]);
                $parent->makeRoot();
            }else{
                $parent = Category::findOne(['name' => $post['parent']]);
                $child = new Category(['name' => $post['name']]);
                $child->appendTo($parent);
            }
        }else{
            return $this->render('create',[
                'model' => $model,
                'roots' => $roots
            ]);
        }

    }

}
