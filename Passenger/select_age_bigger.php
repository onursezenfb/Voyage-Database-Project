<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";
// ids ne?

$age = $_POST['age'];
$sql_statement = "SELECT * FROM passengers WHERE age >= $age";
$result = mysqli_query($db, $sql_statement);
while($row = mysqli_fetch_assoc($result)) { // Iterating the result
    $ssn = $row['ssn'];
    $pname = $row['pname'];
    $gender = $row['gender'];
    $age = $row['age'];
    echo $ssn . " " . $pname . " " . $gender . " " . $age . "<br>";
}

?>
