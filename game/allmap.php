<?php
require_once($_SERVER['DOCUMENT_ROOT'] . "/pdo.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/class/encode.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/class/player.php");

$_POST = json_decode(file_get_contents("php://input"),true);
$sid = $_POST['sid'];
//$nowmid = $_POST['nowmid'];

//$sid = $_GET['sid'];
$player = player\getplayer($sid, $dblj);
//$map = '';

//$encode = new \encode\encode();
//$cxallmap = \player\getqy_all($dblj);

$all_mid = \player\get_mid_all($dblj);
$all_mid_player = \player\get_playermid_all($sid, $dblj);

$response = [];
for ($i = 0; $i < count($all_mid); $i++) {
    $is_pass = false;
    $mid = $all_mid[$i]['mid'];

    for ($i = 0; $i < count($all_mid_player); $i++) {
        $player_mid = $all_mid_player[$i]['mid'];

        if ($mid === $player_mid) {
            $is_pass = true;
        }
    }


    array_push($response, array(
        'mName' => $all_mid[$i]['mname'],
        'mid' => $all_mid[$i]['mid'],
        'pass' => $is_pass
    ));
}

echo json_encode($response);
//$rightmidlj = $encode->encode("cmd=gomid&newmid=$clmid->rightmid&sid=$sid");


//$br = 0;
//for ($i = 0; $i < count($cxallmap); $i++) {
//    $qyame = $cxallmap[$i]['qyname'];
//    $mid = $cxallmap[$i]['mid'];
//    if ($mid > 0) {
//        $cxmid = \player\getmid($mid, $dblj);
//        $mname = $cxmid->mname;
//        $br++;
//        $gomid = $encode->encode("cmd=gomid&newmid=$mid&sid=$sid");
//        $map .= <<<HTML
//    <div class="flex flex-col">
//        <img src="images/Img_Zhuxian_Fengyunbian.png" class="w-[120px]" alt="">
//        <a class="text-white p-2 line-clamp-1" mid="$mid" style="background: radial-gradient(black, transparent); font-size: 7px" href="?cmd=$gomid" >[$qyame]$mname</a>
//    </div>
//HTML;
//
//        if ($cxmid->ispvp === "1") {
//            $map .= <<<HTML
//            <span class="text-red-600">[PvP]</span>
//HTML;
//        }
//    }
//
//    if ($br >= 3) {
//        $br = 0;
//        $map .= "<br/>";
//    }
//}
//
//
//$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
//$allmap = <<<HTML
//<div class="">
//    <div class="text-center text-sm text-white">Danh sách bản đồ</div>
//    <div class="flex flex-col h-[90vh] overflow-scroll grid grid-cols-2">
//    $map
//</div>
//</div>
//
//HTML;
