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

$isTool1 = false;
$isTool2 = false;
$isTool3 = false;
$isTool4 = false;
$isTool5 = false;
$isTool6 = false;

$img_tool_1 = 'images/trangbi/vukhi.png';
$img_tool_2 = 'images/trangbi/ngocboi.png';
$img_tool_3 = 'images/trangbi/giap.png';

$img_tool_4 = 'images/trangbi/baotay.png';
$img_tool_5 = 'images/trangbi/rinh.png';
$img_tool_6 = 'images/trangbi/giay.png';

$img_tool_7 = 'images/trangbi/ngoc.png';
$img_tool_8 = 'images/trangbi/mu.png';

if ($player1->tool1 != 0) {
    $zhuangbei = player\getzb($player1->tool1, $dblj);
    $qhs = '';
    if ($zhuangbei->qianghua > 0) {
        $qhs = '+' . $zhuangbei->qianghua;
    }

    $img_tool_1 = $zhuangbei->preview_url;
    $isTool1 = '<span class="absolute left-[10px] top-[7px] rounded-full bg-white w-[10px] h-[10px]"></span>';
    $zbcmd = $encode->encode("cmd=chakanzb&zbnowid=$player1->tool1&uid=$player1->uid&sid=$sid");
    $tool1 = "<a class='absolute opacity-0 left-0 top-0 w-[60px] h-[55px]' href='?cmd=$zbcmd'>{$zhuangbei->zbname}{$qhs}</a><br/>";

}
if ($player1->tool2 != 0) {
    $zhuangbei = player\getzb($player1->tool2, $dblj);
    $qhs = '';
    if ($zhuangbei->qianghua > 0) {
        $qhs = '+' . $zhuangbei->qianghua;
    }

    $img_tool_2 = $zhuangbei->preview_url;
    $isTool2 = '<span class="absolute left-[10px] top-[7px] rounded-full bg-white w-[10px] h-[10px]"></span>';
    $zbcmd = $encode->encode("cmd=chakanzb&zbnowid=$player1->tool2&uid=$player1->uid&sid=$sid");
    $tool2 = "<a class='absolute opacity-0 left-0 top-0 w-[60px] h-[55px]' href='?cmd=$zbcmd'>{$zhuangbei->zbname}{$qhs}</a><br/>";
}
if ($player1->tool3 != 0) {
    $zhuangbei = player\getzb($player1->tool3, $dblj);
    $qhs = '';
    if ($zhuangbei->qianghua > 0) {
        $qhs = '+' . $zhuangbei->qianghua;
    }

    $img_tool_3 = $zhuangbei->preview_url;
    $isTool3 = '<span class="absolute left-[10px] top-[7px] rounded-full bg-white w-[10px] h-[10px]"></span>';
    $zbcmd = $encode->encode("cmd=chakanzb&zbnowid=$player1->tool3&uid=$player1->uid&sid=$sid");
    $tool3 = "<a class='absolute opacity-0 left-0 top-0 w-[60px] h-[55px]' href='?cmd=$zbcmd'>{$zhuangbei->zbname}{$qhs}</a><br/>";
}
if ($player1->tool4 != 0) {
    $zhuangbei = player\getzb($player1->tool4, $dblj);
    $qhs = '';
    if ($zhuangbei->qianghua > 0) {
        $qhs = '+' . $zhuangbei->qianghua;
    }

    $img_tool_4 = $zhuangbei->preview_url;
    $isTool4 = '<span class="absolute left-[10px] top-[7px] rounded-full bg-white w-[10px] h-[10px]"></span>';
    $zbcmd = $encode->encode("cmd=chakanzb&zbnowid=$player1->tool4&uid=$player1->uid&sid=$sid");
    $tool4 = "<a class='absolute opacity-0 left-0 top-0 w-[60px] h-[55px]' href='?cmd=$zbcmd'>{$zhuangbei->zbname}{$qhs}</a><br/>";
}
if ($player1->tool5 != 0) {
    $zhuangbei = player\getzb($player1->tool5, $dblj);
    $qhs = '';
    if ($zhuangbei->qianghua > 0) {
        $qhs = '+' . $zhuangbei->qianghua;
    }

    $img_tool_5 = $zhuangbei->preview_url;
    $isTool5 = '<span class="absolute left-[10px] top-[7px] rounded-full bg-white w-[10px] h-[10px]"></span>';
    $zbcmd = $encode->encode("cmd=chakanzb&zbnowid=$player1->tool5&uid=$player1->uid&sid=$sid");
    $tool5 = "<a class='absolute opacity-0 left-0 top-0 w-[60px] h-[55px]' href='?cmd=$zbcmd'>{$zhuangbei->zbname}{$qhs}</a><br/>";;
}
if ($player1->tool6 != 0) {
    $zhuangbei = player\getzb($player1->tool6, $dblj);
    $qhs = '';
    if ($zhuangbei->qianghua > 0) {
        $qhs = '+' . $zhuangbei->qianghua;
    }

    $img_tool_6 = $zhuangbei->preview_url;
    $isTool6 = '<span class="absolute left-[10px] top-[7px] rounded-full bg-white w-[10px] h-[10px]"></span>';
    $zbcmd = $encode->encode("cmd=chakanzb&zbnowid=$player1->tool6&uid=$player1->uid&sid=$sid");
    $tool6 = "<a class='absolute opacity-0 left-0 top-0 w-[60px] h-[55px]' href='?cmd=$zbcmd'>{$zhuangbei->zbname}{$qhs}</a><br/>";;
}

$html = <<<HTML
<div class="bg-[#395661] w-full h-full">
    <div class="h-full">
        <h3 class="text-xl text-center pt-2 bg-[#88b3b9] font-semibold">
            Thông tin thuộc tính
        </h3>
        <div class="m-3 rounded-md pt-2" style="background-image: linear-gradient(to bottom right, #7a989e, #a5bfbc, #d6e4e0); height: calc(100% - 60px);">
            <div class="h-[60px] bg-[#b5c7c7] flex items-center mx-3">
                <div>
                    <img class="h-[50px]" src="images/pve/player-avatar.png" />
                </div>
                <div>
                    <div>
                        Tên: $player1->uname
                    </div>
                    <div>
                        Cảnh giới: $player1->jingjie$player1->cengci
                    </div>
                    <div>
                        Đẳng cấp: $player1->ulv
                    </div>
                </div>
                <!--                 <a style="background: radial-gradient(black, transparent)" class="text-white" href="?cmd=$duihuancmd">Giftcode</a>-->
            </div>
            <div class="m-3">
                <div class="border border-[#80999d] bg-[#9ab1b0] my-1 px-2">
                    Linh thạch: $player1->uyxb
                </div>
                <div class="border border-[#80999d] bg-[#9ab1b0] my-1 px-2">
                    Cực phẩm linh thạch: $player1->uczb
                </div>
                <div class="border border-[#80999d] bg-[#9ab1b0] my-1 px-2">
                    Tu vị: $player1->uexp/$player1->umaxexp
                </div>
                <div class="border border-[#80999d] bg-[#9ab1b0] my-1 px-2">
                    Khí huyết: $player1->uhp/$player1->umaxhp
                </div>
                <div class="border border-[#80999d] bg-[#9ab1b0] my-1 px-2">
                    Công Kích: $player1->ugj
                </div>
                <div class="border border-[#80999d] bg-[#9ab1b0] my-1 px-2">
                    Phòng Ngự: $player1->ufy
                </div>
                <div class="border border-[#80999d] bg-[#9ab1b0] my-1 px-2">
                    Bạo kích: $player1->ubj%
                </div>
                <div class="border border-[#80999d] bg-[#9ab1b0] my-1 px-2">
                    Hút máu: $player1->uxx%
                </div>
                <div>
                    <div class="text-sm text-center font-semibold mb-2">Trang bị</div>

                    <div class="grid grid-cols-4 gap-2">
                        <div class="relative">
                            <img class="w-[60px] h-[55px]" src="$img_tool_1" />
                            <!--                        Vũ khí: -->
                            $isTool1 $tool1
                        </div>
                        <div class="relative">
                            <img class="w-[60px] h-[55px]" src="$img_tool_2" />
                            <!--                        Ngọc Bội: -->
                            $isTool2 $tool2
                        </div>
                        <div class="relative">
                            <img class="w-[60px] h-[55px]" src="$img_tool_3" />
                            <!--                        áo: -->
                            $isTool3 $tool3
                        </div>
                        <div class="relative">
                            <img class="w-[60px] h-[55px]" src="$img_tool_4" />
                            <!--                        Bao tay: -->
                            $isTool4 $tool4
                        </div>
                        <div class="relative">
                            <img class="w-[60px] h-[55px]" src="$img_tool_5" />
                            <!--                        Nhẫn: -->
                            $isTool5 $tool5
                        </div>
                        <div class="relative">
                            <img class="w-[60px] h-[55px]" src="$img_tool_6" />
                            <!--                        Giày:-->
                            $isTool6 $tool6
                        </div>
                        <div class="relative">
                            <img class="w-[60px] h-[55px]" src="images/trangbi/ngoc.png" />
                            <!--                        Giày:-->
                        </div>
                        <div class="relative">
                            <img class="w-[60px] h-[55px]" src="images/trangbi/mu.png" />
                            <!--                        Giày:-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="absolute bottom-0 h-[50px] ml-6">
        <a style="background: radial-gradient(black, transparent);" class="text-white" onClick="javascript :history.back(-1);">Trở về</a>
        <a style="background: radial-gradient(black, transparent);" class="text-white" href="?cmd=$gonowmid">Trở về trò chơi</a>
    </div>
</div>
HTML;
echo $html;

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/6/14
 * Time: 18:10
 */ ?>