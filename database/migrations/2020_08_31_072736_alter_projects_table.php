<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterProjectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('projects', function (Blueprint $table) {
            $table->integer('cash_discount')->nullable();
            $table->enum('prop_status', ['ready', 'under_construction'])->nullable();
            $table->date('delivery_date')->nullable();
            $table->text('looks')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('projects', function (Blueprint $table) {
            $table->dropColumn('cash_discount');
            $table->dropColumn('prop_status');
            $table->dropColumn('delivery_date');
            $table->dropColumn('looks');
        });
    }
}
