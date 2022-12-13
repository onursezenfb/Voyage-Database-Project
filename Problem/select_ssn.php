<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";
// ids ne?
$ssn = $_POST['ssn'];

$sql_statement = "SELECT * FROM problems WHERE ssn = '$ssn'";

$result = mysqli_query($db, $sql_statement);

while($row = mysqli_fetch_assoc($result)) { // Iterating the result
    $ssn = $row['ssn'];
    $voyageId = $row['voyageId'];
    $dt = $row['problemDate'];
    $desc = $row['problemDescription'];
    echo $ssn . " " . $voyageId . " " . $dt . " " . $desc . "<br>";
}

?>
