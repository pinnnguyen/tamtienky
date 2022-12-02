<?php
require_once($_SERVER['DOCUMENT_ROOT'] . "/pdo.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/class/player.php");

$sid = $_GET['sid'];
$zbnowid = $_GET['zbnowid'];

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
    $tishi = <<<HTML
    <script>$.notify('Đã phân rã thành công', {
        style: 'normal',
        globalPosition: 'bottom right',
    })</script>
HTML;
    if ($qhs > 0) {
        $tishi = <<<HTML
    <script>$.notify('Nhận cường hoá thạch x $qhs', {
        style: 'normal',
        globalPosition: 'bottom right',
    })</script>
HTML;

    }
} else {
    $tishi = <<<HTML
<script>$.notify('Không đủ linh thạch', {
        style: 'normal',
        globalPosition: 'bottom right',
    })</script>
HTML;
}


echo $tishi;