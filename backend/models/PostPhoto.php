<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "post_photo".
 *
 * @property integer $id
 * @property integer $id_posts
 * @property string $name
 * @property string $path
 * @property string $flag
 * @property string $created_by
 * @property string $created_time
 * @property string $updated_by
 * @property string $updated_time
 *
 * @property Posts $idPosts
 */
class PostPhoto extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'post_photo';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_posts', 'path'], 'required'],
            [['id_posts'], 'integer'],
            [['flag'], 'string'],
            [['created_time', 'updated_time'], 'safe'],
            [['name'], 'string', 'max' => 100],
            [['path', 'created_by', 'updated_by'], 'string', 'max' => 45]
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
            'name' => 'Name',
            'path' => 'Path',
            'flag' => 'Flag',
            'created_by' => 'Created By',
            'created_time' => 'Created Time',
            'updated_by' => 'Updated By',
            'updated_time' => 'Updated Time',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getIdPosts()
    {
        return $this->hasOne(Posts::className(), ['id' => 'id_posts']);
    }
}
