<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

## About

Simple Laravel projects, user has multiple posts. Each user can manage their posts. Use can only like post once

## requirements

Before you begin, ensure you have met the following requirements:

-   **PHP:** Your server should have PHP installed. You can download it from [php.net](https://www.php.net/).

-   **Composer:** Make sure you have Composer installed on your system. If not, you can download it from [getcomposer.org](https://getcomposer.org/).

-   **MySQL Database:** You need a MySQL database to run this project. If you don't have MySQL installed, you can download it from [MySQL Downloads](https://dev.mysql.com/downloads/).

-   **Web Server:** You can use Apache or Nginx as your web server to host the Laravel application.

## Installation

Follow these steps to set up and run the project locally:

1. Clone the repository:

    ```bash
    git clone https://github.com/OthmanSemlali/LARAVEL_CRUD.git
    ```

2. Navigate to the project directory:

    ```bash
    cd LARAVEL_CRUD
    ```

3. Install project dependencies

    ```bash
    composer install
    ```
4. Update .env file
    -   [You can use my Existing tables](https://github.com/OthmanSemlali/LARAVEL_CRUD/blob/main/laravel_crud.sql).

5. Generate the application key:
    ```bash
    php artisan key:generate
    ```

6. Run the database migrations and seed the database
    ```bash
    Run the database migrations and seed the database
    ```

7.Start dev server
    ```bash
    php artisan serve
    ```
