<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/8/20
 * Time: 18:39
 */
//require_once($_SERVER['DOCUMENT_ROOT'] . "/pdo.php");
//require_once($_SERVER['DOCUMENT_ROOT'] . "/class/encode.php");
//require_once($_SERVER['DOCUMENT_ROOT'] . "/class/player.php");

//$sid = $_GET['sid'];
//$encode = new \encode\encode();
$player = \player\getplayer($sid, $dblj);
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
//$duihuancmd = $encode->encode("cmd=duihuan&sid=$sid");

$tishi = '';

if (isset($dhm)) {
    $dhm = htmlspecialchars($dhm);
    $duihuan = \player\getduihuan($dhm, $dblj);

    if ($duihuan) {
        $playerCode = \player\getPlayerUseCode($sid, $dhm, $dblj);
        if ($playerCode->sid === $player->sid) {
            $tishi = 'Đạo hữu đã sử dụng mã này<br/>';
        } else {
            player\addPlayerCode($sid, $dhm, $dblj);
//        $sql = "delete from duihuan WHERE dhm = '$dhm'";
//        $dblj->exec($sql);
            //Xóa mã đổi quà kịp thời， mở giao dịch
            $tishi = "Trao đổi {$duihuan->dhname} mã đổi thành công, nhận: <br/>";
            $retallzb = explode(',', $duihuan->dhzb);

            foreach ($retallzb as $zb) {
                if ($zb) {
                    \player\addzb($sid, $zb, $dblj);
                    $zhuangbei = \player\getzbkzb($zb, $dblj);
                    $tishi .= "$zhuangbei->zbname<br/>";
                }
            }

            $djitem = explode(',', $duihuan->dhdj);
            foreach ($djitem as $djinfo) {
                if ($djinfo) {
                    $dj = explode('|', $djinfo);
                    $djid = $dj[0];
                    $djcount = $dj[1];
                    \player\adddj($sid, $djid, $djcount, $dblj);
                    $daoju = \player\getdaoju($djid, $dblj);
                    $tishi .= "{$daoju->djname}x{$djcount}<br/>";
                    \player\changerwyq1(1, $djid, $djcount, $sid, $dblj);
                }
            }

            $ypitem = explode(',', $duihuan->dhyp);
            foreach ($ypitem as $ypinfo) {
                if ($ypinfo) {
                    $yp = explode('|', $ypinfo);
                    $ypid = $yp[0];
                    $ypcount = $yp[1];
                    \player\addyaopin($sid, $ypid, $ypcount, $dblj);
                    $yaopin = \player\getyaopinonce($ypid, $dblj);
                    $tishi .= "{$yaopin->ypname}x{$ypcount}<br/>";
                }
            }

            if ($duihuan->dhyxb) {
                \player\changeyxb(1, $duihuan->dhyxb, $sid, $dblj);
                $tishi .= "Đá Thần: $duihuan->dhyxb<br/>";
            }

            if ($duihuan->dhczb) {
                \player\change_cuc_pham_nguyen_thach(1, $duihuan->dhczb, $sid, $dblj);
                $tishi .= "Cực phẩm linh thạch: $duihuan->dhczb<br/>";
            }

            if ($duihuan->dhexp) {
                \player\changeexp($sid, $dblj, $duihuan->dhexp);
                $tishi .= "Kinh nghiệm: $duihuan->dhexp<br/>";
            }
        }
    } else {
        $tishi = 'Đổi thật bại mã code không tồn tại<br/>';
    }

}


$dhhtml = <<<HTML
<div class="p-4">
    <form>
        <input type="hidden" name="cmd" value="duihuan">
        <input type="hidden" name="sid" value="$sid">
        Mã đổi thưởng:<br/>
        <input name="dhm" class="dhm shadow appearance-none border w-full py-2 px-3 text-gray-700 mb-3 leading-tight focus:outline-none focus:shadow-outline"> 
        <button class="use-giftcode bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4" value="Đổi thưởng">
        Đổi thưởng
    </button>
    </form>
    $tishi
</div>

HTML;

echo $dhhtml;

