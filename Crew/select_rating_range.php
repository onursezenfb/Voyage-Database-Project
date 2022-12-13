<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";
// ids ne?

$rating = $_POST['rating'];
$rating2 = $_POST['rating2'];
$sql_statement = "SELECT * FROM crew WHERE crewRating >= '$rating' AND crewRating <= '$rating2'";
$result = mysqli_query($db, $sql_statement);

while($row = mysqli_fetch_assoc($result)) { // Iterating the result
    $crewid = $row['crewId'];
    $num = $row['numberOfEmployees'];
    $crating = $row['crewRating'];
    $captainId = $row['captainId'];
    echo $crewid . " " . $num . " " . $crating . " " . $captainId . "<br>";
}

?>
