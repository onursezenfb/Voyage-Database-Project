<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";
// ids ne?

$rating = $_POST['rating'];
$sql_statement = "SELECT * FROM ships WHERE shipRating >= $rating";
$result = mysqli_query($db, $sql_statement);
while($row = mysqli_fetch_assoc($result)) { // Iterating the result
    $id = $row['shipId'];
    $name = $row['name'];
    $rating = $row['shipRating'];
    $dt = $row['constructionDate'];
    echo $id . " " . $name . " " . $rating . " " . $dt . " " . "<br>";
}

?>
