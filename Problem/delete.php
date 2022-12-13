<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";
// ids ne?

$ssn = $_POST['ssn'];
$id = $_POST['id'];
$sql_statement = "DELETE FROM problems WHERE ssn = $ssn AND voyageId = $id";
$result = mysqli_query($db, $sql_statement);
echo "Your result is " . $result;

?>
