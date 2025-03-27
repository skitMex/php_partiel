<?php
session_start();
$servername = "localhost"; // Nom du serveur
$username = "username"; // Nom d'utilisateur de la base de données
$password = "password"; // Mot de passe de la base de données
$dbname = "manga"; // Nom de la base de données

try {
    $dbPDO = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // Configuration de PDO pour générer des exceptions en cas d'erreur
    $dbPDO->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connexion réussie à la base de données";
} catch(PDOException $e) {
    echo "La connexion a échouée : " . $e->getMessage();
}
?>