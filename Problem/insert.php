<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";

$ssn = $_POST['ssn'];
$id = $_POST['id'];
$dt = $_POST['dt'];
$desc = $_POST['desc'];

$sql_statement = "INSERT INTO problems(ssn, voyageId, problemDate, problemDescription) VALUES ('$ssn','$id', '$dt', '$desc')";
$result = mysqli_query($db, $sql_statement);
echo "Your result is: " . $result;
?>

