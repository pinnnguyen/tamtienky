<?php
require_once $_SERVER['DOCUMENT_ROOT'] . "/pdo.php";
require_once $_SERVER['DOCUMENT_ROOT'] . "/class/player.php";
require_once $_SERVER['DOCUMENT_ROOT'] . "/class/encode.php";

$sid = $_GET['sid'];
$canshu = $_GET['canshu'];

$player = \player\getplayer($sid, $dblj);
$encode = new \encode\encode();


$tplshtml = "";
$upgrade_success = '';
$tpls = 0;
$response = [];

if ($player->uexp < $player->umaxexp) {
    $response['notify'] = 'Tu vi chưa đủ để đột phá';
}

$tupo = \player\istupo($sid, $dblj);
if ($tupo == 1) {
    $tpls = $player->ulv * $player->ulv * $player->ulv * 6;
} elseif ($tupo == 2) {
    $tpls = $player->ulv * ($player->ulv + 1) * 4;
}

if ($tupo != 0) {
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
                        $response['notify'] = 'Đột phá thất bại';
                        break;
                    }

                    if ($tupo == 2) {
                        $uphp = 2 + round($player->umaxhp / 20);
                        $upgj = 1 + round($player->ugj / 10);
                        $upfy = 1 + round($player->ufy / 10);
                    } elseif ($tupo == 1) {
                        if ($sjs < 8) {
                            $response['notify'] = 'Đột phá thất bại';
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
                    $response['notify'] = 'Đột phá thành công';
                    $response['attribute'] = array('attach'=> $upgj,'def' => $upfy,'hp' => $uphp);

                        break;
                } else {
                    $response['notify'] = 'Linh thạch của bạn không đủ';
                    break;
                }
        }
    }
}

$response['playerLevelInfo'] = array('nextLevel' => $player->jingjie, 'levelNum' => $player->cengci, 'playerLinhThach' => $player->uyxb, 'useLinhThach' => $tpls);
echo json_encode($response);
