<?php
    require('connect.php');

    $sql = "select * from goodslist where id=003";

    $result = $conn->query($sql);

    $res = $result->fetch_all(MYSQLI_ASSOC);

    $result->close();

    $res->close();

    echo json_encode($res,JSON_UNESCAPED_UNICODE);


    
?>