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

if ($player->tool1 != 0) {
    $zhuangbei = player\getzb($player->tool1, $dblj);
    $qhs = '';
    if ($zhuangbei->qianghua > 0) {
        $qhs = '+' . $zhuangbei->qianghua;
    }

    $isTool1 = '<span class="absolute left-[10px] top-[7px] rounded-full bg-white w-[10px] h-[10px]"></span>';

//    $xxzb1 = '<a href="?cmd=' . $encode->encode("cmd=xxzb&zbwz=1&sid=$sid") . '">Dỡ xuống</a>';
    $img_tool_1 = $zhuangbei->preview_url;
    $tool1 = '<a class="absolute opacity-0 left-0 top-0 w-[60px] h-[55px]" href="?cmd=' . $encode->encode("cmd=chakanzb&zbnowid=$player->tool1&uid=$player->uid&sid=$sid") . '"></a>';
}
if ($player->tool2 != 0) {
    $zhuangbei = player\getzb($player->tool2, $dblj);
    $qhs = '';
    if ($zhuangbei->qianghua > 0) {
        $qhs = '+' . $zhuangbei->qianghua;
    }

    $img_tool_2 = $zhuangbei->preview_url;
    $isTool2 = '<span class="absolute left-[10px] top-[7px] rounded-full bg-white w-[10px] h-[10px]"></span>';;
//    $xxzb2 = '<a href="?cmd=' . $encode->encode("cmd=xxzb&zbwz=2&sid=$sid") . '">Dỡ xuống</a>';
    $tool2 = '<a class="absolute opacity-0 left-0 top-0 w-[60px] h-[55px]" href="?cmd=' . $encode->encode("cmd=chakanzb&zbnowid=$player->tool2&uid=$player->uid&sid=$sid") . '">' . $zhuangbei->zbname . $qhs . '</a>' . $xxzb2;
}
if ($player->tool3 != 0) {
    $zhuangbei = player\getzb($player->tool3, $dblj);
    $qhs = '';
    if ($zhuangbei->qianghua > 0) {
        $qhs = '+' . $zhuangbei->qianghua;
    }

    $img_tool_3 = $zhuangbei->preview_url;
    $isTool3 = '<span class="absolute left-[10px] top-[7px] rounded-full bg-white w-[10px] h-[10px]"></span>';;
//    $xxzb3 = '<a href="?cmd=' . $encode->encode("cmd=xxzb&zbwz=3&sid=$sid") . '">Dỡ xuống</a>';
    $tool3 = '<a class="absolute opacity-0 left-0 top-0 w-[60px] h-[55px]" href="?cmd=' . $encode->encode("cmd=chakanzb&zbnowid=$player->tool3&uid=$player->uid&sid=$sid") . '">' . $zhuangbei->zbname . $qhs . '</a>' . $xxzb3;
}
if ($player->tool4 != 0) {
    $zhuangbei = player\getzb($player->tool4, $dblj);
    $qhs = '';
    if ($zhuangbei->qianghua > 0) {
        $qhs = '+' . $zhuangbei->qianghua;
    }

    $img_tool_4 = $zhuangbei->preview_url;
    $isTool4 = '<span class="absolute left-[10px] top-[7px] rounded-full bg-white w-[10px] h-[10px]"></span>';;
//    $xxzb4 = '<a href="?cmd=' . $encode->encode("cmd=xxzb&zbwz=4&sid=$sid") . '">Dỡ xuống</a>';
    $tool4 = '<a class="absolute opacity-0 left-0 top-0 w-[60px] h-[55px]" href="?cmd=' . $encode->encode("cmd=chakanzb&zbnowid=$player->tool4&uid=$player->uid&sid=$sid") . '">' . $zhuangbei->zbname . $qhs . '</a>' . $xxzb4;
}
if ($player->tool5 != 0) {
    $zhuangbei = player\getzb($player->tool5, $dblj);
    $qhs = '';
    if ($zhuangbei->qianghua > 0) {
        $qhs = '+' . $zhuangbei->qianghua;
    }

    $img_tool_5 = $zhuangbei->preview_url;
    $isTool5 = '<span class="absolute left-[10px] top-[7px] rounded-full bg-white w-[10px] h-[10px]"></span>';;
//    $xxzb5 = '<a href="?cmd=' . $encode->encode("cmd=xxzb&zbwz=5&sid=$sid") . '">Dỡ xuống</a>';
    $tool5 = '<a class="absolute opacity-0 left-0 top-0 w-[60px] h-[55px]" href="?cmd=' . $encode->encode("cmd=chakanzb&zbnowid=$player->tool5&uid=$player->uid&sid=$sid") . '">' . $zhuangbei->zbname . $qhs . '</a>' . $xxzb5;
}
if ($player->tool6 != 0) {
    $zhuangbei = player\getzb($player->tool6, $dblj);
    $qhs = '';
    if ($zhuangbei->qianghua > 0) {
        $qhs = '+' . $zhuangbei->qianghua;
    }

    $img_tool_6 = $zhuangbei->preview_url;
    $isTool6 = '<span class="absolute left-[10px] top-[7px] rounded-full bg-white w-[10px] h-[10px]"></span>';;
//    $xxzb6 = '<a href="?cmd=' . $encode->encode("cmd=xxzb&zbwz=6&sid=$sid") . '">Dỡ xuống</a>';
    $tool6 = '<a class="absolute opacity-0 left-0 top-0 w-[60px] h-[55px]" href="?cmd=' . $encode->encode("cmd=chakanzb&zbnowid=$player->tool6&uid=$player->uid&sid=$sid") . '">' . $zhuangbei->zbname . $qhs . '</a>' . $xxzb6;

}

$html = <<<HTML
<div class="bg-[#395661] w-full h-full">
    <div class="h-full">
        <h3 class="text-xl text-center pt-2 bg-[#88b3b9] font-semibold">
            Thông tin thuộc tính
        </h3>
        <div class="m-3 rounded-md pt-2" style="background-image: linear-gradient(to bottom right, #7a989e, #a5bfbc, #d6e4e0); height: calc(100% - 60px);">
            <div class="h-[60px] bg-[#b5c7c7] justify-between flex items-center mx-3">
                <div>
                    <img class="h-[50px]" src="images/pve/player-avatar.png" />
                </div>
                <div>
                    <div>
                        Tên: $player->uname
                    </div>
                    <div>
                        Cảnh giới: $player->jingjie$player->cengci
                    </div>
                    <div>
                        Đẳng cấp: $player->ulv
                    </div>
                </div>
                <a style="background: radial-gradient(black, transparent);" class="text-white giftcode" href="?cmd=$duihuancmd">Giftcode</a>
            </div>
            <div class="m-3">
                <div class="border border-[#80999d] bg-[#9ab1b0] my-1 px-2">
                    Linh thạch: $player->uyxb
                </div>
                <div class="border border-[#80999d] bg-[#9ab1b0] my-1 px-2">
                    Cực phẩm linh thạch: $player->uczb
                </div>
                <div class="border border-[#80999d] bg-[#9ab1b0] my-1 px-2">
                    Tu vị: $player->uexp/$player->umaxexp
                </div>
                <div class="border border-[#80999d] bg-[#9ab1b0] my-1 px-2">
                    Khí huyết: $player->uhp/$player->umaxhp
                </div>
                <div class="border border-[#80999d] bg-[#9ab1b0] my-1 px-2">
                    Công Kích: $player->ugj
                </div>
                <div class="border border-[#80999d] bg-[#9ab1b0] my-1 px-2">
                    Phòng Ngự: $player->ufy
                </div>
                <div class="border border-[#80999d] bg-[#9ab1b0] my-1 px-2">
                    Bạo kích: $player->ubj%
                </div>
                <div class="border border-[#80999d] bg-[#9ab1b0] my-1 px-2">
                    Hút máu: $player->uxx%
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
        <div class="absolute bottom-0 h-[50px] ml-6">
            <a style="background: radial-gradient(black, transparent);" class="text-white" onClick="javascript :history.back(-1);">Trở về</a>
            <a style="background: radial-gradient(black, transparent);" class="text-white" href="?cmd=$gonowmid">Trở về trò chơi</a>
        </div>
    </div>
</div>
HTML;
echo $html;
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/6/10
 * Time: 17:34
 */ ?>