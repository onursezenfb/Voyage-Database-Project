<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";

$id = $_POST['id'];
$name = $_POST['name'];
$dt = $_POST['dt'];
$rating = $_POST['rating'];
$sql_statement = "INSERT INTO ships(shipId, name, shipRating, constructionDate) VALUES ('$id','$name', $rating, $dt)";

$result = mysqli_query($db, $sql_statement);
echo "Your result is: " . $result;
?>

