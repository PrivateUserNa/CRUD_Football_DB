<?php

require_once __DIR__ . '/../src/Database.php';

try {
    $pdo = Database::getConnection();

    echo "<h2>✅ PDO успішно підключений!</h2>";

    $stmt = $pdo->query("SELECT * FROM team");
    $teams = $stmt->fetchAll();

    echo "<h3>Список команд:</h3>";
    echo "<ul>";

    foreach ($teams as $team) {
        echo "<li>{$team['name']} ({$team['city']})</li>";
    }

    echo "</ul>";

} catch (PDOException $e) {
    echo "Помилка підключення: " . $e->getMessage();
}