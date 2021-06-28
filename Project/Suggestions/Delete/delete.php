<?php

$servername = "localhost:3308";
$username = "root";
$password = "";
$dbname = "Project";

$conn = new mysqli($servername, $username,'',$dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}else
{ 
//echo "Connected successfully";
}

if(isset($_GET['edit_id'])){
 $sql = "DELETE FROM Suggestions WHERE Phone=" .$_GET['edit_id'];
 $result = mysqli_query($conn, $sql);
 

}

?>
<!doctype html>
<html>
<head>
<link rel="shortest icon" type="text/css" href="image/bomb2.jpg">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>


<body>

<h1 align="center">Deleted RECORD</h1>

<table border="1" align="center" style="line-height:25px;">
<tr>
<th>First Name</th>
<th>Last Name</th>
<th>Email</th>
<th>Enter your Suggestion </th>
<th>Mobile Number</th>


</tr>
<?php
$sql = "SELECT * FROM Suggestions";
$result = $conn->query($sql);
if($result->num_rows > 0){
 while($row = $result->fetch_assoc()){
 ?>
 <tr>

<td> <?php  echo $row['FName'];?></td>
<td> <?php  echo $row['LName'];?></td>
<td> <?php  echo $row['Email'];?></td>
<td> <?php  echo $row['Suggestion'];?></td>
<td> <?php  echo $row['Phone'];?></td>

 </tr>
 <?php
 }
 }
 else
 {
 ?>
 <tr>
 <th colspan="2">There's No data found!!!</th>
 </tr>
 <?php
}
?>
</table>

</body>
</html>