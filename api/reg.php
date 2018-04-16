<?php
    // 连接数据库
    require('connect.php');

    $iphone = isset($_GET['iphone']) ? $_GET['iphone'] : null;
    $password = isset($_GET['password']) ? $_GET['password'] : null;
    $type = isset($_GET['reg']) ? $_GET['reg'] : null;



    $sql = "select phone from userphone where phone='$iphone'";

    $result = $conn->query($sql);


    if($result->num_rows>0){
        echo "fail";
    }else{
        if($type === 'reg'){

            $sql = "insert into userphone(phone,password) values('$iphone','$password')";

            $res = $conn->query($sql);
            if($res){
                echo "success";
            }else{
                echo "fail";
            }

        }else{
            echo "success";
        }
        
    }


?>