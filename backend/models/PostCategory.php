<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "post_category".
 *
 * @property integer $id
 * @property integer $id_posts
 * @property integer $id_category
 */
class PostCategory extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'post_category';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_posts'], 'required'],
            [['id_posts', 'id_category'], 'integer']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'id_posts' => 'Id Posts',
            'id_category' => 'Id Category',
        ];
    }
}
