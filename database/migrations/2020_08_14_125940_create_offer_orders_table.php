<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOfferOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('offer_orders', function (Blueprint $table) {
            $table->id();

            $table->bigInteger('responsilble_id')->unsigned()->nullable();
            $table->foreign('responsilble_id')->references('id')->on('users')->onDelete('set null');

            $table->string('client_name');

            $table->enum('prop_type', ['villa', 'duplex', 'land', 'store', 'office']);
            
            $table->bigInteger('region_id')->unsigned()->nullable();
            $table->foreign('region_id')->references('id')->on('regions')->onDelete('set null');

            $table->bigInteger('number_of_rooms_id')->unsigned()->nullable();
            $table->foreign('number_of_rooms_id')->references('id')->on('number_of_rooms')->onDelete('set null');

            $table->enum('prop_status', ['ready', 'under_construction', 'ready_in_6_months'])->nullable();

            $table->integer('expected_price')->nullable();
            $table->enum('payment', ['cash', 'install', 'cash_install'])->nullable();

            $table->enum('look', ['sea', 'city', 'forest', 'bosphorus'])->nullable();

            $table->string('nationality')->nullable();

            $table->enum('interested_in_turkish_citizenship', ['yes', 'no'])->nullable();

            $table->enum('purpose_of_purchase',['investment','residence_investment','family_house','vacationing'])->nullable();

            $table->enum('urgent', ['yes', 'no', 'normal'])->nullable();

            $table->text('notes')->nullable();

            $table->enum('checked', ['yes', 'no'])->default('no');

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
        Schema::dropIfExists('offer_orders');
    }
}
