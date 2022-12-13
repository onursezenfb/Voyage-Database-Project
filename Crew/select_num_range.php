<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";
// ids ne?

$num = $_POST['num'];
$num2 = $_POST['num2'];
$sql_statement = "SELECT * FROM crew WHERE numberOfEmployees >= '$num' AND numberOfEmployees <= '$num2'";
$result = mysqli_query($db, $sql_statement);

while($row = mysqli_fetch_assoc($result)) { // Iterating the result
    $crewid = $row['crewId'];
    $num = $row['numberOfEmployees'];
    $crating = $row['crewRating'];
    $captainId = $row['captainId'];
    echo $crewid . " " . $num . " " . $crating . " " . $captainId . "<br>";
}

?>
