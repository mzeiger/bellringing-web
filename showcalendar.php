
<?php //showcalendar.php

    $ringerId = $_POST["rgrid"];
    $allDays = $_POST["allDays"];

require_once 'inc/db_connect.php';

    // first get start and end date of project
    $sql = "select * from administration";
    $query = $dbh->prepare($sql);
    $query->execute();
    $row = $query->fetch();
    $start_dt = $row["start_dt"];
    $end_dt = $row["end_dt"];

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

    echo showDays($ringerId, $query, $locations, $timeslots, $start_dt, $end_dt);
    return;

    function showDays($ringerId, $query, $locations, $timeslots, $startDt, $endDt)
    {
       $date = new DateTime($startDt);

       $end_date = new DateTime($endDt);
       $currDate = new DateTime();
       $currDate = new DateTime($currDate->format('Y-m-d'));

       $str = '<table id="calendarTableId" class="calendarClass" border="1" cellpadding="3">';

       while ($date <= $end_date)
       {
           if ( ($_POST["allDays"] == "All") OR ($date >= $currDate) )
           {
               $str = $str . formTable($ringerId, $date, $query, $locations, $timeslots);
           }
           $date->add(new DateInterval('P1D'));
       }
       return $str . "</table>";
     }

    function formTable($ringerId, $date, $query, $locations, $timeslots)
    {
      $str1 = '<th style="padding: 5px; text-align: center;" colspan="10">' . $date->format('D') . ' ' . $date->format('m-d-Y') .
      '&nbsp;&nbsp;&nbsp;<img src="images/Help-icon.png" alt="?" class="infoCursor tableHelp" height="25px" width="25px" /></th>';
      // loop for the slots
      for ($i = 1; $i <= count($timeslots); $i++)
      {
        $slot = $timeslots[$i-1]["time"];  //getTimeSlot($i);
        $str1 = $str1 . '<tr><td>' . $slot . '</td>' ;
        //for ($j = 1; $j <= 3; $j++) // loop for the locations
        for ($j = 1; $j <= count($locations); $j++)
        {
             $query->execute(array($date->format('Y-m-d'), $j, $i ));
             if ($query->rowCount() == 0)
             {
               $name = "";
               $scheduledId = 0;
             }
             else
             {
               while ($row = $query->fetch())
               {
                   $name = $row["fname"] . " " . $row["lname"];
                   $scheduledId = $row["ringer"];
               }
             }
          // code takes the form of ringerIdofCaller:slot:location:date:idOfRingerScheduled
          // (i.e. 31:2:3:2015-11-31:4 means ringer 31 at 11 AM ~ 12 Noon at King Soopers on 11/31/2015 and ringer 4 has slot
          // If idOfRingerScheduled = 0 then nobody is scheduled for that slot
            $code = sprintf("%s:%s:%s:%s:%s", $ringerId, $i, $j, $date->format('Y-m-d'), $scheduledId);
            if ($ringerId == $scheduledId)
            {
                $style = 'class="calendarTableLblRed calendarTableLbl"';
                $swap = "";
            }
            elseif ($scheduledId != 0)
            {
                 $style = 'class="calendarTableLbl"';
                 $swap = sprintf('<img src="images/swap_icon.png" height="20px" width="20px" class="swapIcon" code="%s">', $code);
            }
            else
            {
                $style = 'class="calendarTableLbl"';
                $swap = "";
            }
            $location = $locations[$j-1]["location_name"];  //getLocation($j);
            $str1 = $str1 . sprintf('<td>%s</td><td><label id="%s" code="%s" %s>%s</label></td><td>%s</td>', $location, $code, $code, $style, $name, $swap );
        }
        $str1 = $str1 . '</tr>' ;
      }
      return $str1;
    }


    function getDayAfterThanks()  // returns the date of the day after Thanksgiving for the current year
    {
       $date =time() ;  //This makes the current year a variable
       $year = date('Y', $date) ;  //Here we generate the first day of November
       $first_day = mktime(0,0,0,11, 1, $year) ;  //We determine what day of the week the first falls on
       $day_of_week = date('D', $first_day) ;  //Based upon this, we add the appropriate number of days to get to the forth Thursday of the month
       switch($day_of_week){
         case "Sun": $add = 25; break;
         case "Mon": $add = 24; break;
         case "Tue": $add = 23; break;
         case "Wed": $add = 22; break;
         case "Thu": $add = 21; break;
         case "Fri": $add = 27; break;
         case "Sat": $add = 26; break;
       }
        $Thanks = 2 + $add;   // I want the day AFTER Thanksgiving
// Uncomment this to get actual days after Thanksgiving and comment out fixed date
        //return $year . "-11-" . $Thanks;
// This is for testing only
return "2015-02-05";
    }
?>
