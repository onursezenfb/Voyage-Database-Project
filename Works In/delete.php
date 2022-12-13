<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";
// ids ne?

$eid = $_POST['eid'];
$cid = $_POST['cid'];
$sql_statement = "DELETE FROM Works_In WHERE employeeId = $eid AND crewId = $cid";
$result = mysqli_query($db, $sql_statement);
echo "Your result is " . $result;

?>
