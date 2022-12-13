<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";


$id = $_POST['id'];
$sql_statement = "DELETE FROM employee WHERE employeeId = $id";
$sql_statement2 = "DELETE FROM technician WHERE technicianId = $id";
$sql_statement3 = "DELETE FROM servant WHERE servantId = $id";
$result = mysqli_query($db, $sql_statement);
mysqli_query($db, $sql_statement2);
mysqli_query($db, $sql_statement3);
echo "Your result is " . $result;

?>
