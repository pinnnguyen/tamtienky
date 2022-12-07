<?php
require_once($_SERVER['DOCUMENT_ROOT'] . "/pdo.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/class/player.php");

$sid = $_GET['sid'];
$zbnowid = $_GET['zbnowid'];

$mczb = \player\getzb($zbnowid, $dblj);
$sxzz = $mczb->zbgj + $mczb->zbfy + $mczb->zbbj * 5 + $mczb->zbxx * 5 + $mczb->qianghua * 3;
$mcls = round($sxzz);
$sql = "delete from playerzhuangbei where zbnowid =$zbnowid AND sid='$sid'"; // xóa thiết bị
$mcret = $dblj->exec($sql);
if ($mcret) {
    $ret = \player\changeyxb(1, $sxzz / 2, $sid, $dblj);
    $tishi = "Bán $mczb->zbname, nhận $mcls linh thạch";
}

echo $tishi;
