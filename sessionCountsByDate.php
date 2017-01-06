<?php

    require_once 'inc/db_connect.php';

    $dtStr = $_POST["asOfDate"];

    $sql = "select concat(fname,' ',lname) AS Name, count(0) AS Count from v_schedule ";
    $sql .= "where ((dt >= (select start_dt from administration)) and ";
    $sql .= "(dt <= (select end_dt from administration))) and dt <= ? ";
    $sql .= "group by ringer order by count(0) desc";

    try {

         $str = "<tr><th>Name</th><th>Count</th></tr>";
         $dt = new DateTime($dtStr);

         $query = $dbh->prepare($sql);
         $query->execute(array($dt->format("Y-m-d")));
         while ($row = $query->fetch()) {
             $str .= "<tr><td>" . $row["Name"] . "</td><td>" . $row["Count"] . "</td></tr>";
         }
         echo '<table border=1px style="border-collapse: collapse;">' . $str . "</table>";
    }
    catch (Exception $ex) {
        echo $ex->getMessage();
    }
?>