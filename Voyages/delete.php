<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";
// ids ne?


$id = $_POST['id'];
$sql_statement = "DELETE FROM voyages WHERE voyageId = $id";
$result = mysqli_query($db, $sql_statement);
echo "Your result is " . $result;

?>
