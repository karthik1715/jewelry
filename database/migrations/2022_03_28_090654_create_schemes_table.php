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
            $table->bigInteger('group_ref_id');
            $table->string('name');
            $table->date('start_date');
            $table->date('end_date');
            $table->tinyInteger('loan_basis');
            $table->tinyInteger('calc_method')->default(0);
            $table->tinyInteger('pay_frequency')->default(0);
            $table->tinyInteger('compound_interest')->default(0);
            $table->tinyInteger('payment_in_advance')->default(0);
            $table->tinyInteger('loyal_point')->default(0);
            $table->integer('auto_round',9)->default(0);
            $table->decimal('round_to', 5, 2)->default(0.0);
            $table->tinyInteger('round_mode')->default(0);
            $table->tinyInteger('preclosure_time')->default(0);
            $table->tinyInteger('penalty_type')->default(0);
            $table->tinyInteger('penalty')->default(0);
            $table->tinyInteger('payment_basis_on')->default(0);
            $table->tinyInteger('loan_period')->default(0);
            $table->decimal('minimum_loan_amount', 10, 2)->default(0.0);
            $table->decimal('maximum_loan_amount', 10, 2)->default(0.0);
            $table->tinyInteger('process_feestype')->default(0);
            $table->decimal('processing_fees', 8, 2)->default(0.0);
            $table->decimal('lending_rate', 10, 2)->default(0.0);
            $table->integer('loan_approval',9)->default(0);
            $table->text('description')->nullable();
            $table->tinyInteger('subscheme')->default(0);
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
