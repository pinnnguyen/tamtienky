<?php
require ($_SERVER['DOCUMENT_ROOT']."/stores/query.php");
$player = player\getplayer($sid, $dblj);//获取玩家信息
$lastmid = $player->nowmid;

$sid_str = $sid;

if (isset($newmid)) {
    if ($player->nowmid != $newmid) {
        $clmid = player\getmid($newmid, $dblj); //获取即将走的地图信息
        $ucmd = $encode->encode("cmd=getplayerinfo&uid=$uid&sid=$player->sid");
        //$playerinfo .="<a href='?cmd=$ucmd'>$player->uname</a>"." Hướng $clmid->mname đi đến";
        $playerinfo = $player->uname . " Hướng $clmid->mname đi đến";//当前位置更新最后一条行走记录
        if ($playerinfo != $clmid->playerinfo) { //更新自己走过的记录
            $sql = "update mid set playerinfo='$playerinfo' WHERE mid='$lastmid'";
            $dblj->exec($sql);
        }
        if ($player->uhp <= 0) {
            $retmid = \player\getmid($player->nowmid, $dblj);
            $retqy = \player\getqy($retmid->mqy, $dblj);
            $gonowmid = $encode->encode("cmd=gomid&newmid=$retqy->mid&sid=$sid");
            if ($newmid != $retqy->mid) {
                exit("Bạn đã bị thương nặng, xin vui lòng điều trị <br/>" . '<a href="?cmd=' . $gonowmid . '">Trở lại trò chơi</a>');
            }

        }
        \player\changeplayersx('nowmid', $newmid, $sid, $dblj);
        $player = player\getplayer($sid, $dblj);//获取玩家信息
    }

}

if ($player->nowmid == '' || $player->nowmid == 0) {//判断角色是否出现在非法地图
    $gameconfig = \player\getgameconfig($dblj);
    $sql = "update game1 set nowmid='$gameconfig->firstmid' WHERE sid='$sid'";
    $dblj->exec($sql);
    $player->nowmid = $gameconfig->firstmid;
}

if (\player\istupo($sid, $dblj) != 0 && $player->uexp >= $player->umaxexp) {
    $tupocmd = $encode->encode("cmd=tupo&sid=$sid");
    $tupocmd = "<a class='border-none absolute bottom-[50px] left-[60px]' href='?cmd=$tupocmd'><img class='w-[47px]' src='images/dotpha.png' /></a>";
}

$clmid = player\getmid($player->nowmid, $dblj); // Nhận thông tin bản đồ
if ($clmid->playerinfo != '') {
    $clmid->playerinfo .= '<br/>';
}

$pvphtml = "[Vùng an toàn]";
if ($clmid->ispvp) {
    $pvphtml = "[PVP]";
}


$ztcmd = $encode->encode("cmd=zhuangtai&sid=$sid");
$goliaotian = $encode->encode("cmd=liaotian&ltlx=all&sid=$sid");
$gonowmid = $encode->encode("cmd=gomid&newmid=$clmid->mid&sid=$sid");
$phcmd = $encode->encode("cmd=paihang&sid=$sid");
$getbagcmd = $encode->encode("cmd=getbagzb&sid=$sid");
$cwcmd = $encode->encode("cmd=chongwu&sid=$sid");
$bugreportcmd = $encode->encode("cmd=bugreport&canshu=info&sid=$sid");
$buginfocmd = $encode->encode("cmd=buginfo&canshu=info&sid=$sid");
$cxall = '';

$upmidlj = $encode->encode("cmd=gomid&newmid=$clmid->upmid&sid=$sid");//上地图
$downmidlj = $encode->encode("cmd=gomid&newmid=$clmid->downmid&sid=$sid");
$leftmidlj = $encode->encode("cmd=gomid&newmid=$clmid->leftmid&sid=$sid");
$rightmidlj = $encode->encode("cmd=gomid&newmid=$clmid->rightmid&sid=$sid");
$upmid = player\getmid($clmid->upmid, $dblj);
$downmid = player\getmid($clmid->downmid, $dblj);
$leftmid = player\getmid($clmid->leftmid, $dblj);
$rightmid = player\getmid($clmid->rightmid, $dblj);

$pvbcmd = $encode->encode("cmd=boss&sid=$sid&idboss=1");

$lukouhtml = '';
$bosshtml = '';

if ($clmid->midinfo == '') {
    $clmid->midinfo = $clmid->mname;
}

if ($clmid->midboss != 0) {
    // echo "bosssssssssss: $clmid->midboss";
    $idboss = $clmid->midboss;
    $boss = \player\getboss($idboss, $dblj);
    $bossTime = date("H:i:s", strtotime($boss->bosstime));

    $bossinfo = $encode->encode("cmd=boss&bossid=$boss->bossid&sid=$sid");
    $bosshtml = <<<HTML
    <span class="text-white">BOSS:</span>:<a class="bg-[#ff623e] !text-white" href="?cmd=$bossinfo">$boss->bossname [lv$boss->bosslv] [$bossTime]</a>
HTML;
}

if ($upmid->mname != '') {
    $lukouhtml .= <<<HTML
<div>
    Hướng Bắc:<a style="background: radial-gradient(black, transparent)" class="!text-white h-[34px] !flex items-center" href="?cmd=$upmidlj">$upmid->mname ↑</a>
</div>
HTML;
}

if ($leftmid->mname != '') {
    $lukouhtml .= <<<HTML
<div>
    <span>Hướng Tây</span>:<a style="background: radial-gradient(black, transparent)" class="!text-white h-[34px] !flex items-center" href="?cmd=$leftmidlj">$leftmid->mname ←</a>
</div>
HTML;
}

if ($rightmid->mname != '') {
    $lukouhtml .= <<<HTML
<div>
    <span>Hướng Đông</span>:<a style="background: radial-gradient(black, transparent)" class="!text-white h-[34px] !flex items-center" href="?cmd=$rightmidlj">$rightmid->mname →</a>
</div>
HTML;
}

if ($downmid->mname != '') {
    $lukouhtml .= <<<HTML
<div>
    <span>Hướng Nam</span>:<a style="background: radial-gradient(black, transparent)" class="bg-[#621e1f] !text-white h-[34px] !flex items-center" href="?cmd=$downmidlj">$downmid->mname ↓</a>
</div>
HTML;
}

$sql = "select * from midguaiwu where mid='$player->nowmid' AND sid = ''";//Nhận quái vật bản đồ hiện tại
$cxjg = $dblj->query($sql);
$cxallguaiwu = $cxjg->rowCount();
$nowdate = date('Y-m-d H:i:s');
$second = floor((strtotime($nowdate) - strtotime($clmid->mgtime)) % 86400);//Nhận khoảng thời gian làm mới

if ($second > $clmid->ms && $cxallguaiwu == 0 && $clmid->mgid != '') {//làm mới quái vật
    $sql = "update mid set mgtime='$nowdate' WHERE mid='$player->nowmid'";
    $dblj->exec($sql);
    $retgw = explode(",", $clmid->mgid);

    foreach ($retgw as $itemgw) {
        $gwinfo = explode("|", $itemgw);
        $guaiwu = \player\getyguaiwu($gwinfo[0], $dblj);
        $guaiwu->gyid = $gwinfo[0];
        $sjexp = monsterExp();
        $guaiwu->gexp = round($guaiwu->glv * $sjexp, 0);

        for ($n = 0; $n < $gwinfo[1]; $n++) {
            $sql = "insert into midguaiwu(mid,gname,glv,ghp,ggj,gfy,gbj,gxx,gexp,gyid,gmaxhp) 
                    values('$player->nowmid',
                    '$guaiwu->gname',
                    '$guaiwu->glv',
                    '$guaiwu->ghp',
                    '$guaiwu->ggj',
                    '$guaiwu->gfy',
                    '$guaiwu->gbj',
                    '$guaiwu->gxx',
                    '$guaiwu->gexp',
                    '$guaiwu->gyid',
                    '$guaiwu->ghp')";
            $cxjg = $dblj->exec($sql);
        }

    }
}
$sql = "select * from midguaiwu where mid='$player->nowmid' AND sid = ''";//Nhận quái vật bản đồ hiện tại
$cxjg = $dblj->query($sql);

$cxallguaiwu = $cxjg->fetchAll(PDO::FETCH_ASSOC);

$gwhtml = '';
for ($i = 0; $i < count($cxallguaiwu); $i++) {
    $gwcmd = $encode->encode("cmd=getginfo&gid=" . $cxallguaiwu[$i]['id'] . "&gyid=" . $cxallguaiwu[$i]['gyid'] . "&sid=$sid&nowmid=$player->nowmid");
    $gwhtml .= "<a 
    style='font-size: 10px' 
    gid=". $cxallguaiwu[$i]['id'] ." 
    gyid=". $cxallguaiwu[$i]['gyid'] ." 
    sid='$sid' 
    nowmid='$player->nowmid'  
    class='!flex flex-col bg-[#8b0808] !text-white font-medium text-center w-[50px] overflow-hidden h-[50px] overflow-hidden rounded attach-monster'>
    <span>
    [lv" . $cxallguaiwu[$i]['glv'] . "]
    </span>" . $cxallguaiwu[$i]['gname'] . "</a> ";
}

$sql = "select * from game1 where nowmid='$player->nowmid' AND sfzx = 1";//Tải trình phát bản đồ hiện tại
$cxjg = $dblj->query($sql);
$playerhtml = '';

if ($cxjg) {
    $cxallplayer = $cxjg->fetchAll(PDO::FETCH_ASSOC);
    $nowdate = date('Y-m-d H:i:s');
    for ($i = 0; $i < count($cxallplayer); $i++) {
        if ($cxallplayer[$i]['uname'] != "") {
            $cxtime = $cxallplayer[$i]['endtime'];
            $cxuid = $cxallplayer[$i]['uid'];
            $cxsid = $cxallplayer[$i]['sid'];
            $cxuname = $cxallplayer[$i]['uname'];
            $cxuname = $cxallplayer[$i]['uname'];
            $second = floor((strtotime($nowdate) - strtotime($cxtime)) % 86400);
            //Nhận khoảng thời gian làm mới
            if ($second > 300) {
                $sql = "update game1 set sfzx=0 WHERE sid='$cxsid'";
                $dblj->exec($sql);
            } else {
                $clubp = \player\getclubplayer_once($cxsid, $dblj);
                if ($clubp) {
                    $club = \player\getclub($clubp->clubid, $dblj);
                    $club->clubname = "[$club->clubname]";
                } else {
                    $club = new \player\club();
                    $club->clubname = "";
                }
                $playercmd = $encode->encode("cmd=getplayerinfo&uid=$cxuid&sid=$sid");
                $playerhtml .= "<a style='font-size: 10px' class='!flex flex-col justify-center bg-[#342df2] !text-white font-medium text-center w-[50px] overflow-hidden h-[50px] overflow-hidden rounded' href='?cmd=$playercmd'>
<span>$club->clubname</span>
<span>$cxuname</span></a>";
            }

        }
    }
}


$npchtml = '';
$task = \player\getplayerrenwu($sid, $dblj);//玩家任务数组

$sql = "select * from playerrenwu WHERE sid='$sid' AND rwlx = 2";
$cxjg = $dblj->query($sql);
$mrrw = $cxjg->fetchAll(PDO::FETCH_ASSOC);
for ($n = 0; $n < count($mrrw); $n++) {
    if ($mrrw[$n]['data'] != date('d')) {
        $rwid = $mrrw[$n]['rwid'];
        $sql = "delete from playerrenwu WHERE rwid=$rwid AND sid='$sid'";
        $dblj->exec($sql);
    }
}

$sql = "select * from playerrenwu WHERE sid='$sid' AND rwzt!=3";
$cxjg = $dblj->query($sql);
$wtjrw = $cxjg->fetchAll(PDO::FETCH_ASSOC);
$taskcount = count($wtjrw);

if ($clmid->mnpc != "") {
    $sql = "select * from npc where id in ($clmid->mnpc)";//获取npc
    $cxjg = $dblj->query($sql);
    $cxnpcall = $cxjg->fetchAll(PDO::FETCH_ASSOC);

    for ($i = 0; $i < count($cxnpcall); $i++) {
        $nname = $cxnpcall[$i]['nname'];
        $nid = $cxnpcall[$i]['id'];
        $taskid = $cxnpcall[$i]['taskid'];
        $taskarr = explode(',', $taskid);
        $yrw = false;
//        if ($taskid != '') {
//            for ($l = 0; $l < count($taskarr); $l++) {
//                $nowrw = \player\gettask($taskarr[$l], $dblj);
//                $rwret = \player\getplayerrenwuonce($sid, $taskarr[$l], $dblj);
//                $lastrwid = $nowrw->lastrwid;
//
//                if ($nowrw->rwlx == 1 || $nowrw->rwlx == 2) {
//                    if (!$rwret) {
//                        if ($nowrw->rwzl != 3) {
//                            $npchtml .= '<img src="images/wen.gif" />';
//                        } elseif ($nowrw->rwyq == $nid) {
//                            $npchtml .= '<img src="images/wen.gif" />';
//                        } else {
//                            continue;
//                        }
//                    } elseif ($rwret->rwzt == 2) {
//                        if ($nowrw->rwzl != 3) {
//                            $npchtml .= '<img src="images/tan.gif" />';
//                        } elseif ($nowrw->rwcount == $nid) {
//                            $npchtml .= '<img src="images/tan.gif" />';
//                        } else {
//                            continue;
//                        }
//
//                    }
//                }
//                if ($nowrw->rwlx == 3) {
//                    if ($rwret) {
//                        if ($rwret->rwzt == 2) {
//                            if ($nowrw->rwzl != 3) {
//                                $npchtml .= '<img src="images/tan.gif" />';
//                            } elseif ($nowrw->rwcount == $nid) {
//                                $npchtml .= '<img src="images/tan.gif" />';
//                            } else {
//                                continue;
//                            }
//                        }
//                    } else {
//                        if ($lastrwid <= 0) {
//                            if ($nowrw->rwzl != 3) {
//                                $npchtml .= '<img src="images/wen.gif" />';
//                            } elseif ($nowrw->rwyq == $nid) {
//                                $npchtml .= '<img src="images/wen.gif" />';
//                            } else {
//                                continue;
//                            }
//                        } else {
//                            $rwret = \player\getplayerrenwuonce($sid, $lastrwid, $dblj);
//                            if ($rwret) {
//                                if ($rwret->rwzt == 3) {
//                                    if ($nowrw->rwzl != 3) {
//                                        $npchtml .= '<img src="images/wen.gif" />';
//                                    } elseif ($nowrw->rwyq == $nid) {
//                                        $npchtml .= '<img src="images/wen.gif" />';
//                                    } else {
//                                        continue;
//                                    }
//                                }
//                            }
//                        }
//                    }
//                }
//            }
//        }
        $npccmd = $encode->encode("cmd=npc&nid=$nid&sid=$player->sid");
        $npchtml .= <<<HTML
        <a style="background: radial-gradient(black, transparent); color: white" href="?cmd=$npccmd">$nname</a>
HTML;
    }
}


$sql = 'SELECT * FROM ggliaotian ORDER BY id DESC LIMIT 1';//聊天列表获取
$ltcxjg = $dblj->query($sql);
$lthtml = '';
if ($ltcxjg) {
    $ret = $ltcxjg->fetchAll(PDO::FETCH_ASSOC);
    for ($i = 0; $i < count($ret); $i++) {
        $uname = $ret[count($ret) - $i - 1]['name'];
        $umsg = $ret[count($ret) - $i - 1]['msg'];
        $uid = $ret[count($ret) - $i - 1]['uid'];
        $ucmd = $encode->encode("cmd=getplayerinfo&uid=$uid&sid=$player->sid");
        if ($uid) {
            $lthtml .= "<div class='text-red-600'><a href='?cmd=$ucmd''>[$uname]: </a><span class='text-white' style='font-size: 10px'>$umsg</span></div>";
        } else {
            $lthtml .= "<div class='text-red-600'><span>[$uname]: </span><span class='text-white' style='font-size: 10px'>$umsg</span></div>";
        }

    }
}

$mapcmd = $encode->encode("cmd=allmap&sid=$sid");
$xiuliancmd = $encode->encode("cmd=goxiulian&sid=$sid");
$mytask = $encode->encode("cmd=mytask&sid=$sid");
$getbagjncmd = $encode->encode("cmd=getbagjn&sid=$sid");
$fangshi = $encode->encode("cmd=fangshi&fangshi=daoju&sid=$sid");
$clubcmd = $encode->encode("cmd=club&sid=$sid");
$duihuancmd = $encode->encode("cmd=duihuan&sid=$sid");
$imcmd = $encode->encode("cmd=im&sid=$sid");
$remainingplayerexp = ($player->uexp / $player->umaxexp) * 100;
$remainingplayerexp .= 'px';

$nowhtml = <<<HTML
<!--<div class="absolute top-0 left-0 w-full h-full opacity-80" style="background: url('images/Img_Zhuxian_Shichenxidong.png'); background-size: cover;"></div>-->
<div class="h-full w-full absolute">
    <div class="flex items-end bg-[#36445a] text-white p-1">
        <a class="border-none p-0" href="?cmd=$ztcmd">
            <img class="h-[40px] mr-2" src="images/pve/player-avatar.png" />
        </a>
        <div>
            <div class="h-[10px] w-[105px] rounded-full bg-[#212121cc] flex items-center p-[2px]">
                <div class="h-[5px] w-20 rounded-full bg-[#ffcf3e]" style="width: $remainingplayerexp;"></div>
            </div>
            <span class="pb-[2px]">$player->uname [lv:$player->ulv]</span>
        </div>
    </div>
    <div class="flex items-center justify-end">
        <a style="background: radial-gradient(black, transparent);" class="text-white inline-block flex items-center" href="?cmd=$fangshi">
            <img class="w-[30px]" src="images/menu/XJHomescreenButton_20.png" /><span style="font-size: 10px;">Chợ</span>
        </a>
        <a style="background: radial-gradient(black, transparent);" class="text-white inline-block flex items-center" href="?cmd=$imcmd">
            <img class="w-[30px]" src="images/menu/XJHomescreenButton_44.png" /><span style="font-size: 10px;">H.Hữu</span>
        </a>
        <a style="background: radial-gradient(black, transparent);" class="text-white inline-block flex items-center" href="?cmd=$phcmd">
            <img class="w-[30px]" src="images/menu/XJHomescreenButton_15.png" /><span style="font-size: 10px;">X.hạng</span>
        </a>
    </div>
    <div class="p-2">
        <div class="uppercase font-semibold text-xs">$clmid->mname$pvphtml</div>
        <span class="text-xs mb-2 text-[#ff380b]">Chú ý: $clmid->playerinfo</span>
        <div class="flex flex-wrap">
            $playerhtml $gwhtml
        </div>
    </div>
    <div></div>
    <div class="p-2">
        $npchtml
    </div>
    <div class="absolute bottom-0 bg-[#36445a]">
        <div class="p-2">
            <div class="flex text-white text-xs">
                $lukouhtml
            </div>
            <div class="flex items-end">
                $bosshtml
            </div>
        </div>

        <div class="text-white mx-2">
            <div class="flex mb-2">
                <a class="!flex items-center justify-center border-none !text-white" href="?cmd=$goliaotian">
                    <img class="w-[50px]" src="images/menu/XJShare_07.png" />
                </a>
                <div>$lthtml</div>
                <a class="w-[110px] !flex justify-center items-center !text-white" href="?cmd=$mapcmd">Bản đồ</a>
            </div>
        </div>

        <div class="h-[62px] bg-[#36445a]">
            <div class="flex items-center justify-center bg-white pt-1 font-semibold" style="border-radius: 30px 30px 0 0;">
                <a class="border-none p-0 flex flex-col items-center" href="?cmd=$ztcmd">
                    <img class="w-[50px]" src="images/menu/XJHomescreenButton_29.png" />
                    <!--            <div>N.Vật</div>-->
                </a>
                <a class="w-[20%] flex flex-col items-center" href="?cmd=$getbagcmd">
                    <img class="w-[50px]" src="images/menu/XJDengxiandao_15.png" />
                    <!--            <div>B.Lô</div>-->
                </a>
                <a class="w-[20%] flex flex-col items-center" href="?cmd=$cwcmd">
                    <img class="w-[50px]" src="images/menu/XJHomescreenTop_42.png" />
                    <!--            <div>T.Cưng</div>-->
                </a>
                <a class="w-[20%] flex flex-col items-center" href="?cmd=$clubcmd">
                    <img class="w-[50px]" src="images/menu/XJHomescreenButton_10.png" />
                    <!--            <div>T.Môn</div>-->
                </a>
                <a class="w-[20%] flex flex-col items-center" href="?cmd=$mytask">
                    <img class="w-[50px]" src="images/menu/XJDengxiandao_14.png" />
                    <!--            <div>N.Vụ</div>-->
                </a>
            </div>
        </div>
    </div>
</div>
<script>
    $('.attach-monster').unbind('click').bind('click', function () {
        console.log('click')
        const gid = $(this).attr('gid')
        const gyid = $(this).attr('gyid')
        const sid = $(this).attr('sid')
        const nowmid = $(this).attr('nowmid')
    
        $.get(`/game/ginfo/php?gid=${gid}&gyid=${gyid}&sid=${sid}&nowmid=${nowmid}`, (response) => {
            console.log('response', response)
        })
    })
</script>

<!--<a href="index.php" >Quay lại trang chủ</a><br/>-->
HTML;

echo $nowhtml;


//<a href="?cmd=$getbagcmd" >B.lô</a>
//    <a href="?cmd=$getbagjncmd" >Phù lục</a>
//    <br/>
//    <a href="?cmd=$phcmd" >X.hạng</a>
//     <a href="?cmd=$xiuliancmd" >T.luyện</a>
//     <a href="?cmd=$fangshi" >Chợ</a>
//    <a href="?cmd=$clubcmd" >Tông môn</a>
//    <a href="?cmd=$cwcmd" >Pet</a> <a href="?cmd=$bugreportcmd" >G.lỗi</a>

//<div>
////        <div class="flex items-center justify-center">
////            <div class="relative">
////                $tupocmd
////                <img src="images/main.png" class="w-[200px]" alt="" />
////                <div class="absolute bottom-[-21px] left-[34px] w-[145px]">
////                    <img src="images/danhhieu.png" />
////                </div>
////                <span class="absolute bottom-[-8px] left-[67px] text-white text-xs">
////                    $player->jingjie $player->cengci
////                </span>
////            </div>
////        </div>
//    </div>
