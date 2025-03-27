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

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestion des mangas</title>
</head>
<body>
<?php foreach ($resmanga as $manga): ?>
echo "<h1>"<?=.$_GET['description']." ".$_GET['auteur']"".$_GET['annee de publication']"".$_GET['personnage']"?></h1>";

echo "<p>"<?=.$sqlAuteur['nom'] .$manga['annee de pub'].?>"</p>";

echo "<p>"<?=.$manga['description']"?></p>";
<?php endforeach; ?>
    echo "<"h2">Personnages</h2>";
   <?php foreach ($resPerso as $personnage): ?>
        echo "<p>"<?=.$personnage['nom']."?></p>";
   <?php endforeach; ?>
?>

<?php
    echo "<h1>".$sqlPerso['nom']"</h1>"; ?>
    <?php foreach ($resPerso as $personnage): ?>
        echo "<p>".$personnage['description']."</p>";
    echo "<a href='index.php'> Retoru a l'acceuil</a>";

    <?php endforeach; ?>

