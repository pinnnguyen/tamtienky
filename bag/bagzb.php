<?php
require_once($_SERVER['DOCUMENT_ROOT'] . "/pdo.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/class/player.php");
require_once $_SERVER['DOCUMENT_ROOT'] . "/class/encode.php";

$sid = $_GET['sid'];
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

$sql = "select * from playerzhuangbei  WHERE sid = '$sid' ORDER BY zbid DESC LIMIT $yeshu,10";
$cxjg = $dblj->query($sql);
$retzb = $cxjg->fetchAll(PDO::FETCH_ASSOC);

$sql = "select count(*) from playerzhuangbei where sid = '$sid'";
$cxjg = $dblj->query($sql);
$zbcount = $cxjg->fetchColumn();

$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$zbhtml = '';
$fanye = '';
if ($yeshu != 0) {
    $shangcanshu = $yeshu - 10;
    $shangyiye = $encode->encode("cmd=getbagzb&yeshu=$shangcanshu&sid=$sid");
    $fanye = '<a href="?cmd=' . $shangyiye . '">Trang trước</a>';
}
if ($yeshu + 10 < $zbcount) {
    $xiacanshu = $yeshu + 10;
    $xiayiye = $encode->encode("cmd=getbagzb&yeshu=$xiacanshu&sid=$sid");
    $fanye .= '<a href="?cmd=' . $xiayiye . '">Trang sau</a>';
}
if ($fanye != '') {
    $fanye = '<br/>' . $fanye . '<br/>';
}
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
        <div class="w-[100px] h-[100px] relative m-2 border border-white">
        <img class="w-[65px] absolute top-[50%] left-[50%]" style="transform: translate(-50%, -50%);" src="bag/images/itembig_1000101008.png" alt="">
        <a class="absolute bottom-0 text-span" href="?cmd=$chakanzb">
            $zbname$qhhtml
        </a>
        <a href="?cmd=$mczb">Bán</a>
        <a href="?cmd=$delezb">Phân giải</a>
</div>

HTML;
    } else {
        $zbhtml .= <<<HTML
        <a href="?cmd=$chakanzb">$zbname$qhhtml</a>(Đã trang bị)<br/>
HTML;
    }
}
$getbagdjcmd = $encode->encode("cmd=getbagdj&sid=$sid");
$getbagypcmd = $encode->encode("cmd=getbagyp&sid=$sid");
$getbagjncmd = $encode->encode("cmd=getbagjn&sid=$sid");

$toolhtml = <<<HTML
<div class="text-white p-2 flex flex-wrap justify-center">
    $tishi
    <div>
    【Trang thiết bị|<a href="?cmd=$getbagdjcmd">Đạo cụ</a>|<a href="?cmd=$getbagypcmd">Dược phẩm</a>|<a href="?cmd=$getbagjncmd">Phù lục</a>
</div>
    <br/>
    $zbhtml
    $fanye
</div>

HTML;
echo $toolhtml;

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/6/16
 * Time: 17:56
 */
?>

