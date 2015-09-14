<?php
/**
 * Created by PhpStorm.
 * User: rio
 * Date: 13/09/15
 * Time: 19:09
 */

namespace backend\models;

use creocoder\nestedsets\NestedSetsQueryBehavior;

class CategoryQuery extends \yii\db\ActiveQuery
{

    public function behaviors() {
        return [
            NestedSetsQueryBehavior::className(),
        ];
    }
}