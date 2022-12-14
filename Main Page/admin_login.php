<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php"; 

$username = $_POST['user'];
$password = $_POST['ps'];
if(($username == "admin") && ($password == "1234")){
    include 'admin_panel.html';
}
else{
    include 'admin_login_wrong.html';
}
?>
