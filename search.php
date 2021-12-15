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
        $BookName = $_REQUEST['BookName'];
        $Author = $_REQUEST['Author'];
        $ISBN = $_REQUEST['ISBN'];
        $yearPublished = $_REQUEST['yearPublished'];
        $BookFormat = $_REQUEST['BookFormat'];
        $Genre = $_REQUEST['Genre'];
        $Pages = $_REQUEST['Pages'];
        $Autorenew = $_REQUEST['Autorenew'];
        $search = $_REQUEST['search'];

        // Create connection
        $conn = new mysqli($servername, $username, $password, $db);


        // Check connection
        if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
        }
?>
<table border="1" align="center">
<tr>
  <td>BookName</td>
  <td>Author</td>
  <td>ISBN</td>
    <td>yearPublished</td>
  <td>BookFormat</td>
  <td>Genre</td>
  <td>Pages</td>
  <td>Autorenew</td>
</tr>

<?php

$query = mysqli_query($conn, "SELECT * FROM Books where BookName like '%$search%'")
   or die (mysqli_error($conn));

while ($row = mysqli_fetch_array($query)) {
  echo
   "<tr>
    <td>{$row['BookName']}</td>
    <td>{$row['Author']}</td>
    <td>{$row['ISBN']}</td>
    <td>{$row['yearPublished']}</td>
    <td>{$row['BookFormat']}</td>
    <td>{$row['Genre']}</td>
    <td>{$row['Pages']}</td>
    <td>{$row['Autorenew']}</td>
   </tr>";
}

?>

</table>
</center>
</body>

</html>



