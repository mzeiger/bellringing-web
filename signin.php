<?php  // signin.php

require_once "inc/password.php";

  class Ringer
  {
    public $id = "";
    public $fname = "";
    public $lname = "";
    public $email = "";
  }

  $email = strtolower(rtrim(ltrim($_POST["emailSignIn"])));
  $pwd = rtrim(ltrim($_POST["pwdSignIn"]));
  $hashed_pwd = password_hash($pwd, PASSWORD_BCRYPT);

require_once 'inc/db_connect.php';

 try
  {
    $sql = "select * from ringers where email = ?";
    $query = $dbh->prepare($sql);
    $query->execute(array($email));
    $row = $query->fetch();
    if (!password_verify($pwd, $row["password"]))
    {
      echo "Invalid email/password";    // The word "Invalid" must come first to signal bad email/password combo
      return;
    }

    $ringer = new Ringer();
    $ringer->id = $row["id"] ;
    $ringer->fname = $row["fname"];
    $ringer->lname = $row["lname"];
    $ringer->email = $row["email"];
    echo "{Ringer: [" . json_encode($ringer) . "]}";
    return;
  }
  catch (Exception $ex)
  {
        echo $ex->getMessage();
        return;
  }

