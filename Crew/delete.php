<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";
// ids ne?

$crewid = $_POST['crewid'];
$sql_statement = "DELETE FROM crew WHERE crewId = $crewid";
$result = mysqli_query($db, $sql_statement);
echo "Your result is " . $result;

?>
