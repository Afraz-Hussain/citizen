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

<h1 align="center">Suggestions Record Update</h1>

<table border="1" align="center" style="line-height:25px;">
<tr>
<th>First Name</th>
<th>Last Name</th>
<th>Email</th>
<th>Enter your Suggestions</th>
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

 <td><a href="edit.php?edit_id=<?php echo $row['Phone']; ?>" alt="edit" >Edit/update</a></td>
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