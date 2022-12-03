<?php
require_once $_SERVER['DOCUMENT_ROOT'] . "/pdo.php";
require_once $_SERVER['DOCUMENT_ROOT'] . "/class/player.php";
require_once $_SERVER['DOCUMENT_ROOT'] . "/class/encode.php";

$sid = $_GET['sid'];
$canshu = $_GET['canshu'];

$player = \player\getplayer($sid, $dblj);
$encode = new \encode\encode();

$tupocmd = $encode->encode("cmd=tupo&canshu=tupo&sid=$sid");
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");

$tplshtml = "";
$upgrade_success = '';
$tpls = 0;

if ($player->uexp < $player->umaxexp) {
    echo <<<HTML
<div>
 Tu vi chưa đủ để đột phá<a href="?cmd=$gonowmid">Trở về trò chơi</a>
</div>
HTML;
    exit();
}

$tupo = \player\istupo($sid, $dblj);
if ($tupo == 1) {
    $tpls = $player->ulv * $player->ulv * $player->ulv * 6;
} elseif ($tupo == 2) {
    $tpls = $player->ulv * ($player->ulv + 1) * 4;
}

if ($tupo != 0) {
    $tplshtml = <<<HTML
    <span>Đột phá cần linh thạch</span>: $tpls/$player->uyxb
HTML;

    $upgj = 0;
    $upfy = 0;
    $uphp = 0;
    if (isset($canshu)) {
        switch ($canshu) {
            case "tupo":
                $ret = \player\changeyxb(2, $tpls, $sid, $dblj);
                if ($ret) {
                    $sjs = mt_rand(1, 10);
                    if ($sjs <= 5) {
                        echo <<<HTML
<script>
$.notify('Đột phá thất bại', {
            style: 'normal',
            globalPosition: 'bottom right',
        })
</script>
HTML;
                        break;
                    }

                    if ($tupo == 2) {
                        $uphp = 2 + round($player->umaxhp / 20);
                        $upgj = 1 + round($player->ugj / 10);
                        $upfy = 1 + round($player->ufy / 10);
                    } elseif ($tupo == 1) {
                        if ($sjs < 8) {
                            echo <<<HTML
<script>
$.notify('Đột phá thất bại', {
            style: 'normal',
            globalPosition: 'bottom right',
        })
</script>
HTML;
                            break;
                        }

                        $uphp = 4 + round($player->umaxhp / 16);
                        $upgj = 2 + round($player->ugj / 8);
                        $upfy = 2 + round($player->ufy / 6);
                    }

                    \player\upplayerlv($sid, $dblj);
                    \player\addplayersx("umaxhp", $uphp, $sid, $dblj);
                    \player\addplayersx("ugj", $upgj, $sid, $dblj);
                    \player\addplayersx("ufy", $upfy, $sid, $dblj);

                    $player = \player\getplayer($sid, $dblj);
                    $upgrade_success = <<<HTML
 <div class='text-white'>
    <div>
    Công kích +$upgj
    </div> 
    <div>
    Phòng ngự +$upfy
    </div> 
    <div>
    Khí huyết +$uphp
    </div>
</div>
<script>
$.notify('Đột phá thành công', {
            style: 'normal',
            globalPosition: 'bottom right',
        })
</script>
HTML;
                } else {
                    echo "<script>$.notify('Linh thạch của bạn không đủ', {
    style: 'normal',
    globalPosition: 'bottom right',
})</script>";
                }
                break;
        }
    }
}

$tupohtml = <<<HTML
<div class="p-3 leading-6 h-[230px] relative">
$upgrade_success
<div>
    <div class="text-white">
    <div>
    Trước mắt cảnh giới: $player->jingjie $player->cengci
    </div>
    $tplshtml
    </div>
</div>
    <div class="flex justify-end absolute bottom-0 right-0 p-3" href='?cmd=$tupocmd'>
    <button 
        id="upgrade-now" 
        cmd="tupo" 
        canshu="tupo" 
        sid="$sid" 
        class="!text-white rounded-sm h-[30px] bg-[#009688] p-2 flex items-center">
        Đột phá
    </button>
</div>
<script src="upgrade/bag.js"></script>
</div>
HTML;

echo $tupohtml;
