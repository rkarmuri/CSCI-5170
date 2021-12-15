<!DOCTYPE html>
<html>

<head>
    <title>Book information</title>
</head>

<body>
    <center>
        <?php
        $servername = "localhost";
        $username = "root";
        $password = "Project7273@";
        $db = "Library";

        // get the post records
        $Genre = $_REQUEST['Genre'];


        // Create connection
        $conn = new mysqli($servername, $username, $password, $db);


        // Check connection
        if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
        }
?>
<table border="1" align="center">
<tr>
  <td>Genre</td>
</tr>

<?php

$query = mysqli_query($conn, "Select b.Genre,count(*) as c from Books b, Transactions t where t.ISBN=b.ISBN group by b.Genre order by c desc limit 1")
   or die (mysqli_error($conn));

echo "<h3>The most popular genre is</h3> ";
while ($row = mysqli_fetch_array($query)) {
  echo
   "<tr>
    <td>{$row['Genre']}</td>
   </tr>";
}

?>

</table>
    </center>
</body>

</html>


