<?php
require_once $_SERVER['DOCUMENT_ROOT'] . "/pdo.php";
require_once $_SERVER['DOCUMENT_ROOT'] . "/class/encode.php";
require_once $_SERVER['DOCUMENT_ROOT'] . "/class/player.php";
require_once $_SERVER['DOCUMENT_ROOT'] . "/figure/constant.php";

$sid = $_GET['sid'];
$gid = $_GET['gid'];
$gyid = $_GET['gyid'];
$nowmid = $_GET['nowmid'];
$cmd = $_GET['cmd'];

$encode = new \encode\encode();
$player = \player\getplayer($sid, $dblj);
$cxmid = \player\getmid($player->nowmid, $dblj);
$cxqy = \player\getqy($cxmid->mqy, $dblj);

$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$player->sid");
$gorehpmid = $encode->encode("cmd=gomid&newmid=$cxqy->mid&sid=$player->sid");
$pgjcmd = $encode->encode("cmd=pvegj&gid=$gid&sid=$player->sid&nowmid=$nowmid");

$rwts = '';
$cwhtml = '';
$guaiwu = player\getguaiwu($gid, $dblj);
$yguaiwu = new \player\guaiwu();

if ($guaiwu->gyid) {
    $yguaiwu = player\getyguaiwu($guaiwu->gyid, $dblj);
}

$huode = '';
$useyp1 = $encode->encode("cmd=pve&canshu=useyp&ypid=$player->yp1&sid=$sid&gid=$gid&nowmid=$nowmid");
$useyp2 = $encode->encode("cmd=pve&canshu=useyp&ypid=$player->yp2&sid=$sid&gid=$gid&nowmid=$nowmid");
$useyp3 = $encode->encode("cmd=pve&canshu=useyp&ypid=$player->yp3&sid=$sid&gid=$gid&nowmid=$nowmid");

$usejn1 = $encode->encode("cmd=pvegj&canshu=usejn&jnid=$player->jn1&sid=$sid&gid=$gid&nowmid=$nowmid");
$usejn2 = $encode->encode("cmd=pvegj&canshu=usejn&jnid=$player->jn2&sid=$sid&gid=$gid&nowmid=$nowmid");
$usejn3 = $encode->encode("cmd=pvegj&canshu=usejn&jnid=$player->jn3&sid=$sid&gid=$gid&nowmid=$nowmid");

$ypname1 = 'Dược phẩm 1';
$ypname2 = 'Dược phẩm 2';
$ypname3 = 'Dược phẩm 3';

$jnname1 = 'Phù lục 1';
$jnname2 = 'Phù lục 2';
$jnname3 = 'Phù lục 3';

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

if (($guaiwu->sid != $player->sid && $guaiwu->sid != '') || $guaiwu->gid == '') {
    $html = <<<HTML
        Quái vật đã bị những người khác công kích!<br/>
        Mời Thiếu Hiệp luyện tập nhanh hơn nha
        <br/>
        <a href="?cmd=$gonowmid">Trở về trò chơi</a>
HTML;
    exit($html);
}

$pvebj = '';
$pvexx = '';

if (isset($canshu)) {
    if ($canshu == 'useyp') {
        $ret = \player\useyaopin($ypid, 1, $sid, $dblj);
        $player = player\getplayer($sid, $dblj);
    }
}

if ($cmd == 'pve' && $guaiwu->sid == '') {
    if ($player->ulv >= 10 && $player->uhp <= 0) {
        $zdjg = -1;
    } else {
        $sql = "update midguaiwu set sid = '$sid' WHERE id='$gid'";
        $dblj->exec($sql);
        $cw = \player\getchongwu($player->cw, $dblj);
        \player\changecwsx('cwhp', $cw->cwmaxhp, $player->cw, $dblj);

        if ($player->ulv <= 10) {
            \player\changeplayersx('uhp', $player->umaxhp, $sid, $dblj);
            $player = player\getplayer($sid, $dblj);
        }
    }
}

if ($cmd == 'pvegj' && $gid != 0) {
    // echo "Bạn công kích quái nè";
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

    #Nếu là số âm sẽ ảnh hưởng đến việc thiếu tu dưỡng
    $lvc = $player->ulv - $guaiwu->glv; //
    #Cấp độ nhân vật-Cấp quái vật Nếu cấp độ nhân vật thấp hơn cấp độ quái vật,
    # đá cường hóa sẽ không phát nổ.
    # Đổi thành quái vật có cấp độ nhân vật cao sẽ không phát nổ sau cấp 10, và nếu thấp hơn quái vật, nó sẽ là ngẫu nhiên
    $phurt = 0;
    $phurt = round($guaiwu->ggj - $player->ufy * 0.75, 0);
    if ($phurt < $guaiwu->ggj * 0.15) {
        $phurt = round($guaiwu->ggj * 0.15);
    }

    $ran = mt_rand(1, 100);
    if ($player->ubj >= $ran) {
        $player->ugj = round($player->ugj * $player->perViolentDamage);
        $pvebj = 'Bạo kích';
    }

    $gphurt = round($player->ugj - $guaiwu->gfy * 0.75, 0);
    if ($gphurt < $player->ugj * 0.15) {
        $gphurt = round($player->ugj * 0.15);
    }

    $pvexx = ceil($gphurt * ($player->uxx / 100));
    if ($phurt <= 0) {
        $hurt = true;
    }

    $sql = "update midguaiwu set ghp = ghp - {$gphurt} WHERE id='$gid'";
    $dblj->exec($sql);
    $guaiwu = player\getguaiwu($gid, $dblj);

    if ($guaiwu->ghp <= 0) {
        #quái vật chết
        $sql = "delete from midguaiwu where id = $gid AND sid='$player->sid'";
        $dblj->exec($sql);

        $yxb = round($guaiwu->glv * 3);
        //        if (($hurt || $lvc >= 5) && !($guaiwu->glv >= 46 && $player->ulv >= 50)) {
        //            //Không có sát thương hoặc nhân vật cao hơn quái vật 5 cấp, quái vật không lớn hơn 46, nhân vật lớn hơn 50, linh thạch sẽ không phát nổ
        //            $yxb = 0;
        //        }

        $ret = \player\changeyxb(1, $yxb, $sid, $dblj);
        if ($ret) {
            $huode .= <<<HTML
            <script>
            $.notify('Linh thạch x $yxb', {
                autoHideDelay: 1500,
                style: 'pve',
                globalPosition: 'bottom right',
                showDuration: 200,
            })
            </script>
HTML;
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

        $sjjv = mt_rand(1, 120); //lấy số ngẫu nhiên ，Đánh giá tỷ lệ nổ，Sau đó nhìn vào những gì con quái vật được trang bị
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
                //                <a href="?cmd=' . $chakanzb . '">' . $zbname . '</a
                $huode .= <<<HTML
            <script>
            $.notify('Thu hoạch x $zbname', {
                autoHideDelay: 1500,
                style: 'pve',
                globalPosition: 'bottom right',
                arrowShow: false,
                showDuration: 400,
            })
            </script>
HTML;
            }
        }

        $sjjv = mt_rand(1, 100); //xác suất đạo cụ djjv 1-100 gdj là id mục đạo cụ, được phân tách bằng dấu phẩy
        if ($yguaiwu->djjv >= $sjjv && $yguaiwu->gdj != '') {
            $sql = "select * from daoju WHERE djid in ($yguaiwu->gdj)";
            $cxdljg = $dblj->query($sql);
            if ($cxdljg) {
                $retdj = $cxdljg->fetchAll(PDO::FETCH_ASSOC);
                $sjdj = mt_rand(0, count($retdj) - 1);
                $djname = $retdj[$sjdj]['djname'];
                $djid = $retdj[$sjdj]['djid'];
                //                if (($djid == 1 && $lvc >= 5) && !($djid == 1 && $guaiwu->glv >= 46 && $player->ulv >= 50)) { //道具id 1是强化石，这里意思是强化石在人物比怪物等级高10级后不会爆,看pve.php文件107行
                //                    goto yp;
                //                }
                $djsum = mt_rand(1, 2); //Nhận ngẫu nhiên 1 hoặc 2 đạo cụ
                \player\adddj($sid, $djid, $djsum, $dblj);
                $huode .= <<<HTML
            <script>
            $.notify('Thu hoạch  $djname x $djsum', {
                autoHideDelay: 1500,
                style: 'pve',
                globalPosition: 'bottom right',
                arrowShow: false,
                showDuration: 600,
            })
            </script>
HTML;

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

        if ($lvc < 0) {
            // Giải thích nhân vật vượt ải đánh quái nên được hoa hồng
            $guaiwu->gexp = round($guaiwu->gexp + 5 * abs($lvc), 0); // tính toán theo kinh nghiệm
        } else {
            //Giải thích rằng cấp độ nhân vật cao hơn cấp độ quái vật và nên giảm kinh nghiệm
            $guaiwu->gexp = round($guaiwu->gexp / ($lvc + 1), 0); // tính toán theo kinh nghiệm
        }

        if ($player->ulv > $guaiwu->glv + 10) {
            // Nếu nhân vật cao hơn nhiều so với quái vật, hãy cho 3 điểm kinh nghiệm tượng trưng
            $guaiwu->gexp = $guaiwu->gexp * 25;
        }

        $zdjg = 1;
    }

    $pzssh = $phurt - $pvexx;
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
    $jineng = \player\getplayerjineng($player->jn3, $sid, $dblj);
    if ($jineng) {
        $jnname3 = $jineng->jnname . '(' . $jineng->jncount . ')';
    }
}

if (isset($zdjg)) {
    switch ($zdjg) {
        case 1:
            $expPlayer = 0;
            # Chia đều kinh nghiệm nhận đc nếu có đang deo pet
            if ($player->cw !== '0' && $player->cw !== '') {
                $expPlayer = $guaiwu->gexp / 2;
                $expPet = $guaiwu->gexp / 2;
                player\changecwexp($player->cw, $expPet, $dblj);
                $huode .= 'Pet nhận tu vị:' . $expPet . '<br/>';
            } else {
                $expPlayer = $guaiwu->gexp;
            }

            player\changeexp($sid, $dblj, $expPlayer);
            $huode .= <<<HTML
            <script>
            $.notify('Tu vi x $guaiwu->gexp', {
                autoHideDelay: 1500,
                style: 'pve',
                globalPosition: 'bottom right',
                showDuration: 600,
            })
            </script>
HTML;

            $html = <<<HTML
            <div class="p-3 leading-6 text-white text-center">
                <span>Đánh bại $guaiwu->gname</span> 
<!--                <span>$guaiwu->gexp</span>-->
                <div>
                $huode
                $rwts
</div>
            </div>

HTML;
            break;
        case 0:
            $html = <<<HTML
            <script>
            $.notify('Ngươi bị $guaiwu->gname đánh bại', {
                autoHideDelay: 1500,
                style: 'pve',
                globalPosition: 'bottom right',
                showDuration: 200,
            })
</script>
HTML;
            break;
        case -1:
            $html = <<<HTML
            Kết quả:<br/>
            Ngươi đã trọng thương, không thể tiến hành chiến đấu!<br/>
            Mời Thiếu Hiệp khôi phục và làm lại<br/>
            <br/>
            <a href="?cmd=$gorehpmid">Trở về trò chơi</a>
HTML;
            break;
    }
}

if (empty($zdjg)) {
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

    $remainingGuaiwuHp = ($guaiwu->ghp / $guaiwu->gmaxhp) * 100;
    $remainingGuaiwuHp .= 'px';

    $remainingPlayerHp = ($player->uhp / $player->umaxhp) * 100;
    $remainingPlayerHp .= 'px';

    $html = <<<HTML
<div class="h-full">
    <div style="background: url('images/bg-pve.jpg');">
        <div class="flex justify-between p-2">
            <div>
                <div class="flex items-end">
                    <img class="h-[40px]" src="images/pve/player-avatar.png" />
                    <span class="pb-[2px]">$player->uname [lv:$player->ulv]</span>
                </div>
                <div class="mt-2">
                    <div class="flex items-center justify-start">
                        <span class="pr-2">
                            HP
                        </span>
                        <div class="h-3 w-24 rounded-full bg-[#212121] flex items-center p-[2px]">
                            <div class="h-2 w-20 rounded-full bg-red-600" style="width: $remainingPlayerHp;"></div>
                        </div>
                    </div>
                </div>
                <div class="flex justify-start">
                    Công kích:($player->ugj)<br />
                    Phòng ngự:($player->ufy)<br />
                </div>
            </div>
            <div>
                <div class="flex items-end">
                    <span class="pb-[2px]">$guaiwu->gname [lv:$guaiwu->glv]</span>
                    <img class="h-[40px]" src="images/pve/monter-avatar.png" />
                </div>
                <div class="mt-2">
                    <div class="flex items-center justify-end">
                        <div class="h-3 w-24 rounded-full bg-[#212121] flex items-center p-[2px]">
                            <div class="h-2 w-12 rounded-full bg-red-600" style="width: $remainingGuaiwuHp;"></div>
                        </div>
                        <span class="pl-2">
                            HP
                        </span>
                    </div>
                </div>
                <div class="flex justify-end">
                    Công kích:($guaiwu->ggj)<br />
                    Phòng ngự:($guaiwu->gfy)<br />
                </div>
            </div>
        </div>
        <div class="flex justify-around mt-3">
            <div class="relative">
                <span class="absolute top-0 right-0 font-semibold text-2xl text-red-500">$phurt$pvexx</span>
                <img class="h-[185px]" src="images/pve/player.png" />
            </div>
            <div class="relative">
                <span class="absolute top-0 right-0 font-semibold text-2xl text-red-500">$pvebj$ghurt</span>
                <img class="h-[185px]" src="images/pve/monter.png" />
            </div>
        </div>
    </div>

    
    <div class="flex">
        <a 
        class="!flex items-center justify-center bg-[#621e1f] !text-white h-[34px] on-attach" 
        cmd="pvegj" 
        gid="$gid" 
        sid="$player->sid" 
        nowmid="$nowmid">
            <svg class="svg-inline--fa fa-sword fa-w-16 w-[12px] mr-1" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="sword" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="">
                <path
                    fill="currentColor"
                    d="M110.11 227.59c-6.25-6.25-16.38-6.25-22.63 0l-18.79 18.8a16.005 16.005 0 0 0-2 20.19l53.39 80.09-53.43 53.43-29.26-14.63a13.902 13.902 0 0 0-16.04 2.6L4.07 405.36c-5.42 5.43-5.42 14.22 0 19.64L87 507.93c5.42 5.42 14.22 5.42 19.64 0l17.29-17.29a13.873 13.873 0 0 0 2.6-16.03l-14.63-29.26 53.43-53.43 80.09 53.39c6.35 4.23 14.8 3.39 20.19-2l18.8-18.79c6.25-6.25 6.25-16.38 0-22.63l-174.3-174.3zM493.73.16L400 16 171.89 244.11l96 96L496 112l15.83-93.73c1.51-10.56-7.54-19.61-18.1-18.11z"
                ></path>
            </svg>
            <div>Công kích</div>
        </a>
        <a class="bg-[#621e1f] !text-white h-[34px] !flex items-center" href="?cmd=$gonowmid">Chạy trốn</a>
    </div>
    <div class="bg-[#efebe0]">
        $tishihtml
        <div class="text-center">[Bắt đầu chiến đấu]</div>
    </div>
</div>

<script>
$('.on-attach').unbind('click').bind('click', function () {
    console.log("on-attach")
    $.get(`game/pve.php?gid=$gid&cmd=pvegj&sid=$sid&nowmid=$nowmid`, (response) => {
        $('.teleport').html(response)
        // $(".teleport").modal({
        //     fadeDuration: 100
        // });
    })
});
</script>
HTML;
}

echo $html;


//<div class="p2">
//        <div class="flex">
//            <span>Kỹ năng: </span>
//            <div class="flex">
//                <a class="!flex items-center bg-[#000000] !text-white text-xs" href="?cmd=$usejn1"><img class="w-[30px]" src="images/skill/skill1.png" /><span>$jnname1</span></a>
//                <a class="!flex items-center bg-[#000000] !text-white text-xs" href="?cmd=$usejn2"><img class="w-[30px]" src="images/skill/skill1.png" /><span>$jnname2</span></a>
//                <a class="!flex items-center bg-[#000000] !text-white text-xs" href="?cmd=$usejn3"><img class="w-[30px]" src="images/skill/skill1.png" /><span>$jnname3</span></a>
//            </div>
//        </div>
//        <div>
//            <span>Vật phẩm: </span>
//            <div class="flex">
//                <a class="!flex items-center bg-[#000000] !text-white text-xs" href="?cmd=$useyp1"><img class="w-[30px]" src="images/daocu/hp.png" /><span>$ypname1</span></a>
//                <a class="!flex items-center bg-[#000000] !text-white text-xs" href="?cmd=$useyp2"><img class="w-[30px]" src="images/daocu/hp.png" /><span>$ypname2</span></a>
//                <a class="!flex items-center bg-[#000000] !text-white text-xs" href="?cmd=$useyp3"><img class="w-[30px]" src="images/daocu/hp.png" /><span>$ypname3</span></a>
//            </div>
//        </div>
//    </div>