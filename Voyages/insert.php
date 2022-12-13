<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";

$id = $_POST['id'];
$dt = $_POST['dt'];
$cid = $_POST['cid'];
$sid = $_POST['sid'];
$dep = $_POST['departure'];
$dest = $_POST['dest'];

$sql_statement = "INSERT INTO voyages(voyageId, departure, destination, vDate, crewId, shipId) VALUES ('$id','$dep', '$dest', '$dt', '$cid', '$sid')";
$result = mysqli_query($db, $sql_statement);
echo "Your result is: " . $result;
?>

