<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";
// ids ne?
if(!empty($_POST['ssn']))
{
    $ssn = $_POST['ssn'];
    $sql_statement = "DELETE FROM passengers WHERE ssn = $ssn";
    $result = mysqli_query($db, $sql_statement);
    echo "Your result is " . $result;
}

?>
