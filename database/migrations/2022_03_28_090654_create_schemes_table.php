<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSchemesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('schemes', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('scheme_type_id');
            $table->string('name');
            $table->text('description');
            $table->bigInteger('item_ref_id');
            $table->date('start_date');
            $table->date('end_date');
            $table->tinyInteger('loan_basis');
            $table->tinyInteger('subscheme')->default(0);
            $table->string('payment_in_advance');
            $table->bigInteger('preclosure_time')->nullable();
            $table->string('penalty_type')->nullable();
            $table->string('penalty')->nullable();
            $table->string('payment_basis_on')->nullable();
            $table->tinyInteger('loan_period')->nullable();
            $table->string('jewel_approval');
            $table->decimal('minimum_loan_amount', 10, 2)->default(0.0);
            $table->decimal('maximum_loan_amount', 10, 2)->default(0.0);
            $table->decimal('processing_fees', 8, 2)->default(0.0);
            $table->tinyInteger('status')->default(1);
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
        Schema::dropIfExists('schemes');
    }
}
