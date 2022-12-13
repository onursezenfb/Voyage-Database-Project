<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";
// ids ne?
$cid = $_POST['cid'];

$sql_statement = "SELECT * FROM Works_In WHERE crewId = '$cid'";

$result = mysqli_query($db, $sql_statement);

while($row = mysqli_fetch_assoc($result)) { // Iterating the result
    $eid = $row['employeeId'];
    $cid = $row['crewId'];
    $dt = $row['since'];
    echo $eid . " " . $cid . " " . $dt . "<br>";
}

?>
