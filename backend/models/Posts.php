<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "posts".
 *
 * @property integer $id
 * @property string $title
 * @property string $content
 * @property string $source
 * @property string $status
 * @property string $slug
 * @property string $created_by
 * @property string $created_time
 * @property string $updated_by
 * @property string $update_time
 *
 * @property PostPhoto[] $postPhotos
 * @property PostTag[] $postTags
 */
class Posts extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'posts';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title', 'content', 'slug'], 'required'],
            [['content', 'status'], 'string'],
            [['created_time', 'update_time'], 'safe'],
            [['title'], 'string', 'max' => 255],
            [['source', 'created_by', 'updated_by'], 'string', 'max' => 45],
            [['slug'], 'string', 'max' => 100]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'content' => 'Content',
            'source' => 'Source',
            'status' => 'Status',
            'slug' => 'Slug',
            'created_by' => 'Created By',
            'created_time' => 'Created Time',
            'updated_by' => 'Updated By',
            'update_time' => 'Update Time',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPostPhotos()
    {
        return $this->hasMany(PostPhoto::className(), ['id_posts' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPostTags()
    {
        return $this->hasMany(PostTag::className(), ['id_posts' => 'id']);
    }
}
