<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddLinkFieldToProject extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('projects', function (Blueprint $table) {
            $table->string('link')->nullable();
            DB::statement("ALTER TABLE projects CHANGE COLUMN project_type project_type ENUM('resident', 'hotel', 'invest')");
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
            $table->dropColumn('link');
            DB::statement("ALTER TABLE projects CHANGE COLUMN project_type project_type ENUM('resident', 'hotel')");
        });
    }
}
