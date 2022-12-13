<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php"; 

$eid = $_POST['eid'];
$cid = $_POST['cid'];
$dt = $_POST['dt'];
$sql_statement = "INSERT INTO Works_In(employeeId, crewId, since) VALUES ('$eid','$cid','$dt')";

$result = mysqli_query($db, $sql_statement);
echo "Your result is: " . $result;
?>

