<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";
// ids ne?
$id = $_POST['id'];

$sql_statement = "SELECT * FROM voyages WHERE crewId = '$id'";

$result = mysqli_query($db, $sql_statement);

while($row = mysqli_fetch_assoc($result)) { // Iterating the result
    $voyageId = $row['voyageId'];
    $dt = $row['vDate'];
    $dep = $row['departure'];
    $destination = $row['destination'];
    $cid = $row['crewId'];
    $sid = $row['shipId']
    echo $voyageId . " " . $dep . " " . $destination . " " . $dt . " " . $cid . " " . $sid . "<br>";
}


?>
