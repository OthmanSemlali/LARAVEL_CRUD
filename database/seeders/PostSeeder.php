<?php

namespace Database\Seeders;

use App\Models\Post;
use App\Models\User;
use Illuminate\Database\Seeder;

// require_once 'vendor/autoload.php';
class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        //add posts using faker library . add 10 posts. user_id is random from one of the users in users table
        $faker = \Faker\Factory::create();
        for ($i = 0; $i < 10; $i++) {
            Post::create([
                'title' => $faker->sentence,
                'description' => $faker->paragraph,
                'user_id' => User::inRandomOrder()->first()->id,
                'likes' => $faker->numberBetween(0, 100),
            ]);
        }
    }
}
