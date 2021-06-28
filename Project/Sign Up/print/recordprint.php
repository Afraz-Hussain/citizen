<?php
$servername = "localhost:3308";
$username = "root";
$password = "";
$dbname = "Project";

$conn = new mysqli($servername, $username,'',$dbname);


if ($conn->connect_error) {
	
    die("Connection failed: " . $conn->connect_error);
}
else
{ 
//echo "Connected Database successfully";
}

?>
<!doctype html>
<html>
<head>

</head>
<body>

<h1 align="center">*************Portal RECORD Print **********</h1>
<h2 align="center">*************Sign Up Data Record **********</h2>

<table border="1" align="center" style="line-height:25px;">
<tr>
<th>First Name</th>
<th>Last Name</th>
<th>Email</th>
<th>Password</th>
<th>Address</th>
<th>Phone</th>
<th>CNIC Number</th>

</tr>
<?php
$sql = "SELECT * FROM signUp";
$result = $conn->query($sql);
if($result->num_rows > 0){
 while($row = $result->fetch_assoc()){
 ?>
 <tr>

<td> <?php  echo $row['FName'];?></td>
<td> <?php  echo $row['LName'];?></td>
<td> <?php  echo $row['Email'];?></td>
<td> <?php  echo $row['Password'];?></td>
<td> <?php  echo $row['Addres'];?></td>
<td> <?php  echo $row['Phone'];?></td>
<td> <?php  echo $row['CNIC'];?></td>

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