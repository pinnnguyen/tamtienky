<?php
require_once($_SERVER['DOCUMENT_ROOT'] . "/pdo.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/class/player.php");
require_once $_SERVER['DOCUMENT_ROOT'] . "/class/encode.php";

$sid = $_GET['sid'];

$player = \player\getplayer($sid, $dblj);
$encode = new \encode\encode();

$tupocmd = $encode->encode("cmd=tupo&canshu=tupo&sid=$sid");
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");

$tupo = \player\istupo($sid, $dblj);
$tplshtml = "";
$tpls = 0;

if ($player->uexp < $player->umaxexp) {
    echo <<<HTML
 Tu vi chưa đủ để đột phá<a href="?cmd=$gonowmid">Trở về trò chơi</a>
HTML;
    exit();
}

if ($tupo == 1) {
    $tpls = $player->ulv * $player->ulv * $player->ulv * 6;
} elseif ($tupo == 2) {
    $tpls = $player->ulv * ($player->ulv + 1) * 4;
}

if ($tupo != 0) {
    $tplshtml = <<<HTML
    <span>Đột phá cần linh thạch</span>:$tpls/$player->uyxb
    <div class="text-center" href='?cmd=$tupocmd'>
    <button class="h-[50px] w-[50px] rounded-full">Đột phá</button>
</div>
HTML;

    $upgj = 0;
    $upfy = 0;
    $uphp = 0;
    if (isset($canshu)) {
        switch ($canshu) {
            case"tupo":
                $ret = \player\changeyxb(2, $tpls, $sid, $dblj);
                if ($ret) {
                    $sjs = mt_rand(1, 10);
                    if ($sjs <= 5) {
                        echo "<div class='text-white text-center'>Đột phá thất bại</div>";
                        break;
                    }

                    if ($tupo == 2) {
                        $uphp = 2 + round($player->uhp / 20);
                        $upgj = 1 + round($player->ugj / 12);
                        $upfy = 1 + round($player->ufy / 10);

                    } elseif ($tupo == 1) {
                        if ($sjs < 8) {
                            echo "<div class='text-white text-center'>Đột phá thất bại</div>";
                            break;
                        }

                        $uphp = 4 + round($player->uhp / 16);
                        $upgj = 2 + round($player->ugj / 8);
                        $upfy = 3 + round($player->ufy / 6);
                    }

                    \player\upplayerlv($sid, $dblj);
                    \player\addplayersx("umaxhp", $uphp, $sid, $dblj);
                    \player\addplayersx("ugj", $upgj, $sid, $dblj);
                    \player\addplayersx("ufy", $upfy, $sid, $dblj);
                    $player = \player\getplayer($sid, $dblj);

                    echo "<div class='text-center text-white'>Đột phá thành công thu hoạch được thuộc tính: <div>Công kích +$upgj</div> <div> Phòng ngự +$upfy</div> <div>Khí huyết +$uphp</div></div>";
                } else {
                    echo "Linh thạch không đủ<br/>Đột phá cần linh thạch:$tpls<br/>";
                }
                break;
        }
    }
}

$tupohtml = <<<HTML
<div class="p-2 leading-6">
<div class="text-center text-white">======Đột phá======</div>
<div class="text-center text-white">
<div>
Trước mắt cảnh giới: $player->jingjie$player->cengci
</div>
$tplshtml
</div>
</div>

HTML;
echo $tupohtml;

