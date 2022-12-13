<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";


$id = $_POST['id'];
$sql_statement = "DELETE FROM servant WHERE technicianId = $id";
$result = mysqli_query($db, $sql_statement);
echo "Your result is " . $result;

?>
