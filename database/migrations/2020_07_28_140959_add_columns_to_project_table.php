<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnsToProjectTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('projects', function (Blueprint $table) {
            $table->enum('payment', ['cash', 'cash_install'])->default('cash');
            $table->integer('plan1_percentage')->nullable();
            $table->integer('plan1_months')->nullable();
            $table->integer('plan2_percentage')->nullable();
            $table->integer('plan2_months')->nullable();
            $table->integer('plan3_percentage')->nullable();
            $table->integer('plan3_months')->nullable();
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
            $table->dropColumn('payment');
            $table->dropColumn('plan1_percentage');
            $table->dropColumn('plan1_months');
            $table->dropColumn('plan2_percentage');
            $table->dropColumn('plan2_months');
            $table->dropColumn('plan3_percentage');
            $table->dropColumn('plan3_months');
        });
    }
}
