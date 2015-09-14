<?php

use yii\db\Schema;
use yii\db\Migration;

class m150913_111942_create_category_table extends Migration
{
    public function up()
    {
      $this->createTable('{{%category}}', [
          'id' => Schema::TYPE_PK,
          'tree' => Schema::TYPE_INTEGER,
          'lft' => Schema::TYPE_INTEGER . ' NOT NULL',
          'rgt' => Schema::TYPE_INTEGER . ' NOT NULL',
          'depth' => Schema::TYPE_INTEGER . ' NOT NULL',
          'name' => Schema::TYPE_STRING . ' NOT NULL',
          'slug' => Schema::TYPE_STRING
      ]);
    }

    public function down()
    {
        echo "m150913_111942_create_category_table cannot be reverted.\n";

        return false;
    }

    /*
    // Use safeUp/safeDown to run migration code within a transaction
    public function safeUp()
    {
    }

    public function safeDown()
    {
    }
    */
}
