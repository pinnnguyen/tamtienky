<?php
$boss = \player\getboss($bossid, $dblj);
$player = \player\getplayer($sid, $dblj);
$nowmid = $player->nowmid;
$pgjcmd = $encode->encode("cmd=pvbgj&canshu=ptgj&bossid=$bossid&sid=$sid&nowmid=$nowmid");
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$player->sid");

$useyp1 = $encode->encode("cmd=pvb&canshu=useyp&ypid=$player->yp1&sid=$sid&bossid=$bossid&nowmid=$nowmid");
$useyp2 = $encode->encode("cmd=pvb&canshu=useyp&ypid=$player->yp2&sid=$sid&bossid=$bossid&nowmid=$nowmid");
$useyp3 = $encode->encode("cmd=pvb&canshu=useyp&ypid=$player->yp3&sid=$sid&bossid=$bossid&nowmid=$nowmid");

$usejn1 = $encode->encode("cmd=pvbgj&canshu=usejn&jnid=$player->jn1&sid=$sid&bossid=$bossid&nowmid=$nowmid");
$usejn2 = $encode->encode("cmd=pvbgj&canshu=usejn&jnid=$player->jn2&sid=$sid&bossid=$bossid&nowmid=$nowmid");
$usejn3 = $encode->encode("cmd=pvbgj&canshu=usejn&jnid=$player->jn3&sid=$sid&bossid=$bossid&nowmid=$nowmid");

$ypname1 = 'Dược phẩm 1';
$ypname2 = 'Dược phẩm 2';
$ypname3 = 'Dược phẩm 3';

$jnname1 = 'Phù lục 1';
$jnname2 = 'Phù lục 2';
$jnname3 = 'Phù lục 3';

// Lấy thông tin phù lục và dược phẩm
if ($player->yp1 != 0) {
    $yaopin = \player\getplayeryaopin($player->yp1, $sid, $dblj);
    $ypname1 = $yaopin->ypname . '(' . $yaopin->ypsum . ')';
}
if ($player->yp2 != 0) {
    $yaopin = \player\getplayeryaopin($player->yp2, $sid, $dblj);
    $ypname2 = $yaopin->ypname . '(' . $yaopin->ypsum . ')';
}
if ($player->yp3 != 0) {
    $yaopin = \player\getplayeryaopin($player->yp3, $sid, $dblj);
    $ypname3 = $yaopin->ypname . '(' . $yaopin->ypsum . ')';
}

if ($player->jn1 != 0) {
    $jineng = \player\getplayerjineng($player->jn1, $sid, $dblj);
    if ($jineng) {
        $jnname1 = $jineng->jnname . '(' . $jineng->jncount . ')';
    }
}
if ($player->jn2 != 0) {
    $jineng = \player\getplayerjineng($player->jn2, $sid, $dblj);
    if ($jineng) {
        $jnname2 = $jineng->jnname . '(' . $jineng->jncount . ')';
    }
}
if ($player->jn3 != 0) {
    $jineng = \player\getplayerjineng($player->jn3, $sid, $dblj);;
    if ($jineng) {
        $jnname3 = $jineng->jnname . '(' . $jineng->jncount . ')';
    }
}

// Kiểm tra hoạt động bất thường
$cwhurt = '';
$tishihtml = '';
if ($nowmid != $player->nowmid) {
    $html = <<<HTML
        Mời bình thường chơi game!<br/>
        <br/>
        <a href="?cmd=$gonowmid">Trở về trò chơi</a>
HTML;
    echo $html;
    exit();
}

// Cắn thuốc hồi máu
if (isset($canshu)) {
    if ($canshu == 'useyp') {
        $ret = \player\useyaopin($ypid, 1, $sid, $dblj);
        $player = player\getplayer($sid, $dblj);
    }
}

// echo "CMD: $cmd";
$zdjg;
if ($cmd == 'pvb') {
    if ($player->ulv >= 10 && $player->uhp <= 0) {
        $zdjg = -1;
    } elseif ($player->ulv < 10) {
        $html = <<<HTML
        Bạn cần phải đạt đến lv10, không thể tham gia!<br/>
        <br/>
        <a href="?cmd=$gonowmid">Trở về trò chơi</a>
HTML;
        echo $html;
        exit();
    }

} elseif ($cmd == 'pvbgj' && $bossid != 0) {
    //普通Công kích
    $hurt = false;
    $ghurt = 0;
    $jineng = new \player\jineng();

    if (isset($canshu)) {
        switch ($canshu) {
            case 'usejn':
                $ret = \player\delejnsum($jnid, 1, $sid, $dblj);
                if ($ret) {
                    $jineng = \player\getplayerjineng($jnid, $sid, $dblj);
                    $tishihtml = "Kỹ năng:$jineng->jnname<br/>";
                } else {
                    $tishihtml = "Kỹ năng không đủ<br/>";
                }

                break;
        }
    }

    $player->ugj += $jineng->jngj;
    $player->ufy += $jineng->jnfy;
    $player->ubj += $jineng->jnbj;
    $player->uxx += $jineng->jnxx;

    // Nếu là số âm sẽ ảnh hưởng đến mức độ sửa chữa.
    $lvc = $player->ulv - $boss->bosslv; //Cấp độ nhân vật-Cấp độ quái vật Nếu cấp độ nhân vật thấp hơn cấp độ quái vật, đá cường hóa sẽ không được phát nổ. Được đổi thành quái vật có cấp độ nhân vật cao hơn, nó sẽ không phát nổ sau cấp độ 10, nếu nó thấp hơn quái vật
    // if ($lvc >= 10){ // Nếu cấp độ nhân vật của quái vật là cấp 10, hãy trở về 0. Thay đổi nó, miễn là sự khác biệt là
    // $lvc = 0;
    // }

    $phurt = 0;

    $phurt = round($boss->bossgj - ($player->ufy * 0.75), 0);
    if ($phurt < $boss->bossgj * 0.15) {
        $phurt = round($boss->bossgj * 0.15);
    }

    $ran = mt_rand(1, 100);
    if ($player->ubj >= $ran) {
        $player->ugj = round($player->ugj * 1.72);
        $pvebj = 'Bạo kích';
    }

    $gphurt = round($player->ugj - ($boss->bossfy * 0.75), 0);
    if ($gphurt < $player->ugj * 0.15) {
        $gphurt = round($player->ugj * 0.15);
    }

    $pvexx = ceil($gphurt * ($player->uxx / 100));
    if ($phurt <= 0) {
        $hurt = true;
    }

    if ($phurt < $pvexx) {
        $pvexx = $phurt - 7;

        if ($pvexx < 0) {
            $pvexx = 0;
        }
    }

    echo "Bạn tấn công boss, sát thương: $gphurt<br/>";
    // Set máu của boss sau khi công kích 
    $sql = "update boss set bosshp = bosshp - {$gphurt} WHERE bossid='$bossid'";
    $dblj->exec($sql);
    // echo "sql update máu của boss: $sql";

    // Lấy lại thông tin boss sau khi đánh xong
    $boss = \player\getboss($bossid, $dblj);
    if ($boss->bosshp <= 0) {// Boss đã chết
        // Update lại thời gian hồi sinh của boss
        $sql = "UPDATE `boss` SET `bosstime`=(SELECT DATE_ADD(NOW(), INTERVAL 2 HOUR)) WHERE (`bossid`=$bossid)";
        $dblj->exec($sql);

        $yxb = round($guaiwu->glv / 2.9) + 1;
        if (($hurt || $lvc >= 5) && !($guaiwu->glv >= 46 && $player->ulv >= 50)) {  //Không gây sát thương hoặc nếu nhân vật cao hơn quái vật 5 cấp, và quái vật không lớn hơn 46 và nhân vật lớn hơn 50, đá tinh linh sẽ không được phát nổ.
            $yxb = 0;
        }
        // Trả quà cho use kích sát boss
        $ret = \player\changeyxb(1, $yxb, $sid, $dblj);
        if ($ret) {
            $huode .= "Thu hoạch linh thạch:$yxb<br/>";
        }

        $taskarr = \player\getplayerrenwu($sid, $dblj);
        \player\changerwyq1(2, $guaiwu->gyid, 1, $sid, $dblj);
        for ($i = 0; $i < count($taskarr); $i++) {
            $rwyq = $taskarr[$i]['rwyq'];
            $rwid = $taskarr[$i]['rwid'];
            $rwzl = $taskarr[$i]['rwzl'];
            $rwzt = $taskarr[$i]['rwzt'];
            if ($rwyq == $guaiwu->gyid && $rwzl == 2 && $rwzt != 3) {
                $rwnowcount = $taskarr[$i]['rwnowcount'] + 1;
                $rwts = $taskarr[$i]['rwname'] . '(' . $rwnowcount . "/" . $taskarr[$i]['rwcount'] . ')<br/>';
                break;
            }
        }
        // Tỉ lệ rớt ra trang bị sau khi boss chết, cái này nên xác định người chơi gây ra sát thương
        $sjjv = mt_rand(1, 120); //Lấy một số ngẫu nhiên, xác định tỷ lệ nổ và sau đó xem liệu quái vật có được trang bị hay không
        if ($yguaiwu->dljv >= $sjjv && $yguaiwu->gzb != '') {
            $sql = "select * from zhuangbei WHERE zbid in ($yguaiwu->gzb)";
            $cxdljg = $dblj->query($sql);
            if ($cxdljg) {
                $retzb = $cxdljg->fetchAll(PDO::FETCH_ASSOC);
                $sjdl = mt_rand(0, count($retzb) - 1);
                $zbname = $retzb[$sjdl]['zbname'];
                $zbid = $retzb[$sjdl]['zbid'];
                $zbnowid = player\addzb($sid, $zbid, $dblj);
                $chakanzb = $encode->encode("cmd=chakanzb&zbnowid=$zbnowid&uid=$player->uid&sid=$sid");
                $huode .= "Thu hoạch: <div class='zbys'>" . '<a href="?cmd=' . $chakanzb . '">' . $zbname . '</a></div>';
            }
        }

        $sjjv = mt_rand(1, 180);//djjv Xác suất 1-100 gdj là id của mục, được phân tách bằng dấu phẩy
        if ($yguaiwu->djjv >= $sjjv && $yguaiwu->gdj != '') {
            $sql = "select * from daoju WHERE djid in ($yguaiwu->gdj)";
            $cxdljg = $dblj->query($sql);
            if ($cxdljg) {
                $retdj = $cxdljg->fetchAll(PDO::FETCH_ASSOC);
                $sjdj = mt_rand(0, count($retdj) - 1);
                $djname = $retdj[$sjdj]['djname'];
                $djid = $retdj[$sjdj]['djid'];
                if (($djid == 1 && $lvc >= 5) && !($djid == 1 && $guaiwu->glv >= 46 && $player->ulv >= 50)) { //道具id 1是强化石，这里意思是强化石在人物比怪物等级高10级后不会爆,看pve.php文件107行
                    goto yp;
                }
                $djsum = mt_rand(1, 2); //随机获得1到两个道具
                \player\adddj($sid, $djid, $djsum, $dblj);
                $huode .= "Thu hoạch: <div class='djys'>$djname x$djsum</div>";

                for ($i = 0; $i < count($taskarr); $i++) {
                    $rwyq = $taskarr[$i]['rwyq'];
                    $rwid = $taskarr[$i]['rwid'];
                    $rwzl = $taskarr[$i]['rwzl'];
                    $rwzt = $taskarr[$i]['rwzt'];
                    if ($rwyq == $djid && $rwzl == 1 && $rwzt != 3) {
                        $rwnowcount = $taskarr[$i]['rwnowcount'] + $djsum;
                        $rwts = $taskarr[$i]['rwname'] . '(' . $rwnowcount . "/" . $taskarr[$i]['rwcount'] . ')<br/>';
                        break;
                    }
                }

            }
        }
        yp:
        $sjjv = mt_rand(1, 100);
        if ($yguaiwu->ypjv >= $sjjv && $yguaiwu->gyp != '') {
            $sql = "select * from yaopin WHERE ypid in ($yguaiwu->gyp)";
            $cxdljg = $dblj->query($sql);
            $retyp = $cxdljg->fetchAll(PDO::FETCH_ASSOC);
            $sjdj = mt_rand(0, count($retyp) - 1);
            $ypname = $retyp[$sjdj]['ypname'];
            $ypid = $retyp[$sjdj]['ypid'];
            $ypsum = mt_rand(1, 2);
            \player\addyaopin($sid, $ypid, $ypsum, $dblj);
            $huode .= "Thu hoạch: <div class='ypys'>$ypname x$ypsum</div>";
        }

        if ($lvc < 0) { //说明人物越级打怪，应该给提成
            $guaiwu->gexp = round($guaiwu->gexp + 5 * abs($lvc), 0);//tính toán theo kinh nghiệm
        } elseif ($lvc >= 0) {//Giải thích rằng cấp độ nhân vật cao hơn cấp độ quái vật và nên giảm kinh nghiệm
            $guaiwu->gexp = round($guaiwu->gexp / ($lvc + 1), 0);//经验计算
        }
        if ($guaiwu->gexp < 3) {//Nếu nhân vật cao hơn nhiều so với quái vật, nó vẫn là 3 điểm kinh nghiệm tượng trưng
            $guaiwu->gexp = 3;
        }
        $zdjg = 1;
    }
    // Trường hợp k đánh chết boss
    $pzssh = $phurt - $pvexx;
    if ($pzssh) {
        echo "Boss đánh trả lại, sát thương: $pzssh<br/>";
    }

    $sql = "update game1 set uhp = uhp - $pzssh  WHERE sid = '$sid'";
    $dblj->exec($sql);
    $player = player\getplayer($sid, $dblj);
    if ($player->uhp > $player->umaxhp) {
        $sql = "update game1 set uhp = $player->umaxhp WHERE sid = '$sid'";
        $dblj->exec($sql);
        $player->uhp = $player->umaxhp;
    }
    if ($player->uhp <= 0) {
        $zdjg = 0;
    }
}

// kiểm tra kết quả và trả quà
if (isset($zdjg)) {
    switch ($zdjg) {
        case 1:
//            player\updateMidBoss($nowmid, 0, $dblj);
            player\changeexp($sid, $dblj, $guaiwu->gexp);
            $huode .= 'Thu hoạch được tu vị:' . $guaiwu->gexp . '<br/>';

            $html = <<<HTML
            Kết quả:<br/>
            Ngươi giết $guaiwu->gname<br/>
            Chiến đấu thắng lợi!<br/>
            $huode
            $rwts<br/>
            <a href="?cmd=$gonowmid">Trở về trò chơi</a>
HTML;
            echo $html;
            exit();
            break;
        case 0:
            $html = <<<HTML
            Kết quả:<br/>
            Ngươi bị $guaiwu->gname đánh bại<br/>
            Chiến đấu thất bại!<br/>
            Mời Thiếu Hiệp thử lại<br/>
            <br/>
            <a href="?cmd=$gonowmid">Trở về trò chơi</a>
HTML;
            echo $html;
            exit();
            break;
        case -1:
            $html = <<<HTML
            Kết quả:<br/>
            Ngươi đã trọng thương, không thể tiến hành chiến đấu!<br/>
            Mời Thiếu Hiệp khôi phục và làm lại<br/>
            <br/>
            <a href="?cmd=$gonowmid">Trở về trò chơi</a>
HTML;
            echo $html;
            exit();
            break;
    }
} else {
    if (isset($gphurt) && $gphurt > 0) {
        $ghurt = '-' . $gphurt;
    } else {
        $ghurt = '';
    }

    if (isset($cwhurt) && $cwhurt > 0) {
        $cwhurt = '-' . $cwhurt;
    } else {
        $cwhurt = '';
    }
    if (isset($phurt) && $phurt > 0) {
        $phurt = '-' . $phurt;
    } else {
        $phurt = '';
    }

    if ($pvexx > 0) {
        $pvexx = "(+" . $pvexx . ')';
    } else {
        $pvexx = '';
    }
}

if ($boss->bosshp <= 0) {
    echo <<<HTML
<span>Boss đã bị đánh bại</span>
 <a href="?cmd=$gonowmid">Trở về trò chơi</a>
HTML;
    exit();
}

$bosshtml = <<<HTML
<br/>Số lượng người kẻ tấn công hiện tại: <br/><br/>
$boss->bossname[lv:$boss->bosslv]<br/>
Khí huyết:($boss->bosshp)<br/>
Công kích:($boss->bossgj)<br/>
Phòng ngự:($boss->bossfy)<br/>
===========<br/>
$player->uname[lv:$player->ulv]<br/>
Khí huyết:($player->uhp)<br/>
Công kích:($player->ugj)<br/>
Phòng ngự:($player->ufy)<br/>
<br/>
<a href="?cmd=$pgjcmd">Công kích</a>.<a href="?cmd=$gonowmid">Chạy trốn</a><br/>

<a href="?cmd=$usejn1">$jnname1</a> <a href="?cmd=$usejn2">$jnname2</a> <a href="?cmd=$usejn3">$jnname3</a><br/>

<a href="?cmd=$useyp1">$ypname1</a>.<a href="?cmd=$useyp2">$ypname2</a>.<a href="?cmd=$useyp3">$ypname3</a><br/>

HTML;

echo $bosshtml;
