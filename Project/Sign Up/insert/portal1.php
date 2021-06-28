<?php
$a= $_POST['a'];
$b= $_POST['b'];
$c= $_POST['c'];
$d= $_POST['d'];
$e= $_POST['e'];
$f= $_POST['f'];
$g= $_POST['g'];



$servername = "localhost:3308";
$username = "root";
$password = "";
$dbname = "Project";

// Create connection
$conn = new mysqli($servername, $username,'',$dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
{ 
echo "Connected successfully";
}

$q="INSERT INTO signUp VALUES('$a','$b','$c','$d','$e','$f','$g')";
if ($conn->query($q) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $q . "<br>" . $conn->error;
}

?>