<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/8/20
 * Time: 18:39
 */
$player = \player\getplayer($sid, $dblj);
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
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
                \player\changeczb(1, $duihuan->dhczb, $sid, $dblj);
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
=========Trang đổi thưởng=========
<form>
    <input type="hidden" name="cmd" value="duihuan">
    <input type="hidden" name="sid" value="$sid">
    Mã đổi thưởng:<br/>
    <input name="dhm" class="border border-1"> 
    <button type="submit" class="gamesubmit" value="Đổi thưởng">
    Đổi thưởng
</button>
</form>
$tishi
<button onClick="javascript :history.back(-1);">Trở về</button> <a href='?cmd=$gonowmid'>Trở về trò chơi</a>
HTML;
echo $dhhtml;
?>

