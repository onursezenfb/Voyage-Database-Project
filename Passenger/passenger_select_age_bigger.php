<?php

include "/Applications/XAMPP/xamppfiles/htdocs/Voyage/config.php";
// ids ne?
if(!empty($_POST['age']))
{
    $age = $_POST['age'];
    $sql_statement = "SELECT * FROM passengers WHERE age > $age";
    $result = mysqli_query($db, $sql_statement);
    while($row = mysqli_fetch_assoc($result)) { // Iterating the result
        $ssn = $row['ssn'];
        $pname = $row['pname'];
        $gender = $row['gender'];
        $age = $row['age'];
        echo $ssn . " " . $pname . " " . $gender . " " . $age . "<br>";
    }
}
else{
    echo "You didn't enter any gender!";
}
?>
