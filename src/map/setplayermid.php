<?php
require_once($_SERVER['DOCUMENT_ROOT'] . "/pdo.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/class/player.php");

$_POST = json_decode(file_get_contents("php://input"),true);
$sid = $_POST['sid'];
$mid = $_POST['mid'];

\player\update_player_mid($sid, $mid, $dblj);

echo json_encode(array('success' => true));