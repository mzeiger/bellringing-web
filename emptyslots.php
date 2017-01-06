<?php

define("lb", "<br/>");
define("tab", "---- ");
define("dtab", "-------- ");

require_once 'inc/db_connect.php';

    // first get start and end date of project

    $start_dt = $_POST["start_dt"];
    $end_dt = $_POST["end_dt"];

    // first get an array of locations
    $sql = "select * from locations order by id";
    $query = $dbh->prepare($sql);
    $query->execute();
    $locations = $query->fetchAll();

    // first get an array of timeslots
    $sql = "select * from timeslots order by id";
    $query = $dbh->prepare($sql);
    $query->execute();
    $timeslots = $query->fetchAll();

    $sql ="SELECT * FROM v_schedule where dt = ? and location = ? and slot = ?";
    $query = $dbh->prepare($sql);

    echo showEmptyDays($query, $locations, $timeslots, $start_dt, $end_dt);

    return ;

    function showEmptyDays($query, $locations, $timeslots, $startDt, $endDt)
    {
       $date = new DateTime($startDt);
       $end_date = new DateTime($endDt);

       $last_date = new DateTime('0000-00-00');

       echo "Empty timeslots from " . $date->format('D m-d-Y') . " to " . $end_date->format('D m-d-Y'). lb . lb;
       while ($date <= $end_date)
       {
           $last_location = 0;
           $last_timeslot = 0;
           $counts = 0;
           for ($i = 1; $i <= count($locations); $i++)
           {
               for ($j = 1; $j <= count($timeslots); $j++)
               {
                   $query->execute(array($date->format('Y-m-d'), $i, $j ));
                   if ($query->rowCount() == 0)
                   {
                       if ($last_date->format('m-d-Y') != $date->format('m-d-Y'))
                       {
                           echo lb . $date->format('D m-d-Y') . lb;
                           $last_date = $date;
                       }
                       if ($last_location != $i)
                       {
                           echo tab . $locations[$i -1 ]["location_name"] . lb;
                           $last_location = $i;
                       }
                       if ($last_timeslot != $j) {
                           echo dtab . $timeslots[$j - 1]["time"] . lb;
                           $last_timeslot = $j;
                           $counts++;
                       }
                       //echo $date->format("D") . " " . $date->format('m-d-Y') . "   " . $locations[$i -1 ]["location_name"] . "    " .   $timeslots[$j - 1]["time"] . "<br/>";
                   }
               }
           }
           echo "\n" ;
           if ($counts == 0)
           {
                echo $date->format('D m-d-Y') . lb;
                echo tab . "No free time slots" . lb;

           }
           $date->add(new DateInterval('P1D'));
           $last_date = new DateTime('0000-00-00');
       }
     }

?>