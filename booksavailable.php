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
</tr>
<?php

$query = mysqli_query($conn, "select b.BookName from Books b,Transactions t where t.ISBN=b.ISBN and t.checked='return';")
   or die (mysqli_error($conn));

echo"<h3> Books available for check out</h3>";
while($row = mysqli_fetch_array($query)) {
   echo
   "<tr>
    <td>{$row['BookName']}</td>
 </tr>";
}


?>

</table>
    </center>
</body>

</html>