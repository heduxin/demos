<?php
header("content-type:text/html;charset=utf8");
include('mysql.php');
$res = mysqli_query($con,"select * from admin");
$arr = [];
while($row = mysqli_fetch_assoc($res)){
    array_push($arr,$row);
}
if(count($arr)>0){
    echo json_encode([
        "message"=>[
            "status"=>0,
            "msg"=>"获取用户数据成功"
        ],
        "data"=>$arr
    ]);
}