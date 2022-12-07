<?php
require_once($_SERVER['DOCUMENT_ROOT'] . "/pdo.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/class/player.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/exp/rule.php");

$sid = $_GET['sid'];
$player = \player\getplayer($sid, $dblj);
$mid_resource = \player\getMid($player->take_resource_mid, $dblj);

$now_date = date('Y-m-d H:i:s');
$second = floor((strtotime($now_date) - strtotime($player->take_resource_time)) % 86400);

if ($second < 60) {
    echo json_encode(array('status' => false, 'message' => 'Thời gian tối thiểu nhận thưởng là 1 phút'));
    exit();
}

// Cho phép nhận thưởng tối đa 5h
$limit_time = 18000 * 4;
if ($second > $limit_time) {
    $second = $limit_time;
}

$minute = round($second / 60);
$quaiwu_mid = explode("|", $mid_resource->mgid);
$guaiwu = \player\getyguaiwu($quaiwu_mid[0], $dblj);

$cal_exp = AFK_EXP();
$cal_resource = AFK_RESOURCE();

$exp = round($mid_resource->afk_rate_exp * $cal_exp, 0);
$yxb = round($mid_resource->afk_rate_resource * $cal_resource);

$total_exp = 0;
$total_resource = 0;
$minute_num = 0;

for ($x = 0; $x <= $minute; $x++) {
    $total_exp = $total_exp + $exp;
    $total_resource = $total_resource + $yxb;
    $minute_num = $minute_num + 1;
}

player\changeyxb(1, $total_resource, $sid, $dblj);
player\changeexp($sid, $dblj, $total_exp);
player\changetakeresource($sid, $dblj);

echo json_encode(
    array('exp' => $total_exp,
        'minNum' => $minute,
        'status' => true,
        'resource' => $total_resource)
);


