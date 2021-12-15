<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<body>

<?php
$servername = "localhost";
$username = "root";
$password = "Project7273@";
$db = "Library";

// Create connection
$conn = new mysqli($servername, $username, $password, $db);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
?>

<table border="1" align="center">
<tr>
  <td>patronID</td>
  <td>pFirstName</td>
  <td>pLastName</td>
  <td>Birthday</td>
</tr>

<?php

$query = mysqli_query($conn, "SELECT * FROM Patrons")
   or die (mysqli_error($conn));

while ($row = mysqli_fetch_array($query)) {
  echo
   "<tr>
    <td>{$row['patronID']}</td>
    <td>{$row['pFirstName']}</td>
    <td>{$row['pLastName']}</td>
    <td>{$row['Birthday']}</td>
	</tr>";
}

?>

</table>
</body>
</html>



