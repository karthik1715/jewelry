<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGoldLoansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('gold_loans', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('customer_id');
            $table->string('loan_no', 50);
            $table->string('coapplicant_id');
            $table->string('nominee_name')->nullable();
            $table->string('nominee_relation')->nullable();
            $table->date('nominee_dob')->nullable();
            $table->tinyInteger('nominee_age')->nullable();
            $table->bigInteger('scheme_ref_id');
            $table->bigInteger('payment_ref_id');
            $table->tinyInteger('tenure');
            $table->tinyInteger('interest_rate');
            $table->tinyInteger('frequency')->nullable();
            $table->date('loan_date')->nullable();
            $table->decimal('loan_amount', 10, 2)->default(0.0); 
            $table->decimal('sanction_amount', 10, 2)->default(0.0); 
            $table->string('interest_type')->nullable();
            $table->decimal('document_chrages', 10, 2)->default(0.0); 
            $table->string('loan_status', 50)->default('pending'); 
            $table->bigInteger('created_by');
            $table->bigInteger('approved_by')->nullable();
            $table->dateTime('approved_at')->nullable();
            $table->bigInteger('rejected_by')->nullable();
            $table->dateTime('rejected_at')->nullable();
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
        Schema::dropIfExists('gold_loans');
    }
}
