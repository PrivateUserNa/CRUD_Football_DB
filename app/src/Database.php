<?php

class Database
{
    private static ?PDO $pdo = null;

    public static function getConnection(): PDO
    {
        if (self::$pdo === null) {

            $host = 'mysql84';   // ІМ'Я ТВОГО КОНТЕЙНЕРА MYSQL
            $db   = 'demo';      // НАЗВА БАЗИ
            $user = 'app';       // КОРИСТУВАЧ
            $pass = 'secret';    // ПАРОЛЬ
            $charset = 'utf8mb4';

            $dsn = "mysql:host=$host;dbname=$db;charset=$charset";

            self::$pdo = new PDO($dsn, $user, $pass, [
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            ]);
        }

        return self::$pdo;
    }
}