<!DOCTYPE html>
<html>

<head>
    <title>Insert employee data</title>
</head>

<body>
    <center>
        <?php
        $servername = "localhost";
        $username = "root";
        $password = "Project7273@";
        $db = "Library";

        // get the post records
        $empID = $_REQUEST['empID'];
        $empFirst = $_REQUEST['empFirst'];
        $empLast = $_REQUEST['empLast'];

        // Create connection
        $conn = new mysqli($servername, $username, $password, $db);


        // Check connection
        if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
        }

        $sql = "INSERT INTO Employee VALUES ('$empID',
            '$empFirst','$empLast')";

        if(mysqli_query($conn, $sql)){
            echo "<h3>Data is stored in our database successfully."
                . " Please browse your php my admin"
                . " to view the updated data</h3>";

            echo nl2br("\nEmployee ID:$empID\n First Name:$empFirst\n "
                . "Last Name:$empLast");
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


