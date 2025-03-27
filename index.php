<?php
session_start();
require 'pdo.php';
$resultat = $dbPDO->prepare("SELECT * FROM manga");
$resultat ->execute();


$sqlmanga = $dbPDO-->prepare("SELECT  *FROM manga");
$sqlmanga->execute();
$resmanga = $sqlmanga->fetchAll(PDO::FETCH_ASSOC);


$sqlAuteur = $dbPDO-->prepare("SELECT *FROM auteur");
$sqlAuteur->execute();
$resAuteur = $sqlAuteur->fetchAll(PDO::FETCH_ASSOC);


$sqlPerso = $dbPDO->prepare("SELECT *FROM personnage");
$sqlPerso->execute();
$resPerso = $sqlPerso->fetchAll(PDO::FETCH_ASSOC);
?>
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestion des mangas</title>
</head>
<h1>Top manga: </h1>
<ul class="manga">
    <li id="Jojo"Jojo's part 7>
    <p> 2004</p>
    </li>
    <li id="Vagabon" vagabond>
    <p> 1998</p>
    </li>
    <li id="one piece"one piece>
    <p> 1997</p>
    </li>
    <li id="Monster"Monster>
    <p> 1994</p>
    </li>
    <li id="Berserk"Berserk>
    <p> 1989</p>
    </ul>

 