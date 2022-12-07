<?php
require_once($_SERVER['DOCUMENT_ROOT'] . "/pdo.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/class/player.php");

$_POST = json_decode(file_get_contents("php://input"),true);
$sid = $_POST['sid'];

$all_mid = \player\get_mid_all($dblj);
$all_mid_player = \player\get_playermid_all($sid, $dblj);

echo json_encode(array(
    'mids' => $all_mid,
    'playermids' => $all_mid_player
));

exit();