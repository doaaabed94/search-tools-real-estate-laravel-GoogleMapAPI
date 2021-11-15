<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProjectNumberOfRoomsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('project_number_of_rooms', function (Blueprint $table) {
            $table->id();

            $table->bigInteger('project_id')->unsigned()->nullable();
            $table->foreign('project_id')->references('id')->on('projects')->onDelete('set null');

            $table->bigInteger('number_of_rooms_id')->unsigned()->nullable();
            $table->foreign('number_of_rooms_id')->references('id')->on('number_of_rooms')->onDelete('set null');

            $table->integer('area_from')->nullable();
            $table->integer('area_to')->nullable();
            $table->integer('price_from')->nullable();
            $table->integer('price_to')->nullable();

            $table->timestamps();

            $table->unique(['project_id', 'number_of_rooms_id']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('project_number_of_rooms');
    }
}
