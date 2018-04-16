<?php
    
    require('connect.php');
    // 获取前端数据
    $page = isset($_GET['id']) ? $_GET['id'] : 1;
    $qty = isset($_GET['qty']) ? $_GET['qty'] : 8;

    //获取查询结果集（集合）
    $idx = ($page-1)*$qty;
    $result = $conn->query("select * from goodslist order by $page limit $idx,$qty");

    // 获取数据（使用查询结果集）
    $res = $result->fetch_all(MYSQLI_ASSOC);

    //释放查询结果集，避免资源浪费
    $result->close();

    // 关闭数据库，避免资源浪费
    $conn->close();

    // var_dump($res);

    echo json_encode($res,JSON_UNESCAPED_UNICODE);
?>