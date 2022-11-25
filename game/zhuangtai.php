<?php
$player = player\getplayer($sid,$dblj);
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$getbagzbcmd = $encode->encode("cmd=getbagzb&sid=$sid");
//$clubplayer = \player\getclubplayer_once($sid,$dblj);
//if ($clubplayer){
//    $club = \player\getclub($clubplayer->clubid,$dblj);
//    $clubcmd = $encode->encode("cmd=club&sid=$sid");
//    $clubname ="<a href='?cmd=$clubcmd'>$club->clubname</a>";
//}else{
//    $clubname = "无门无派";
//}
if ($cmd == 'xxzb'){
    if (isset($zbwz)){
        $sql = "update game1 set tool$zbwz = 0 WHERE sid = '$sid'";
        $dblj->exec($sql);
        $player = player\getplayer($sid,$dblj);
    }
}
if ($cmd == 'setzbwz'){
    $arr = array($player->tool1,$player->tool2,$player->tool3,$player->tool4,$player->tool5,$player->tool6);
    if (isset($zbnowid) && isset($zbwz)){
        if (!in_array($zbnowid,$arr)){
            $nowzb = \player\getzb($zbnowid,$dblj);
            if ($nowzb->uid != $player->uid){
                echo "Ngươi không có nên trang bị, không cách nào trang bị<br/>";

            }elseif($nowzb->zblv - $player->ulv > 5){
                echo "Trang bị lớn hơn người chơi đẳng cấp, không cách nào trang bị<br/>";
            }elseif($nowzb->tool!=$zbwz && $nowzb->tool){
                echo "Trang bị chủng loại không phù hợp, không cách nào trang bị<br/>";
            }else{
                $sql = "update game1 set tool{$zbwz} = $zbnowid WHERE sid = '$sid'";
                $dblj->exec($sql);
                $player = player\getplayer($sid,$dblj);
            }

        }
    }
}

$tool1 = '';
$tool2 = '';
$tool3 = '';
$tool4 = '';
$tool5 = '';
$tool6 = '';

if ($player->tool1!=0){
    $zhuangbei = player\getzb($player->tool1,$dblj);
    $qhs = '';
    if ($zhuangbei->qianghua>0){
        $qhs = '+'.$zhuangbei->qianghua;
    }
    $xxzb1 = '<a href="?cmd='.$encode->encode("cmd=xxzb&zbwz=1&sid=$sid").'">Dỡ xuống</a>';
    $tool1 = '<a href="?cmd='.$encode->encode("cmd=chakanzb&zbnowid=$player->tool1&uid=$player->uid&sid=$sid").'">'.$zhuangbei->zbname.$qhs.'</a>'.$xxzb1;
}
if ($player->tool2!=0){
    $zhuangbei = player\getzb($player->tool2,$dblj);
    $qhs = '';
    if ($zhuangbei->qianghua>0){
        $qhs = '+'.$zhuangbei->qianghua;
    }
    $xxzb2 = '<a href="?cmd='.$encode->encode("cmd=xxzb&zbwz=2&sid=$sid").'">Dỡ xuống</a>';
    $tool2 = '<a href="?cmd='.$encode->encode("cmd=chakanzb&zbnowid=$player->tool2&uid=$player->uid&sid=$sid").'">'.$zhuangbei->zbname.$qhs.'</a>'.$xxzb2;
}
if ($player->tool3!=0){
    $zhuangbei = player\getzb($player->tool3,$dblj);
    $qhs = '';
    if ($zhuangbei->qianghua>0){
        $qhs = '+'.$zhuangbei->qianghua;
    }
    $xxzb3 = '<a href="?cmd='.$encode->encode("cmd=xxzb&zbwz=3&sid=$sid").'">Dỡ xuống</a>';
    $tool3 = '<a href="?cmd='.$encode->encode("cmd=chakanzb&zbnowid=$player->tool3&uid=$player->uid&sid=$sid").'">'.$zhuangbei->zbname.$qhs.'</a>'.$xxzb3;
}
if ($player->tool4!=0){
    $zhuangbei = player\getzb($player->tool4,$dblj);
    $qhs = '';
    if ($zhuangbei->qianghua>0){
        $qhs = '+'.$zhuangbei->qianghua;
    }
    $xxzb4 = '<a href="?cmd='.$encode->encode("cmd=xxzb&zbwz=4&sid=$sid").'">Dỡ xuống</a>';
    $tool4 = '<a href="?cmd='.$encode->encode("cmd=chakanzb&zbnowid=$player->tool4&uid=$player->uid&sid=$sid").'">'.$zhuangbei->zbname.$qhs.'</a>'.$xxzb4;
}
if ($player->tool5!=0){
    $zhuangbei = player\getzb($player->tool5,$dblj);
    $qhs = '';
    if ($zhuangbei->qianghua>0){
        $qhs = '+'.$zhuangbei->qianghua;
    }
    $xxzb5 = '<a href="?cmd='.$encode->encode("cmd=xxzb&zbwz=5&sid=$sid").'">Dỡ xuống</a>';
    $tool5 = '<a href="?cmd='.$encode->encode("cmd=chakanzb&zbnowid=$player->tool5&uid=$player->uid&sid=$sid").'">'.$zhuangbei->zbname.$qhs.'</a>'.$xxzb5;
}
if ($player->tool6!=0){
    $zhuangbei = player\getzb($player->tool6,$dblj);
    $qhs = '';
    if ($zhuangbei->qianghua>0){
        $qhs = '+'.$zhuangbei->qianghua;
    }
    $xxzb6 = '<a href="?cmd='.$encode->encode("cmd=xxzb&zbwz=6&sid=$sid").'">Dỡ xuống</a>';
    $tool6 = '<a href="?cmd='.$encode->encode("cmd=chakanzb&zbnowid=$player->tool6&uid=$player->uid&sid=$sid").'">'.$zhuangbei->zbname.$qhs.'</a>'.$xxzb6;

}

$html = <<<HTML
==Tầm Tiên kỷ trạng thái==<br/>
Nickname:$player->uname<br/>

Cảnh giới:$player->jingjie$player->cengci<br/>
Đẳng cấp:$player->ulv<br/>
Tu vị:$player->uexp/$player->umaxexp<br/>
Linh thạch:$player->uyxb<br/>
Cực phẩm linh thạch:$player->uczb<br/>
Khí huyết:$player->uhp/$player->umaxhp<br/>
Công Kích:$player->ugj<br/>
Phòng Ngự:$player->ufy<br/>
Bạo kích:$player->ubj%<br/>
Hút máu:$player->uxx%<br/>
=========<br/>
Vũ khí:$tool1<br/>
Ngọc Bội:$tool2<br/>
Quần áo:$tool3<br/>
Đai lưng:$tool4<br/>
Nhẫn:$tool5<br/>
Giày:$tool6<br/><br/>
<a href="?cmd=$getbagzbcmd">Trang bị</a>
<br/><br/>
<button onClick="javascript :history.back(-1);">Trở về</button> <a href="?cmd=$gonowmid">Trở về trò chơi</a>
HTML;
echo $html;
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/6/10
 * Time: 17:34
 */?>