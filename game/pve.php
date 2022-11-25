<?php
$player =  player\getplayer($sid,$dblj);
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$player->sid");
$cxmid = \player\getmid($player->nowmid,$dblj);
$cxqy = \player\getqy($cxmid->mqy,$dblj);

$gorehpmid = $encode->encode("cmd=gomid&newmid=$cxqy->mid&sid=$player->sid");
$rwts = '';
$cwhtml='';
$pgjcmd = $encode->encode("cmd=pvegj&gid=$gid&sid=$player->sid&nowmid=$nowmid");
$guaiwu = player\getguaiwu($gid,$dblj);
$yguaiwu = new \player\guaiwu();
if ($guaiwu->gyid){
    $yguaiwu = player\getyguaiwu($guaiwu->gyid,$dblj);
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
$tishihtml='';
if ($nowmid!=$player->nowmid){
    $html = <<<HTML
        Mời bình thường chơi game!<br/>
        <br/>
        <a href="?cmd=$gonowmid">Trở về trò chơi</a>
HTML;
    echo $html;
    exit();
}

if (($guaiwu->sid!=$player->sid && $guaiwu->sid!='') || ($guaiwu->gid=='')){
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

if (isset($canshu)){

    if ($canshu == 'useyp'){
        $ret = \player\useyaopin($ypid,1,$sid,$dblj);
        $player =  player\getplayer($sid,$dblj);
    }
}

if($cmd=='pve' && $guaiwu->sid==''){
    if ($player->ulv >= 10 && $player->uhp <=0){
        $zdjg = -1;
    }else{
        $sql = "update midguaiwu set sid = '$sid' WHERE id='$gid'";
        $dblj->exec($sql);
        $cw = \player\getchongwu($player->cw,$dblj);
        \player\changecwsx('cwhp',$cw->cwmaxhp,$player->cw,$dblj);
        if($player->ulv <= 10){
            \player\changeplayersx('uhp',$player->umaxhp,$sid,$dblj);
            $player =  player\getplayer($sid,$dblj);
        }
    }

}elseif ($cmd == 'pvegj' && $gid != 0){
    // echo "Bạn công kích quái nè";
    //普通Công kích
    $hurt = false;
    $ghurt = 0;
    $jineng = new \player\jineng();

    if (isset($canshu)){
        switch ($canshu){
            case 'usejn':
                $ret = \player\delejnsum($jnid,1,$sid,$dblj);
                if ($ret){
                    $jineng = \player\getplayerjineng($jnid,$sid,$dblj);
                    $tishihtml = "Kỹ năng:$jineng->jnname<br/>";
                }else{
                    $tishihtml = "Kỹ năng không đủ<br/>";
                }

                break;
        }
    }

    $player->ugj +=$jineng->jngj;
    $player->ufy +=$jineng->jnfy;
    $player->ubj +=$jineng->jnbj;
    $player->uxx +=$jineng->jnxx;

    //如果是负数会影响获取不到修为
    $lvc = $player->ulv - $guaiwu->glv; //人物等级-怪物等级 如果人物等级比怪物等级低，就不爆强化石。改为人物等级高怪物10级后才不爆，比怪物低的话随便
    // if ($lvc >= 10){ //如果人物等级大怪物等级十级，返回0.改掉，只要这个差值
        // $lvc = 0;
    // }

    $phurt = 0 ;

    $phurt = round($guaiwu->ggj - ($player->ufy * 0.75),0);
    if ($phurt<$guaiwu->ggj*0.15){
        $phurt = round($guaiwu->ggj*0.15);
    }

    $ran = mt_rand(1,100);
    if ($player->ubj >= $ran){
        $player->ugj = round($player->ugj * 1.72);
        $pvebj = 'Bạo kích';
    }

    $gphurt = round($player->ugj - ($guaiwu->gfy * 0.75),0);
    if ($gphurt < $player->ugj*0.15){
        $gphurt = round( $player->ugj * 0.15);
    }
    $pvexx = ceil($gphurt * ($player->uxx/100) );

    if ($phurt <= 0){
        $hurt = true;
    }

    if ($phurt < $pvexx){
        $pvexx = $phurt - 7;

        if ($pvexx<0){
            $pvexx = 0;
        }
    }

    $sql = "update midguaiwu set ghp = ghp - {$gphurt} WHERE id='$gid'";
    $dblj->exec($sql);
    $guaiwu = player\getguaiwu($gid,$dblj);
    if ($guaiwu->ghp<=0){//怪物死亡
        $sql = "delete from midguaiwu where id = $gid AND sid='$player->sid'";
        $dblj->exec($sql);

        $yxb = round($guaiwu->glv/2.9) + 1;
        if (($hurt || $lvc >=5)&&!($guaiwu->glv>=46 && $player->ulv>=50)){  //没有进行伤害或者人物比怪物高5级,并且不在怪物大于46级，人物大于50的情况下，才不爆灵石
            $yxb = 0;
        }
        $ret = \player\changeyxb(1,$yxb,$sid,$dblj);
        if ($ret){
            $huode .= "Thu hoạch linh thạch:$yxb<br/>";
        }
        $taskarr = \player\getplayerrenwu($sid,$dblj);
        \player\changerwyq1(2,$guaiwu->gyid,1,$sid,$dblj);
        for ($i=0;$i<count($taskarr);$i++){
            $rwyq = $taskarr[$i]['rwyq'];
            $rwid = $taskarr[$i]['rwid'];
            $rwzl = $taskarr[$i]['rwzl'];
            $rwzt = $taskarr[$i]['rwzt'];
            if ($rwyq==$guaiwu->gyid && $rwzl==2 && $rwzt!=3){
                $rwnowcount = $taskarr[$i]['rwnowcount']+ 1;
                $rwts = $taskarr[$i]['rwname'].'('.$rwnowcount."/".$taskarr[$i]['rwcount'].')<br/>';
                break;
            }
        }

        $sjjv = mt_rand(1,120); //取随机数，判断爆率，然后看怪物装备有的话
        if ($yguaiwu->dljv >=$sjjv && $yguaiwu->gzb != ''){
            $sql = "select * from zhuangbei WHERE zbid in ($yguaiwu->gzb)";
            $cxdljg = $dblj->query($sql);
            if ($cxdljg){
                $retzb = $cxdljg->fetchAll(PDO::FETCH_ASSOC);
                $sjdl = mt_rand(0,count($retzb)-1);
                $zbname = $retzb[$sjdl]['zbname'];
                $zbid = $retzb[$sjdl]['zbid'];
                $zbnowid = player\addzb($sid,$zbid,$dblj);
                $chakanzb = $encode->encode("cmd=chakanzb&zbnowid=$zbnowid&uid=$player->uid&sid=$sid");
                $huode .= "Thu hoạch: <div class='zbys'>".'<a href="?cmd='.$chakanzb.'">'.$zbname .'</a></div>';
            }
        }
        $sjjv = mt_rand(1,180);//djjv 道具几率1-100 gdj是道具物品id,用逗号分隔
        if ($yguaiwu->djjv >= $sjjv && $yguaiwu->gdj != ''){
            $sql = "select * from daoju WHERE djid in ($yguaiwu->gdj)";
            $cxdljg = $dblj->query($sql);
            if ($cxdljg){
                $retdj = $cxdljg->fetchAll(PDO::FETCH_ASSOC);
                $sjdj = mt_rand(0,count($retdj)-1);
                $djname = $retdj[$sjdj]['djname'];
                $djid = $retdj[$sjdj]['djid'];
                if (($djid == 1 && $lvc >= 5)&&!($djid == 1 && $guaiwu->glv>=46 && $player->ulv>=50)){ //道具id 1是强化石，这里意思是强化石在人物比怪物等级高10级后不会爆,看pve.php文件107行
                    goto yp;
                }
                $djsum = mt_rand(1,2); //随机获得1到两个道具
                \player\adddj($sid,$djid,$djsum,$dblj);
                $huode .= "Thu hoạch: <div class='djys'>$djname x$djsum</div>";

                for ($i=0;$i<count($taskarr);$i++){
                    $rwyq = $taskarr[$i]['rwyq'];
                    $rwid = $taskarr[$i]['rwid'];
                    $rwzl = $taskarr[$i]['rwzl'];
                    $rwzt = $taskarr[$i]['rwzt'];
                    if ($rwyq==$djid && $rwzl==1 && $rwzt!=3){
                        $rwnowcount = $taskarr[$i]['rwnowcount']+ $djsum;
                        $rwts = $taskarr[$i]['rwname'].'('.$rwnowcount."/".$taskarr[$i]['rwcount'].')<br/>';
                        break;
                    }
                }

            }
        }
        yp:
        $sjjv = mt_rand(1,100);
        if ($yguaiwu->ypjv >= $sjjv && $yguaiwu->gyp != ''){
            $sql = "select * from yaopin WHERE ypid in ($yguaiwu->gyp)";
            $cxdljg = $dblj->query($sql);
            $retyp = $cxdljg->fetchAll(PDO::FETCH_ASSOC);
            $sjdj = mt_rand(0, count($retyp) - 1);
            $ypname = $retyp[$sjdj]['ypname'];
            $ypid = $retyp[$sjdj]['ypid'];
            $ypsum = mt_rand(1, 2);
            \player\addyaopin($sid,$ypid,$ypsum,$dblj);
            $huode .= "Thu hoạch: <div class='ypys'>$ypname x$ypsum</div>";
        }

        if($lvc<0){ //说明人物越级打怪，应该给提成
            $guaiwu->gexp = round($guaiwu->gexp + 5*abs($lvc),0);//经验计算
        }
        elseif($lvc>=0){//说明人物等级比怪物等级高，应该消减经验
            $guaiwu->gexp = round($guaiwu->gexp / ($lvc+1),0);//经验计算
        }
        if($guaiwu->gexp < 3){//如果人物比怪物高太多了，还是象征性给3点经验
            $guaiwu->gexp = 3;
        }
        $zdjg = 1;
    }
    $pzssh = $phurt - $pvexx;
    $sql = "update game1 set uhp = uhp - $pzssh  WHERE sid = '$sid'";
    $dblj->exec($sql);
    $player =  player\getplayer($sid,$dblj);
    if ($player->uhp > $player->umaxhp){
        $sql = "update game1 set uhp = $player->umaxhp WHERE sid = '$sid'";
        $dblj->exec($sql);
        $player->uhp = $player->umaxhp;
    }
    if ($player->uhp <= 0){
        $zdjg = 0;
    }
}

if ($player->yp1!=0){
    $yaopin = \player\getplayeryaopin($player->yp1,$sid,$dblj);
    $ypname1 = $yaopin->ypname.'('.$yaopin->ypsum.')';
}
if ($player->yp2!=0){
    $yaopin = \player\getplayeryaopin($player->yp2,$sid,$dblj);
    $ypname2 = $yaopin->ypname.'('.$yaopin->ypsum.')';
}
if ($player->yp3!=0){
    $yaopin = \player\getplayeryaopin($player->yp3,$sid,$dblj);
    $ypname3 = $yaopin->ypname.'('.$yaopin->ypsum.')';
}

if ($player->jn1!=0){
    $jineng = \player\getplayerjineng($player->jn1,$sid,$dblj);
    if ($jineng){
        $jnname1 = $jineng->jnname.'('.$jineng->jncount.')';
    }
}
if ($player->jn2!=0){
    $jineng = \player\getplayerjineng($player->jn2,$sid,$dblj);
    if ($jineng){
        $jnname2 = $jineng->jnname.'('.$jineng->jncount.')';
    }
}
if ($player->jn3!=0){
    $jineng = \player\getplayerjineng($player->jn3,$sid,$dblj);;
    if ($jineng){
        $jnname3 = $jineng->jnname.'('.$jineng->jncount.')';
    }
}

if (isset($zdjg)){
    switch ($zdjg){
        case 1:

            player\changeexp($sid,$dblj,$guaiwu->gexp);
            $huode.='Thu hoạch được tu vị:'.$guaiwu->gexp.'<br/>';

            $html = <<<HTML
            Kết quả:<br/>
            Ngươi giết $guaiwu->gname<br/>
            Chiến đấu thắng lợi!<br/>
            $huode
            $rwts<br/>
            <a href="?cmd=$gonowmid">Trở về trò chơi</a>
HTML;
            break;
        case 0:
            $html = <<<HTML
            Kết quả:<br/>
            Ngươi bị $guaiwu->gname đánh bại<br/>
            Chiến đấu thất bại!<br/>
            Mời Thiếu Hiệp thử lại<br/>
            <br/>
            <a href="?cmd=$gorehpmid">Trở về trò chơi</a>
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
}else{
    if (isset($gphurt) && $gphurt>0){
        $ghurt='-'.$gphurt;
    }else{
        $ghurt='';
    }
    if (isset($cwhurt) && $cwhurt>0){
        $cwhurt='-'.$cwhurt;
    }else{
        $cwhurt='';
    }
    if (isset($phurt) && $phurt>0){
        $phurt='-'.$phurt;
    }else{
        $phurt='';
    }

    if ($pvexx>0){
        $pvexx="(+".$pvexx.')';
    }else{
        $pvexx = '';
    }

//    if ($player->cw!=0){
//        $cw = \player\getchongwu($player->cw,$dblj);
//        if ($cwhurt!='' || $cw->cwhp>0){
//            $cwhtml=<<<HTML
//            ===============<br/>
//            宠物:$cw->cwname[lv:$cw->cwlv]<br/>
//            Khí huyết:(<div class="hpys" style="display: inline">$cw->cwhp</div>/<div class="hpys" style="display: inline">$cw->cwmaxhp</div>)$cwhurt<br/>
//            Công kích:($cw->cwgj)<br/>
//            Phòng ngự:($cw->cwfy)<br/>
//HTML;
//        }
//
//    }
    
$html = <<<HTML
==Chiến đấu==<br/>
$guaiwu->gname [lv:$guaiwu->glv]<br/>
Khí huyết:(<div class="hpys" style="display: inline">$guaiwu->ghp</div>/<div class="hpys" style="display: inline">$guaiwu->gmaxhp</div>)$pvebj$ghurt<br/>
Công kích:($guaiwu->ggj)<br/>
Phòng ngự:($guaiwu->gfy)<br/>
===================<br/>
$player->uname [lv:$player->ulv]<br/>
Khí huyết:(<div class="hpys" style="display: inline">$player->uhp</div>/<div class="hpys" style="display: inline">$player->umaxhp</div>)$phurt$pvexx<br/>
Công kích:($player->ugj)<br/>
Phòng ngự:($player->ufy)<br/>
$tishihtml
<br/>
<ul>
<li><a href="?cmd=$gonowmid">Chạy trốn</a></li><br/>
<li><a href="?cmd=$pgjcmd">Công kích</a></li>
</ul>
<a href="?cmd=$usejn1">$jnname1</a> <a href="?cmd=$usejn2">$jnname2</a> <a href="?cmd=$usejn3">$jnname3</a><br/>
<a href="?cmd=$useyp1">$ypname1</a> <a href="?cmd=$useyp2">$ypname2</a> <a href="?cmd=$useyp3">$ypname3</a><br/>
<br/>
HTML;
}
echo $html;
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/6/11
 * Time: 12:09
 */
?>