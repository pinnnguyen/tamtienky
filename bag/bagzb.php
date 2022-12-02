<?php
require_once($_SERVER['DOCUMENT_ROOT'] . "/pdo.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/class/player.php");
require_once $_SERVER['DOCUMENT_ROOT'] . "/class/encode.php";

$sid = $_GET['sid'];
$cmd = $_GET['cmd'];

$player = player\getplayer($sid, $dblj);
$encode = new \encode\encode();
$tishi = '';
if (isset($canshu)) {
    if ($canshu == 'maichu') {
        $mczb = \player\getzb($zbnowid, $dblj);
        $sxzz = $mczb->zbgj + $mczb->zbfy + $mczb->zbbj * 5 + $mczb->zbxx * 5 + $mczb->qianghua * 3;
        $mcls = round($sxzz);
        $sql = "delete from playerzhuangbei where zbnowid =$zbnowid AND sid='$sid'"; // xóa thiết bị
        $mcret = $dblj->exec($sql);
        if ($mcret) {
            $ret = \player\changeyxb(1, $sxzz / 2, $sid, $dblj);
            $tishi = "Bán $mczb->zbname thành công, lấy đá thần: $mcls<br/>";
        }
    }
}
if (!isset($yeshu)) {
    $yeshu = 0;
}

if ($cmd == 'delezb') {
    $zhuangbei = \player\getzb($zbnowid, $dblj);
    $fjls = $zhuangbei->qianghua * 20 + 20;
    $ret = \player\changeyxb(2, $fjls, $sid, $dblj);
    if ($ret) {
        $sql = "delete from playerzhuangbei where zbnowid =$zbnowid AND sid='$sid'"; //xóa thiết bị
        $dblj->exec($sql);
        $qhs = round($zhuangbei->qianghua * $zhuangbei->qianghua);
        $sjs = mt_rand(1, 100);
        if ($sjs <= 30) {
            $sjs = mt_rand(1, 100);
            if ($sjs > 90) {
                $qhs = $qhs + 3;
            } elseif ($sjs > 80) {
                $qhs = $qhs + 2;
            } elseif ($sjs > 70) {
                $qhs = $qhs + 1;
            }
        }
        \player\adddj($sid, 1, $qhs, $dblj);
        $tishi = 'Đã phân rã thành công!<br/>';
        if ($qhs > 0) {
            $tishi .= "Nhận được một viên đá cường hóa:" . $qhs . "!<br/>";
        }
    } else {
        $tishi = "Không đủ linh thạch!<br/>";
    }
}

$sql = "select * from playerzhuangbei  WHERE sid = '$sid' ORDER BY zbid DESC LIMIT $yeshu, 30";
$cxjg = $dblj->query($sql);
$retzb = $cxjg->fetchAll(PDO::FETCH_ASSOC);

$sql = "select count(*) from playerzhuangbei where sid = '$sid'";
$cxjg = $dblj->query($sql);
$zbcount = $cxjg->fetchColumn();
//$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$zbhtml = '';
//$fanye = '';
//if ($yeshu != 0) {
//    $shangcanshu = $yeshu - 10;
//    $shangyiye = $encode->encode("cmd=getbagzb&yeshu=$shangcanshu&sid=$sid");
//    $fanye = '<a href="?cmd=' . $shangyiye . '">Trang trước</a>';
//}
//if ($yeshu + 10 < $zbcount) {
//    $xiacanshu = $yeshu + 10;
//    $xiayiye = $encode->encode("cmd=getbagzb&yeshu=$xiacanshu&sid=$sid");
////    $fanye .= <<<HTML
////<div class="absolute bottom-0 right-0 p-2" href="?cmd=' . $xiayiye . '">Trang sau</div>
////HTML;
//
//}
//if ($fanye != '') {
//    $fanye = '<br/>' . $fanye . '<br/>';
//}
for ($i = 0; $i < count($retzb); $i++) {
    $zbnowid = $retzb[$i]['zbnowid'];
    $arr = [$player->tool1, $player->tool2, $player->tool3, $player->tool4, $player->tool5, $player->tool6];

    $zbname = $retzb[$i]['zbname'];
    $zbnowid = $retzb[$i]['zbnowid'];
    $zbqh = $retzb[$i]['qianghua'];
    $qhhtml = '';
    if ($zbqh > 0) {
        $qhhtml = "+" . $zbqh;
    }

    $chakanzb = $encode->encode("cmd=chakanzb&zbnowid=$zbnowid&uid=$player->uid&sid=$sid");
    if (!in_array($zbnowid, $arr)) {
        $mczb = $encode->encode("cmd=getbagzb&canshu=maichu&yeshu=$yeshu&zbnowid=$zbnowid&sid=$sid");
        $delezb = $encode->encode("cmd=delezb&zbnowid=$zbnowid&sid=$sid");
        $zbhtml .= <<<HTML
        <div class="trangbi-defail flex flex-col max-h-[120px]" 
        cmd="chakanzb"
        zbnowid="$zbnowid"
        uid="$player->uid"
        sid="$sid">
        <div class="w-[60px] h-[60px] relative p-1 m-2 border border-white bg-[#bbbbbb]">
            <div class="border-2 border-white w-full h-full">
            <img class="w-[65px] absolute top-[50%] left-[50%]" style="transform: translate(-50%, -50%);" src="bag/images/itembig_1000101008.png" alt="">
        </div>
       
        </div>
    <span class="p-1">$zbname$qhhtml</span>
</div>
HTML;

    } else {
        $zbhtml .= <<<HTML
        <div class="trangbi-defail flex flex-col max-h-[120px]" 
        cmd="chakanzb"
        zbnowid="$zbnowid"
        uid="$player->uid"
        sid="$sid">
        <div class="w-[60px] h-[60px] relative p-1 m-2 border border-white bg-[#bbbbbb]">
        <span class="absolute right-[-25px] top-[3px] font-bold font-size-7" style="font-size: 7px">(Đang trang bị)</span>
            <div class="border-2 border-white w-full h-full">
            <img class="w-[65px] absolute top-[50%] left-[50%]" style="transform: translate(-50%, -50%);" src="bag/images/itembig_1000101008.png" alt="">
        </div>
       
        </div>
    <span class="p-1">$zbname$qhhtml</span>
</div>
HTML;
    }
}
$getbagdjcmd = $encode->encode("cmd=getbagdj&sid=$sid");
$getbagypcmd = $encode->encode("cmd=getbagyp&sid=$sid");
$getbagjncmd = $encode->encode("cmd=getbagjn&sid=$sid");

$toolhtml = <<<HTML
<img src="bag/images/back.png" class="w-[35px] h-[35px] absolute z-[99] top-[2px] left-0" id="close-bag">
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

