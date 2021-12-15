<!DOCTYPE html>
<html>

<head>
    <title>Insert Page page</title>
</head>

<body>
    <center>
        <?php
        $servername = "localhost";
        $username = "root";
        $password = "Project7273@";
        $db = "Library";

        // get the post records
        $patronID = $_REQUEST['patronID'];
        $pFirstName = $_REQUEST['pFirstName'];
        $pLastName = $_REQUEST['pLastName'];
        $Birthday = $_REQUEST['Birthday'];

        // Create connection
        $conn = new mysqli($servername, $username, $password, $db);


        // Check connection
        if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
        }

        $sql = "INSERT INTO Patrons  VALUES ('$patronID',
            '$pFirstName','$pLastName','$Birthday')";

        if(mysqli_query($conn, $sql)){
            echo "<h3>Data is stored in our database successfully."
                . " Please browse your php my admin"
                . " to view the updated data</h3>";

            echo nl2br("\nPatronID:$patronID\n First Name:$pFirstName\n "
                . "Last Name:$pLastName\n Birthday:$Birthday");
				        } else{
            echo "ERROR: Hush! Sorry $sql. "
                . mysqli_error($conn);
        }

        // Close connection
        mysqli_close($conn);
        ?>
    </center>
</body>

</html>
