<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";
// ids ne?

$exp = $_POST['exp'];
$sql_statement = "SELECT * FROM technician WHERE YearsOfExperience >= $exp";
$result = mysqli_query($db, $sql_statement);
while($row = mysqli_fetch_assoc($result)) { // Iterating the result
    $id = $row['technicianId'];
    $exp = $row['YearsOfExperience'];
    echo $id . " " . $exp . " " . "<br>";
}

?>
