<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCustomersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('customers', function (Blueprint $table) {
            $table->id();
            $table->string('customer_code', 50);
            $table->string('name');
            $table->tinyInteger('gender');
            $table->date('dob')->nullable();
            $table->tinyInteger('age')->default(0);
            $table->bigInteger('phone_no')->nullable()->unique();
            $table->string('email')->nullable()->unique();
            $table->text('address')->nullable();
            $table->tinyInteger('city_id');
            $table->tinyInteger('state_id');
            $table->integer('country_id');
            $table->string('postal_code');
            $table->string('nominee_name')->nullable();
            $table->string('nominee_relation')->nullable();
            $table->date('nominee_dob')->nullable();
            $table->tinyInteger('nominee_age')->nullable();
            $table->string('status')->default('active');
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
        Schema::dropIfExists('customers');
    }
}
