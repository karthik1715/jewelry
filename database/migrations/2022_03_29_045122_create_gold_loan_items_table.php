<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGoldLoanItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('gold_loan_items', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('gold_loan_id');
            $table->bigInteger('group_id');
            $table->bigInteger('item_id');
            $table->tinyInteger('noof_items');
            $table->string('gold_type');
            $table->tinyInteger('purity_in_karrot');
            $table->decimal('gross_weight', 8, 2);
            $table->decimal('stone_weight', 8, 2)->default(0.0);
            $table->decimal('net_weight', 10, 2)->default(0.0);
            $table->decimal('current_gold_rate', 10, 2)->default(0.0);
            $table->decimal('lending_gold_rate', 10, 2)->default(0.0);
            $table->decimal('net_weight_value', 10, 2)->default(0.0);
            $table->string('remarks')->nullable();
            $table->text('item_image');
            $table->string('item_image_path');
            $table->bigInteger('created_by');
            $table->bigInteger('updated_by')->nullable();
            $table->bigInteger('deleted_by')->nullable();
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
        Schema::dropIfExists('gold_loan_items');
    }
}
