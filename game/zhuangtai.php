<?php
$player = player\getplayer($sid, $dblj);
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

$duihuancmd = $encode->encode("cmd=duihuan&sid=$sid");
if ($cmd == 'xxzb') {
    if (isset($zbwz)) {
        $sql = "update game1 set tool$zbwz = 0 WHERE sid = '$sid'";
        $dblj->exec($sql);
        $player = player\getplayer($sid, $dblj);
    }
}
if ($cmd == 'setzbwz') {
    $arr = array($player->tool1, $player->tool2, $player->tool3, $player->tool4, $player->tool5, $player->tool6);
    if (isset($zbnowid) && isset($zbwz)) {
        if (!in_array($zbnowid, $arr)) {
            $nowzb = \player\getzb($zbnowid, $dblj);
            if ($nowzb->uid != $player->uid) {
                echo "Ngươi không có nên trang bị, không cách nào trang bị<br/>";

            } elseif ($nowzb->zblv - $player->ulv > 5) {
                echo "Trang bị lớn hơn người chơi đẳng cấp, không cách nào trang bị<br/>";
            } elseif ($nowzb->tool != $zbwz && $nowzb->tool) {
                echo "Trang bị chủng loại không phù hợp, không cách nào trang bị<br/>";
            } else {
                $sql = "update game1 set tool{$zbwz} = $zbnowid WHERE sid = '$sid'";
                $dblj->exec($sql);
                $player = player\getplayer($sid, $dblj);
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

if ($player->tool1 != 0) {
    $zhuangbei = player\getzb($player->tool1, $dblj);
    $qhs = '';
    if ($zhuangbei->qianghua > 0) {
        $qhs = '+' . $zhuangbei->qianghua;
    }
    $xxzb1 = '<a href="?cmd=' . $encode->encode("cmd=xxzb&zbwz=1&sid=$sid") . '">Dỡ xuống</a>';
    $tool1 = '<a href="?cmd=' . $encode->encode("cmd=chakanzb&zbnowid=$player->tool1&uid=$player->uid&sid=$sid") . '">' . $zhuangbei->zbname . $qhs . '</a>' . $xxzb1;
}
if ($player->tool2 != 0) {
    $zhuangbei = player\getzb($player->tool2, $dblj);
    $qhs = '';
    if ($zhuangbei->qianghua > 0) {
        $qhs = '+' . $zhuangbei->qianghua;
    }
    $xxzb2 = '<a href="?cmd=' . $encode->encode("cmd=xxzb&zbwz=2&sid=$sid") . '">Dỡ xuống</a>';
    $tool2 = '<a href="?cmd=' . $encode->encode("cmd=chakanzb&zbnowid=$player->tool2&uid=$player->uid&sid=$sid") . '">' . $zhuangbei->zbname . $qhs . '</a>' . $xxzb2;
}
if ($player->tool3 != 0) {
    $zhuangbei = player\getzb($player->tool3, $dblj);
    $qhs = '';
    if ($zhuangbei->qianghua > 0) {
        $qhs = '+' . $zhuangbei->qianghua;
    }
    $xxzb3 = '<a href="?cmd=' . $encode->encode("cmd=xxzb&zbwz=3&sid=$sid") . '">Dỡ xuống</a>';
    $tool3 = '<a href="?cmd=' . $encode->encode("cmd=chakanzb&zbnowid=$player->tool3&uid=$player->uid&sid=$sid") . '">' . $zhuangbei->zbname . $qhs . '</a>' . $xxzb3;
}
if ($player->tool4 != 0) {
    $zhuangbei = player\getzb($player->tool4, $dblj);
    $qhs = '';
    if ($zhuangbei->qianghua > 0) {
        $qhs = '+' . $zhuangbei->qianghua;
    }
    $xxzb4 = '<a href="?cmd=' . $encode->encode("cmd=xxzb&zbwz=4&sid=$sid") . '">Dỡ xuống</a>';
    $tool4 = '<a href="?cmd=' . $encode->encode("cmd=chakanzb&zbnowid=$player->tool4&uid=$player->uid&sid=$sid") . '">' . $zhuangbei->zbname . $qhs . '</a>' . $xxzb4;
}
if ($player->tool5 != 0) {
    $zhuangbei = player\getzb($player->tool5, $dblj);
    $qhs = '';
    if ($zhuangbei->qianghua > 0) {
        $qhs = '+' . $zhuangbei->qianghua;
    }
    $xxzb5 = '<a href="?cmd=' . $encode->encode("cmd=xxzb&zbwz=5&sid=$sid") . '">Dỡ xuống</a>';
    $tool5 = '<a href="?cmd=' . $encode->encode("cmd=chakanzb&zbnowid=$player->tool5&uid=$player->uid&sid=$sid") . '">' . $zhuangbei->zbname . $qhs . '</a>' . $xxzb5;
}
if ($player->tool6 != 0) {
    $zhuangbei = player\getzb($player->tool6, $dblj);
    $qhs = '';
    if ($zhuangbei->qianghua > 0) {
        $qhs = '+' . $zhuangbei->qianghua;
    }
    $xxzb6 = '<a href="?cmd=' . $encode->encode("cmd=xxzb&zbwz=6&sid=$sid") . '">Dỡ xuống</a>';
    $tool6 = '<a href="?cmd=' . $encode->encode("cmd=chakanzb&zbnowid=$player->tool6&uid=$player->uid&sid=$sid") . '">' . $zhuangbei->zbname . $qhs . '</a>' . $xxzb6;

}

$html = <<<HTML
<div class="bg-[#8ba6ab] w-full h-full">

<h3>
Thông tin thuộc tính
</h3>
<div>
Nickname1: $player->uname

</div>
<div>
Cảnh giới: $player->jingjie$player->cengci

</div>
<div>
Đẳng cấp: $player->ulv

</div>
<div>
Tu vị: $player->uexp/$player->umaxexp

</div>
<div>
Linh thạch: $player->uyxb

</div>
<div>
Cực phẩm linh thạch: $player->uczb

</div>
<div>
Khí huyết: $player->uhp/$player->umaxhp

</div>
<div>
Công Kích: $player->ugj

</div>
<div>
Phòng Ngự: $player->ufy

</div>
<div>
Bạo kích: $player->ubj%

</div>
<div>
Hút máu: $player->uxx%

</div>
<div>
<div>
Vũ khí: $tool1

</div>
<div>
Ngọc Bội: $tool2

</div>
<div>
Quần áo: $tool3

</div>
<div>
Đai lưng: $tool4

</div>
<div>
Nhẫn: $tool5

</div>
<div>
Giày: $tool6

</div>
</div>

<br/><br/>
<a href="?cmd=$duihuancmd" >Đ.thưởng</a>
<button onClick="javascript :history.back(-1);">Trở về</button> <a href="?cmd=$gonowmid">Trở về trò chơi</a>
</div>

HTML;
echo $html;
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/6/10
 * Time: 17:34
 */ ?>