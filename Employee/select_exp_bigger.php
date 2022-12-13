<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";
// ids ne?

$exp = $_POST['exp'];
$sql_statement = "SELECT * FROM employee WHERE yearsOfExperience >= $exp";
$result = mysqli_query($db, $sql_statement);
while($row = mysqli_fetch_assoc($result)) { // Iterating the result
    $id = $row['employeeId'];
    $exp = $row['yearsOfExperience'];
    echo $id . " " . $exp . " " . "<br>";
}

?>
