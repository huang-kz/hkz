<?php

    require('connect.php');


    $sql = "select * from goodslist order by id limit 0,10";

    $result = $conn->query($sql);

    // 获取数据（使用查询结果集）
    $res = $result->fetch_all(MYSQLI_ASSOC);

    //关闭数据库
    $result->close();

    $conn->close();

    //返回前端
    echo json_encode($res,JSON_UNESCAPED_UNICODE);




?>