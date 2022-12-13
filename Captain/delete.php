<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";
// ids ne?

$captainid = $_POST['captainid'];
$sql_statement = "DELETE FROM captain WHERE captainId = $captainid";
$result = mysqli_query($db, $sql_statement);
echo "Your result is " . $result;

?>
