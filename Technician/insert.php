<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";



$id = $_POST['id'];
$exp = $_POST['exp'];
$type = $_POST['type'];

$sql_statement = "INSERT INTO technician(technicianId, YearsOfExperience, machine) VALUES ('$id', '$exp', '$type')";
$sql_statement2 = "INSERT INTO employee(employeeId, yearsOfExperience) VALUES ('$id', '$exp')";

$result = mysqli_query($db, $sql_statement);
$result2 = mysqli_query($db, $sql_statement2);
echo "Your result is: " . $result . "<br>";
echo "Your result is: " . $result2;
?>
