<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";
// ids ne?

$rating = $_POST['rating'];
$sql_statement = "SELECT * FROM crew WHERE crewRating >= $rating";

$result = mysqli_query($db, $sql_statement);
while($row = mysqli_fetch_assoc($result)) { // Iterating the result
    $crewid = $row['crewId'];
    $num = $row['numberOfEmployees'];
    $crating = $row['crewRating'];
    $captainId = $row['captainId'];
    echo $crewid . " " . $num . " " . $crating . " " . $captainId . "<br>";
}

?>
