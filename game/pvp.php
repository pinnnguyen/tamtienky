<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/6/21
 * Time: 22:22
 */
//if (!isset($uid)){
//
//}
$cxmid = \player\getmid($player->nowmid,$dblj);
$cxqy = \player\getqy($cxmid->mqy,$dblj);
$gorehpmid = $encode->encode("cmd=gomid&newmid=$cxqy->mid&sid=$player->sid");
$player = \player\getplayer($sid,$dblj);
$pvper = \player\getplayer1($uid,$dblj);
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$player->sid");
if ($cxmid->ispvp == 0){
    \player\changeplayersx("ispvp",0,$sid,$dblj);
    $tishihtml = 'Trước mắt địa đồ không cho phép PK<br/><br/>'.
        '<a href="?cmd='.$gonowmid.'">Trở về trò chơi</a>';
    exit($tishihtml);;
}

if ($pvper->sfzx == 0){
    \player\changeplayersx("ispvp",0,$sid,$dblj);
    $tishihtml = 'Người chơi không trực tuyến<br/><br/>'.
        '<a href="?cmd='.$gonowmid.'">Trở về trò chơi</a>';
    exit($tishihtml);;
}
if ($pvper->nowmid != $player->nowmid){
    \player\changeplayersx("ispvp",0,$sid,$dblj);
    $tishihtml = 'Người chơi không có trên bản đồ<br/><br/>'.
        '<a href="?cmd='.$gonowmid.'">Trở về trò chơi</a>';
    exit($tishihtml);
}
if ($player->uhp<=0){
    \player\changeplayersx("ispvp",0,$sid,$dblj);
    $tishihtml = 'Bạn bị thương nặng, không thể chiến đấu<br/><br/>'.
        '<a href="?cmd='.$gorehpmid.'">Trở về trò chơi</a>';
    exit($tishihtml);
}
if ($pvper->uhp<=0){
    \player\changeplayersx("ispvp",0,$sid,$dblj);
    $tishihtml = 'Người chơi đã chết<br/><br/>'.
        '<a href="?cmd='.$gonowmid.'">Trở về trò chơi</a>';
    exit($tishihtml);
}
//\player\changeplayersx("ispvp",$pvper->uid,$sid,$dblj);
\player\changeplayersx("ispvp",$player->uid,$pvper->sid,$dblj);
$pvperhurt = '';
$tishihtml = '';
$pvpbj = '';

if (isset($canshu)){
    switch ($canshu){
        case 'gj':
            $jineng = new \player\jineng();
            if (isset($jnid)){
                $ret = \player\delejnsum($jnid,1,$sid,$dblj);
                if ($ret){
                    $jineng = \player\getplayerjineng($jnid,$sid,$dblj);
                    $tishihtml = "Sử dụng kỹ năng:$jineng->jnname<br/>";
                }else{
                    $tishihtml = "Không đủ kỹ năng<br/>";
                }
            }
            $player->ugj +=$jineng->jngj;
            $player->ufy +=$jineng->jnfy;
            $player->ubj +=$jineng->jnbj;
            $player->uxx +=$jineng->jnxx;

            $ran = mt_rand(1,100);
            if ($player->ubj >= $ran){
                $player->ugj = round($player->ugj * 1.82);
                $pvpbj = 'Bạo kích';
            }

            $pvperhurt = round($player->ugj - $pvper->ufy * 0.75,0);
            if ($pvperhurt < $player->ugj * 0.05){
                $pvperhurt = round($player->ugj*0.05);
            }

            $pvpxx = round($pvperhurt*($player->uxx/100));

            $sql = "update game1 set uhp = uhp - $pvperhurt  WHERE sid = '$pvper->sid'";
            $dblj->exec($sql);


            \player\addplayersx("uhp",$pvpxx,$sid,$dblj);

            $player =  player\getplayer($sid,$dblj);
            if ($player->uhp > $player->umaxhp){
                \player\changeplayersx("uhp",$player->umaxhp,$sid,$dblj);
                $player =  player\getplayer($sid,$dblj);
            }
            $pvper = \player\getplayer1($uid,$dblj);
            $pvperhurt = '-'.$pvperhurt;

            // Kẻ địch công kích lại
            $playerhurt = round($pvper->ugj - $player->ufy * 0.75,0);
            if ($playerhurt < $pvper->ugj * 0.05){
                $playerhurt = round($pvper->ugj*0.05);
            }

            $pvpyy = round($playerhurt*($pvper->uxx/100));

            $sql = "update game1 set uhp = uhp - $playerhurt  WHERE sid = '$player->sid'";
            $dblj->exec($sql);

        // update trạng thái
            \player\addplayersx("uhp",$pvpxx,$uid,$dblj);

            $pvper =  player\getplayer1($uid,$dblj);
            if ($pvper->uhp > $pvper->umaxhp){
                \player\changeplayersx("uhp",$pvper->umaxhp,$uid,$dblj);
                $pvper =  player\getplayer1($uid,$dblj);
            }
            $player = \player\getplayer($sid,$dblj);
            $playerhurt = '-'.$playerhurt;


            if ($player->uhp<=0){
                \player\changeplayersx("ispvp",0,$sid,$dblj);
                \player\changeplayersx("ispvp",0,$pvper->sid,$dblj);
                $dieinfo = ["Đại hiệp $player->uname đã bị $pvper->uname đánh bại","$pvper->uname đập cho $player->uname tơi tả, không thể đứng vững"," $player->uname bại trận $pvper->uname từ nay sinh hoạt không thể tự lo"];
                $randdie = mt_rand(0,count($dieinfo)-1);
                $msg = $dieinfo[$randdie];
                $sql = "insert into ggliaotian(name,msg,uid) values('Bách Hiểu Sinh','$msg','0')";
                $cxjg = $dblj->exec($sql);
                $html = '
                    Chiến đấu kết quả:<br/>
                    Ngươi bị đánh bại bởi '.$pvper->uname.'<br/>
                    Chiến đấu thất bại!<br/>
                    <a href="?cmd='.$gonowmid.'">Trở về trò chơi</a>';
                // // update lại máy trước khi pvp
                // $sql = "update game1 set uhp = $pvpoldhp  WHERE sid = '$pvper->sid'";
                // $dblj->exec($sql);

                // $sql = "update game1 set uhp = $playeroldhp  WHERE sid = '$player->sid'";
                // $dblj->exec($sql);
                exit($html);
            }


            if ($pvper->uhp<=0){
                \player\changeplayersx("ispvp",0,$sid,$dblj);
                \player\changeplayersx("ispvp",0,$pvper->sid,$dblj);
                $dieinfo = ["Nghe nói $player->uname đánh bại $pvper->uname","$pvper->uname bị $player->uname đánh cho hoa rơi nước chảy"," $player->uname đem $pvper->uname đánh cho sinh hoạt không thể tự lo"];
                $randdie = mt_rand(0,count($dieinfo)-1);
                $msg = $dieinfo[$randdie];
                $sql = "insert into ggliaotian(name,msg,uid) values('Bách Hiểu Sinh','$msg','0')";
                $cxjg = $dblj->exec($sql);
                $html = '
                    Chiến đấu kết quả:<br/>
                    Ngươi đánh bại '.$pvper->uname.'<br/>
                    Chiến đấu thắng lợi!<br/>
                    <a href="?cmd='.$gonowmid.'">Trở về trò chơi</a>';
                // // update lại máy trước khi pvp
                // $sql = "update game1 set uhp = $pvpoldhp  WHERE sid = '$pvper->sid'";
                // $dblj->exec($sql);

                // $sql = "update game1 set uhp = $playeroldhp  WHERE sid = '$player->sid'";
                // $dblj->exec($sql);
                exit($html);
            }
            break;
    }
}

if ($player->uhp<=0){
    $cxmid = \player\getmid($player->nowmid,$dblj);
    $cxqy = \player\getqy($cxmid->mqy,$dblj);
    \player\changeplayersx("ispvp",0,$sid,$dblj);
    \player\changeplayersx("ispvp",0,$pvper->sid,$dblj);
    $html = <<<HTML
            Chiến đấu kết quả:<br/>
            Ngươi bị $guaiwu->gname Đánh bại<br/>
            Chiến đấu thất bại!<br/>
            Mời Thiếu Hiệp thử lại<br/>
            <br/>
            <a href="?cmd=$gorehpmid">Trở về trò chơi</a>
HTML;
    exit($html);
}

$pgjcmd = $encode->encode("cmd=pvp&canshu=gj&uid=$uid&sid=$player->sid");

$usejn1 = $encode->encode("cmd=pvp&canshu=usejn&jnid=$player->jn1&sid=$sid&uid=$uid");
$usejn2 = $encode->encode("cmd=pvp&canshu=usejn&jnid=$player->jn2&sid=$sid&uid=$uid");
$usejn3 = $encode->encode("cmd=pvp&canshu=usejn&jnid=$player->jn3&sid=$sid&uid=$uid");

$jnname1 = 'Phù lục 1';
$jnname2 = 'Phù lục 2';
$jnname3 = 'Phù lục 3';


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

$html = <<<HTML
==Chiến đấu==<br/>
$pvper->uname [lv:$pvper->ulv]<br/>
Khí huyết:(<div class="hpys" style="display: inline">$pvper->uhp</div>/<div class="hpys" style="display: inline">$pvper->umaxhp</div>)$pvpbj $pvperhurt<br/>
Công kích:($pvper->ugj)<br/>
Phòng ngự:($pvper->ufy)<br/>
===================<br/>
$player->uname [lv:$player->ulv]<br/>
Khí huyết:(<div class="hpys" style="display: inline">$player->uhp</div>/<div class="hpys" style="display: inline">$player->umaxhp</div>) $playerhurt<br/>
Công kích:($player->ugj)<br/>
Phòng ngự:($player->ufy)<br/>
$tishihtml
<ul>
<li><a href="?cmd=$pgjcmd">Công kích</a></li><br/>
<li><a href="?cmd=$gonowmid">Chạy trốn</a></li>
</ul>
<a href="?cmd=$usejn1">$jnname1</a>.<a href="?cmd=$usejn2">$jnname2</a>.<a href="?cmd=$usejn3">$jnname3</a><br/>
<br/>
HTML;
echo $html;
