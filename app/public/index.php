<?php

require_once __DIR__ . '/../src/Database.php';

try {
    $pdo = Database::getConnection();

    $stmt = $pdo->prepare("
        INSERT INTO team (name, city, stadium, founded_year)
        VALUES (:name, :city, :stadium, :year)
    ");

    $stmt->execute([
        ':name'    => 'Real Madrid',
        ':city'    => 'Madrid',
        ':stadium' => 'Santiago Bernabeu',
        ':year'    => 1902,
    ]);

    $newId = $pdo->lastInsertId();

    $stmt  = $pdo->query("SELECT * FROM team");
    $teams = $stmt->fetchAll();

    echo "<ul>";
    foreach ($teams as $team) {
        echo "<li>{$team['id']} — {$team['name']} ({$team['city']})</li>";
    }
    echo "</ul>";

    $stmt = $pdo->prepare("
        UPDATE team
        SET city = :city
        WHERE id = :id
    ");

    $stmt->execute([
        ':city' => 'Kyiv',
        ':id'   => $newId,
    ]);

    $stmt = $pdo->prepare("DELETE FROM team WHERE id = :id");
    $stmt->execute([':id' => $newId]);

} catch (PDOException $e) {
    echo $e->getMessage();
}