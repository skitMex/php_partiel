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
<body>
<h1>TOp manga</h1>

<ul class="manga">

    <?php foreach ($resmanga as $manga): ?>
        <li>
            <a href="index.php"><?= htmlspecialchars($manga['titre']) ?></a>
            <p><?= htmlspecialchars($manga['annee de pub']) ?></p>
        </li>
    <?php endforeach; ?>
</ul>
<?php
 echo "<h2>".$sqlmanga['titre']"</h2>";
foreach ($resmanga as $manga):
    echo "<p>".$personnage['description']."</p>";
    echo "<a href='manga.php?$personnage[id]'> details</a>";
endforeach; ?>
 