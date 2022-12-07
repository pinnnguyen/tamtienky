<?php
require_once($_SERVER['DOCUMENT_ROOT'] . "/pdo.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/class/player.php");
require_once $_SERVER['DOCUMENT_ROOT'] . "/class/encode.php";

$sid = $_GET['sid'];
$cmd = $_GET['cmd'];
$limit = $_GET['limit'];

$player = player\getplayer($sid, $dblj);
$encode = new \encode\encode();
$tishi = '';

if (!isset($limit)) {
    $limit = 0;
}

$limit_bag_slot = 15;
$sql = "select * from playerzhuangbei  WHERE sid = '$sid' ORDER BY zbnowid in ($player->tool1, $player->tool2, $player->tool3, $player->tool4, $player->tool5, $player->tool6) DESC LIMIT $limit, $limit_bag_slot";
$cxjg = $dblj->query($sql);
$retzb = $cxjg->fetchAll(PDO::FETCH_ASSOC);

$sql = "select count(*) from playerzhuangbei where sid = '$sid'";
$cxjg = $dblj->query($sql);
$zbcount = $cxjg->fetchColumn();
//$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$zbhtml = '';
$fanye = '';

if ($limit != 0) {
    $page_num = $limit - $limit_bag_slot;
//    $shangyiye = $encode->encode("cmd=getbagzb&yeshu=$shangcanshu&sid=$sid");
    $fanye .= <<<HTML
<div id="next-bag" class="absolute bottom-[25px] z-1 right-[25px] p-2 bg-button" cmd="getbagzb" limit="$page_num" sid="$sid">Trang trước</div>
HTML;
}

if ($limit + $limit_bag_slot < $zbcount) {
    $page_num = $limit + $limit_bag_slot;
    $fanye .= <<<HTML
<div id="next-bag" class="absolute bottom-[25px] z-1 right-[25px] p-2 bg-button" cmd="getbagzb" limit="$page_num" sid="$sid">Trang sau</div>
HTML;

}

if ($fanye != '') {
    $fanye = '<br/>' . $fanye . '<br/>';
}

$in_equip = [$player->tool1, $player->tool2, $player->tool3, $player->tool4, $player->tool5, $player->tool6];
for ($i = 0; $i < count($retzb); $i++) {
    $zbnowid = $retzb[$i]['zbnowid'];
//    $arr = [$player->tool1, $player->tool2, $player->tool3, $player->tool4, $player->tool5, $player->tool6];

    $zbname = $retzb[$i]['zbname'];
    $zbnowid = $retzb[$i]['zbnowid'];
    $zbqh = $retzb[$i]['qianghua'];
    $preview_img = $retzb[$i]['preview_url'];

    $qhhtml = '';
    if ($zbqh > 0) {
        $qhhtml = "+" . $zbqh;
    }

//    $chakanzb = $encode->encode("cmd=chakanzb&zbnowid=$zbnowid&uid=$player->uid&sid=$sid");
    if (!in_array($zbnowid, $in_equip)) {
//        $mczb = $encode->encode("cmd=getbagzb&canshu=maichu&yeshu=$yeshu&zbnowid=$zbnowid&sid=$sid");
//        $delezb = $encode->encode("cmd=delezb&zbnowid=$zbnowid&sid=$sid");
        $zbhtml .= <<<HTML
        <div class="bag-item_details flex flex-col max-h-[120px]" 
        cmd="chakanzb"
        zbnowid="$zbnowid"
        uid="$player->uid"
        sid="$sid">
        <div class="w-[60px] h-[60px] relative p-1 m-2 border border-white bg-[#bbbbbb]">
            <div class="border-2 border-white w-full h-full">
            <img class="w-[75%] absolute top-[50%] left-[50%]" style="transform: translate(-50%, -50%);" src="$preview_img" alt="">
        </div>
       
        </div>
    <span class="pl-2 line-clamp-1">$zbname$qhhtml</span>
</div>
HTML;

    } else {
        $zbhtml .= <<<HTML
        <div class="bag-item_details flex flex-col max-h-[120px]" 
        cmd="chakanzb"
        zbnowid="$zbnowid"
        uid="$player->uid"
        sid="$sid">
        <div class="w-[60px] h-[60px] relative p-1 m-2 border border-white bg-[#bbbbbb]">
        <span class="absolute right-[-25px] top-[3px] font-bold font-size-7 bg-[#9e9e9e] text-white z-[1]" style="font-size: 7px">(Đang trang bị)</span>
            <div class="border-2 border-white w-full h-full">
            <img loading="lazy" class="w-[75%] absolute top-[50%] left-[50%]" style="transform: translate(-50%, -50%);" src="$preview_img" alt="">
        </div>
       
        </div>
    <span class="pl-2 line-clamp-1">$zbname$qhhtml</span>
</div>
HTML;
    }
}
$getbagdjcmd = $encode->encode("cmd=getbagdj&sid=$sid");
$getbagypcmd = $encode->encode("cmd=getbagyp&sid=$sid");
$getbagjncmd = $encode->encode("cmd=getbagjn&sid=$sid");

$toolhtml = <<<HTML
<img src="bag/images/back.png" class="w-[35px] h-[35px] absolute z-[99] top-[2px] left-0 close-bag">
<div class="border-2 border-[#e0c49d] font-bold px-2 py-2 relative h-full">
<div class="h-full border-2 border-black overflow-y-scroll">

<div class="">
    $tishi
    <div class="h-[35px] flex items-center justify-center">
    <a id="bag-daocu" cmd="getbagdj" sid="$sid">Đạo cụ</a>
    <a id="bag-duocpham" sid="$sid" cmd="getbagyp">Dược phẩm</a>|
    <a id="bag-skill" sid="$sid" cmd="getbagjn">Kỹ năng</a>
</div>
    <div class="text-black bg-[#efeeec] grid grid-cols-4" style="height: calc(100% - 75px)">
    $zbhtml
    </div>
</div>
</div>
</div>

<div>$fanye</div>
<script src="bag/bag.js"></script>

HTML;
echo $toolhtml;

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/6/16
 * Time: 17:56
 */
?>

