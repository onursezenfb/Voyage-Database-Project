<?php 

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php"; 

$ssn = $_POST['ssn'];
$pname = $_POST['pname'];
$gender = $_POST['gender'];
$age = $_POST['age'];
$sql_statement = "INSERT INTO passengers(ssn, pname, gender, age) VALUES ($ssn,'$pname','$gender',$age)";

$result = mysqli_query($db, $sql_statement);
echo "Your result is: " . $result;



?>
