<?php

    require('connect.php');

    $iphone = isset($_GET['iphone']) ? $_GET['iphone'] : null;
    $password = isset($_GET['password']) ? $_GET['password'] : null;

    $sql = "select phone from userphone where phone='$iphone'";
    $str = "select password from userphone where password='$password'";

    $res = $conn->query($sql);
    $result = $conn->query($str);

    if($res->num_rows>0 and $result->num_rows>0){
        echo "success";
    }else{
        echo "fail";
    }
    





?>