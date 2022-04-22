<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGoldPuritiesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('gold_purities', function (Blueprint $table) {
            $table->id();
            $table->integer('group_id');
            $table->tinyInteger('karat_type');
            $table->integer('hallmark');
            $table->decimal('purity', 10, 2)->default(0.0); 
            $table->tinyInteger('status')->default(1); 
            $table->integer('created_by');
            $table->integer('updated_by')->nullable();
            $table->integer('deleted_by')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('gold_purities');
    }
}
