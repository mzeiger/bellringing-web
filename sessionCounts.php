
<?php
	header( "Content-Type: application/vnd.ms-excel" );
	header( "Content-disposition: attachment; filename=BellRingingSchedule.xls" );

	// print your data here. note the following:
	// - cells/columns are separated by tabs ("\t")
	// - rows are separated by newlines ("\n")

	// for example:
	// echo 'First Name' . "," . 'Last Name' . "," . 'Phone' . "\n";
	// echo 'John' . "," . 'Doe' . "," . '555-5555' . "\n";

    require_once 'inc/db_connect.php';

    $sql = $sql = "SELECT * from v_counts";
    try
    {
        $query = $dbh->prepare($sql);
        $query->execute();
        //$query->bind_result($date, $day, $name, $time, $location);
        echo "Name\tCount\n";
        $str = "";
        while ($row = $query->fetch())
        {
           $str = $str . sprintf("%s\t%s\n", $row[0], $row[1]);
        }

        echo $str;
    }
    catch (Exception $ex)
    {
        echo "Error Ocurred: " . $ex->getMessage();
        return;
    }

?>
