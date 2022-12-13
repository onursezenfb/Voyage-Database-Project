<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";
// ids ne?
$id = $_POST['id'];

$sql_statement = "SELECT * FROM problems WHERE voyageId = '$id'";

$result = mysqli_query($db, $sql_statement);

while($row = mysqli_fetch_assoc($result)) { // Iterating the result
    $ssn = $row['ssn'];
    $voyageId = $row['voyageId'];
    $dt = $row['problemDate'];
    $desc = $row['problemDescription'];
    echo $ssn . " " . $voyageId . " " . $dt . " " . $desc . "<br>";
}

?>
