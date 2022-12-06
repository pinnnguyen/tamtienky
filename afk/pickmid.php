<?php
require_once($_SERVER['DOCUMENT_ROOT'] . "/pdo.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/class/player.php");

$_POST = json_decode(file_get_contents("php://input"),true);
$sid = $_POST['sid'];
$nowmid = $_POST['nowmid'];

$sql = "select * from playermid where sid= '$sid' and midid = '$nowmid' ";
$query = $dblj->query($sql);
$ret = $query->fetch(\PDO::FETCH_NUM);

if (!$ret) {
    echo json_encode(array(
        'success' => false,
        'message' => 'Bạn chưa vượt qua bản đồ này này'
    ));

    exit();
}


player\changemidresource($sid, $nowmid, $dblj);

echo json_encode(array(
    'success' => true,
    'message' => 'Uỷ thác bản đồ này thành công'
));
