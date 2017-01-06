<?php

          // PDO documentation: http://www.phpro.org/tutorials/Introduction-to-PHP-PDO.html
  try {
    $dbh = new PDO("mysql:host=localhost;dbname=monumen8_bellringing", "monumen8_bellrg", "Tango_32");
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
catch(PDOException $e)
    {
    echo $e->getMessage();
    }

?>