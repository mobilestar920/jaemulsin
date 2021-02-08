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
            $table->string('code')->unique();
            $table->string('email')->unique();
            $table->string('phone')->unique();
            $table->string('user_name')->unique();
            $table->string('device_id')->unique();
            $table->integer('gender')->default(1);
            $table->string('note')->nullable();
            $table->string('province')->nullable();
            $table->string('city')->nullable();
            $table->string('street')->nullable();
            $table->string('address1')->nullable();
            $table->string('address2')->nullable();
            $table->timestamp('phone_verified_at')->nullable();
            $table->string('password');
            $table->timestamp('expire_at')->nullable();
            $table->tinyInteger(('is_blocked'))->default(0);
            $table->rememberToken();
            $table->timestamps();
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
