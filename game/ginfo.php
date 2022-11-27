<?php
$player = player\getplayer($sid, $dblj);
$backcmd = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");

if ($nowmid != $player->nowmid) {
    $html = <<<HTML
        Hãy chơi game bình thường!<br/>
        <br/>
        <a href="?cmd=$backcmd">Trở lại trò chơi</a>
HTML;
    echo $html;
    exit();
}
if (isset($gid)) {
    $guaiwu = player\getguaiwu($gid, $dblj);
    $yguaiwu = \player\getyguaiwu($gyid, $dblj);
    $pvecmd = $encode->encode("cmd=pve&gid=$gid&sid=$sid&nowmid=$nowmid");
    if ($yguaiwu->ginfo == '') {
        $yguaiwu->ginfo = 'Không có danh vọng';
    }

    if ($guaiwu->sid != '' or $guaiwu->gname == '') {
        $html = <<<HTML
        Con quái vật đã bị tấn công bởi những người khác!<br/>
        Mời Thiếu Hiệp luyện tập một cái tốc độ tay nha
        <br/>
        <a href="?cmd=$backcmd">Trở về trò chơi</a>
HTML;
    } else {
        $dlhtml = '';
        $zbhtml = '';
        $djhtml = '';
        $yphtml = '';
        if ($yguaiwu->gzb != '') {
            $zbarr = explode(',', $yguaiwu->gzb);
            foreach ($zbarr as $newstr) {
                $zbkzb = \player\getzbkzb($newstr, $dblj);
                $zbcmd = $encode->encode("cmd=zbinfo_sys&zbid=$zbkzb->zbid&sid=$sid");
                $zbhtml .= "<div class=\"zbys\"><a href='?cmd=$zbcmd'>$zbkzb->zbname</a> </div>";
            }
            $dlhtml .= $zbhtml;
        }

        if ($yguaiwu->gdj != '') {
            $djarr = explode(',', $yguaiwu->gdj);
            foreach ($djarr as $newstr) {
                $dj = \player\getdaoju($newstr, $dblj);
                $djinfo = $encode->encode("cmd=djinfo&djid=$dj->djid&sid=$sid");
                $djhtml .= "<div class='djys'><a href='?cmd=$djinfo'>$dj->djname</a></div>";
            }
            $dlhtml .= $djhtml;
        }

        if ($yguaiwu->gyp != '') {
            $yparr = explode(',', $yguaiwu->gyp);
            foreach ($yparr as $newstr) {
                $yp = \player\getyaopinonce($newstr, $dblj);
                $ypinfo = $encode->encode("cmd=ypinfo&ypid=$yp->ypid&sid=$sid");
                $yphtml .= "<div class='ypys'><a href='?cmd=$ypinfo'>$yp->ypname</a></div>";
            }
            $dlhtml .= $yphtml;
        }

        if ($dlhtml == '') {
            $dlhtml = 'Quái vật không có vật phẩm rớt ra<br/>';
        }
        $html = <<<HTML
        [$yguaiwu->gname]<br/>
        Cấp:$yguaiwu->glv<br/>
        Giới tính:$yguaiwu->gsex<br/>
        Thông tin:$yguaiwu->ginfo<br/>
        Cảnh giới:$guaiwu->jingjie<br/>
        <br/>
        Rơi xuống:
        $dlhtml<br/>
        <a href="?cmd=$pvecmd">Công kích</a><a href="?cmd=$backcmd">Trở về trò chơi</a>
HTML;
    }
}
echo $html;
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/6/11
 * Time: 10:08
 */
?>

