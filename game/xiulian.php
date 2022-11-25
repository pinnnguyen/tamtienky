<?php
$player = \player\getplayer($sid,$dblj);
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$strxl = $encode->encode("cmd=startxiulian&canshu=1&sid=$sid");
$strxl1 = $encode->encode("cmd=startxiulian&canshu=2&sid=$sid");
$endxl = $encode->encode("cmd=endxiulian&sid=$sid");
$nowdate = date('Y-m-d H:i:s');
$xlsjc='Chưa bắt đầu tu luyện';
$tishi = '';
$xlexp = 0;
$xiaohao = 32 * $player->ulv;
$jpxiaohao = round(($player->ulv+1)/2);


if ($cmd == 'startxiulian'){
    if ($player->sfxl == 1){
        $tishi = 'Ngươi đã tại trong tu luyện<br/>';
    }else{
        if ($canshu == 1){
            $ret = \player\changeyxb(2,$xiaohao,$sid,$dblj);
        }else{
            $ret = \player\changeczb(2,$jpxiaohao,$sid,$dblj);
        }
        if ($ret){
            \player\changeplayersx('xiuliantime',$nowdate,$sid,$dblj);
            \player\changeplayersx('sfxl',1,$sid,$dblj);
            $tishi = 'Bắt đầu tu luyện...<br/>';
            $xlsjc = 0;
            $player = \player\getplayer($sid,$dblj);
        }else{
            $tishi='Linh thạch không đủ';
        }

    }
}elseif ($cmd == 'endxiulian'){
    if ($player->sfxl == 1){
        \player\changeexp($sid,$dblj,$xlexp);
        \player\changeplayersx('sfxl',0,$sid,$dblj);
        $xlsjc = 'Kết thúc tu luyện...<br/>Thời gian tu luyện:'.$xlsjc;
        $tishi = 'Thu hoạch được tu vị:'.$xlexp.'<br/>';
        $xlexp = 0;
        $player = \player\getplayer($sid,$dblj);
    }else{
        $tishi = 'Ngươi còn chưa có bắt đầu tu luyện...<br/>';
    }
}

if ($player->sfxl == 1){
    $one = strtotime($nowdate) ;
    $tow = strtotime($player->xiuliantime);
    $xlsjc=floor(($one-$tow)/60);
    if ($xlsjc > 1440){
        $xlsjc = 1440;
    }
    $xlexp = round($xlsjc * $player->ulv*1.2);

    $tishi = 'Trong tu luyện<br/>';
    $xlcz = "<a href=?cmd=$endxl>Kết thúc tu luyện</a><br/><br/>";
}else{
    $xlcz = "<a href=?cmd=$strxl>Sử dụng linh thạch tu luyện</a><a href=?cmd=$strxl1>Sử dụng cực phẩm linh thạch tu luyện</a><br/><br/>";
}



$xlhtml = <<<HTML
$player->uname<br/>
$player->jingjie($player->ulv)<br/>
===============<br/>
Thời gian tu luyện:$xlsjc Phút<br/>
Tu luyện ích lợi:$xlexp Tu vị<br/>
===============<br/>
$tishi
Chú thích: Nhiều nhất tu luyện 24 giờ, 1440 phút đồng hồ<br/>
<br/>
Tu luyện cần linh thạch:$xiaohao/$player->uyxb<br/>
Tu luyện cần cực phẩm linh thạch:$jpxiaohao/$player->uczb<br/>
$xlcz
<a href="?cmd=$gonowmid">Trở về trò chơi</a>
HTML;
echo $xlhtml;
?>