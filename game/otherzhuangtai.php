<?php
$player = player\getplayer($sid, $dblj);
$player1 = player\getplayer1($uid, $dblj);
$immenu = '';

$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$pkcmd = $encode->encode("cmd=pvp&uid=$uid&sid=$sid");
$clubplayer = \player\getclubplayer_once($player1->sid, $dblj);
if (isset($canshu)) {
    if ($canshu == "addim") {
        \player\addim($uid, $sid, $dblj);
    }
}

if ($clubplayer) {
    $club = \player\getclub($clubplayer->clubid, $dblj);
    $clubcmd = $encode->encode("cmd=club&clubid=$club->clubid&sid=$sid");
    $clubname = "<a href='?cmd=$clubcmd'>$club->clubname</a>";
} else {
    $clubname = "Không môn không phái";
}
if ($player->sid != $player1->sid) {
    $immenu = "<br/><a href='?cmd=$pkcmd'>Tấn công</a><br/>";
    $ret = \player\isim($uid, $sid, $dblj);
    if (!$ret) {
        $addim = $encode->encode("cmd=getplayerinfo&canshu=addim&uid=$uid&sid=$sid");
        $immenu .= "<a href='?cmd=$addim'>Thêm bạn</a><br/>";
    } else {
        $chat = $encode->encode("cmd=getplayerinfo&canshu=addim&uid=$uid&sid=$sid");
        $deim = $encode->encode("cmd=im&canshu=deim&uid=$uid&sid=$sid");
        $immenu .= <<<HTML
        </a><a href='?cmd=$deim'>Xóa bạn bè</a>
<form id="sendmsg">
<input type="text" name="ltmsg" id="ltmsg">
<input type="hidden" name="cmd" value="sendliaotian">
<input type="hidden" name="ltlx" value="im">
<input type="hidden" name="sid" value="$sid">
<input type="hidden" name="imuid" value="$uid">
<input type="button" class="gamesubmit" id="btnsub" value="Gửi">
</form>
<script type="text/javascript" src="js/jquery-1.6.2.min.js"></script>
<script>
$(document).ready(function(){
  $("#btnsub").click(function(){
     var ltmsg = $("input#ltmsg").val();
     console.log(ltmsg);
if (ltmsg.length<2){
     if($("span#liaotianerror").length==0){
            $("form").append("</br><span style='font-size:14px' id='liaotianerror'>"+ltmsg+"Gửi không thành công! Độ dài phải lớn hơn 2</span>");
            }
            else{
                $("span#liaotianerror").text(ltmsg+"Gửi không thành công! Độ dài phải>=2");
            }
}else{
    $("#sendmsg").submit();
}
  });
});
</script>
HTML;
    }
    $immenu .= "<br/>";
}

$tool1 = '';
$tool2 = '';
$tool3 = '';
$tool4 = '';
$tool5 = '';
$tool6 = '';

if ($player1->tool1 != 0) {
    $zhuangbei = player\getzb($player1->tool1, $dblj);
    $qhs = '';
    if ($zhuangbei->qianghua > 0) {
        $qhs = '+' . $zhuangbei->qianghua;
    }
    $zbcmd = $encode->encode("cmd=chakanzb&zbnowid=$player1->tool1&uid=$player1->uid&sid=$sid");
    $tool1 = "Vũ khí:<a href='?cmd=$zbcmd'>{$zhuangbei->zbname}{$qhs}</a><br/>";

}
if ($player1->tool2 != 0) {
    $zhuangbei = player\getzb($player1->tool2, $dblj);
    $qhs = '';
    if ($zhuangbei->qianghua > 0) {
        $qhs = '+' . $zhuangbei->qianghua;
    }
    $zbcmd = $encode->encode("cmd=chakanzb&zbnowid=$player1->tool2&uid=$player1->uid&sid=$sid");
    $tool2 = "Trang sức:<a href='?cmd=$zbcmd'>{$zhuangbei->zbname}{$qhs}</a><br/>";
}
if ($player1->tool3 != 0) {
    $zhuangbei = player\getzb($player1->tool3, $dblj);
    $qhs = '';
    if ($zhuangbei->qianghua > 0) {
        $qhs = '+' . $zhuangbei->qianghua;
    }
    $zbcmd = $encode->encode("cmd=chakanzb&zbnowid=$player1->tool3&uid=$player1->uid&sid=$sid");
    $tool3 = "Quần áo:<a href='?cmd=$zbcmd'>{$zhuangbei->zbname}{$qhs}</a><br/>";
}
if ($player1->tool4 != 0) {
    $zhuangbei = player\getzb($player1->tool4, $dblj);
    $qhs = '';
    if ($zhuangbei->qianghua > 0) {
        $qhs = '+' . $zhuangbei->qianghua;
    }
    $zbcmd = $encode->encode("cmd=chakanzb&zbnowid=$player1->tool4&uid=$player1->uid&sid=$sid");
    $tool4 = "Đai lưng:<a href='?cmd=$zbcmd'>{$zhuangbei->zbname}{$qhs}</a><br/>";
}
if ($player1->tool5 != 0) {
    $zhuangbei = player\getzb($player1->tool5, $dblj);
    $qhs = '';
    if ($zhuangbei->qianghua > 0) {
        $qhs = '+' . $zhuangbei->qianghua;
    }
    $zbcmd = $encode->encode("cmd=chakanzb&zbnowid=$player1->tool5&uid=$player1->uid&sid=$sid");
    $tool5 = "Trang sức:<a href='?cmd=$zbcmd'>{$zhuangbei->zbname}{$qhs}</a><br/>";;
}
if ($player1->tool6 != 0) {
    $zhuangbei = player\getzb($player1->tool6, $dblj);
    $qhs = '';
    if ($zhuangbei->qianghua > 0) {
        $qhs = '+' . $zhuangbei->qianghua;
    }
    $zbcmd = $encode->encode("cmd=chakanzb&zbnowid=$player1->tool6&uid=$player1->uid&sid=$sid");
    $tool6 = "Giày:<a href='?cmd=$zbcmd'>{$zhuangbei->zbname}{$qhs}</a><br/>";;
}

$html = <<<HTML
==Đấu phá thương khung trạng thái==<br/>
Nickname:$player1->uname<br/>
Môn phái:$clubname<br/>
Cảnh giới:$player1->jingjie$player1->cengci<br/>
Đẳng cấp:$player1->ulv<br/>
Tu vị:$player1->uexp/$player1->umaxexp<br/>
Linh thạch:$player1->uyxb<br/>
Cực phẩm linh thạch:$player1->uczb<br/>
Khí huyết:$player1->uhp/$player1->umaxhp<br/>
Công kích:$player1->ugj<br/>
Phòng ngự:$player1->ufy<br/>
Bạo kích:$player1->ubj%<br/>
Hút máu:$player1->uxx%<br/>
========<br/>
$tool1
$tool2
$tool3
$tool4
$tool5
$tool6
$immenu
<button onClick="javascript:history.back(-1);">Trở về</button> <a href="?cmd=$gonowmid">Trở về trò chơi</a>
HTML;
echo $html;

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/6/14
 * Time: 18:10
 */ ?>