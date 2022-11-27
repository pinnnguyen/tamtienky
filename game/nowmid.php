<?php

$player = player\getplayer($sid, $dblj);//获取玩家信息
$lastmid = $player->nowmid;

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
$clmid = player\getmid($player->nowmid, $dblj); //获取地图信息
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
    BOSS:<a href="?cmd=$bossinfo">$boss->bossname [lv$boss->bosslv] [$bossTime]</a><br/>
HTML;
}

if ($upmid->mname != '') {
    $lukouhtml .= <<<HTML
    Hướng Bắc:<a href="?cmd=$upmidlj">$upmid->mname ↑</a><br/>
HTML;
}

if ($leftmid->mname != '') {
    $lukouhtml .= <<<HTML
    Hướng Tây:<a href="?cmd=$leftmidlj">$leftmid->mname ←</a><br/>
HTML;
}

if ($rightmid->mname != '') {
    $lukouhtml .= <<<HTML
    Hướng Đông:<a href="?cmd=$rightmidlj">$rightmid->mname →</a><br/>
HTML;
}

if ($downmid->mname != '') {
    $lukouhtml .= <<<HTML
    Hướng Nam:<a href="?cmd=$downmidlj">$downmid->mname ↓</a><br/>
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
        $sjexp = mt_rand(6, 8) + 0.5;
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
    $gwhtml .= "<a style='font-size: 10px' class='!flex flex-col justify-center bg-[#8b0808] !text-white font-medium text-center w-[70px] overflow-hidden h-[55px] overflow-hidden rounded' href='?cmd=$gwcmd'><span>[lv". $cxallguaiwu[$i]['glv']."]</span>" . $cxallguaiwu[$i]['gname'] . "</a> ";
}

$sql = "select * from game1 where nowmid='$player->nowmid' AND sfzx = 1";//获取当前地图玩家
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
            $second = floor((strtotime($nowdate) - strtotime($cxtime)) % 86400);//获取刷新间隔
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
                $playerhtml .= "<a style='font-size: 10px' class='!flex flex-col justify-center bg-[#342df2] !text-white font-medium text-center w-[70px] overflow-hidden h-[55px] overflow-hidden rounded' href='?cmd=$playercmd'>
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
        if ($taskid != '') {
            for ($l = 0; $l < count($taskarr); $l++) {
                $nowrw = \player\gettask($taskarr[$l], $dblj);
                $rwret = \player\getplayerrenwuonce($sid, $taskarr[$l], $dblj);
                $lastrwid = $nowrw->lastrwid;

                if ($nowrw->rwlx == 1 || $nowrw->rwlx == 2) {
                    if (!$rwret) {
                        if ($nowrw->rwzl != 3) {
                            $npchtml .= '<img src="images/wen.gif" />';
                        } elseif ($nowrw->rwyq == $nid) {
                            $npchtml .= '<img src="images/wen.gif" />';
                        } else {
                            continue;
                        }
                    } elseif ($rwret->rwzt == 2) {
                        if ($nowrw->rwzl != 3) {
                            $npchtml .= '<img src="images/tan.gif" />';
                        } elseif ($nowrw->rwcount == $nid) {
                            $npchtml .= '<img src="images/tan.gif" />';
                        } else {
                            continue;
                        }

                    }
                }
                if ($nowrw->rwlx == 3) {
                    if ($rwret) {
                        if ($rwret->rwzt == 2) {
                            if ($nowrw->rwzl != 3) {
                                $npchtml .= '<img src="images/tan.gif" />';
                            } elseif ($nowrw->rwcount == $nid) {
                                $npchtml .= '<img src="images/tan.gif" />';
                            } else {
                                continue;
                            }
                        }
                    } else {
                        if ($lastrwid <= 0) {
                            if ($nowrw->rwzl != 3) {
                                $npchtml .= '<img src="images/wen.gif" />';
                            } elseif ($nowrw->rwyq == $nid) {
                                $npchtml .= '<img src="images/wen.gif" />';
                            } else {
                                continue;
                            }
                        } else {
                            $rwret = \player\getplayerrenwuonce($sid, $lastrwid, $dblj);
                            if ($rwret) {
                                if ($rwret->rwzt == 3) {
                                    if ($nowrw->rwzl != 3) {
                                        $npchtml .= '<img src="images/wen.gif" />';
                                    } elseif ($nowrw->rwyq == $nid) {
                                        $npchtml .= '<img src="images/wen.gif" />';
                                    } else {
                                        continue;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        $npccmd = $encode->encode("cmd=npc&nid=$nid&sid=$player->sid");
        $npchtml .= <<<HTML
        <a href="?cmd=$npccmd">$nname</a><br/>
HTML;
    }
}


$sql = 'SELECT * FROM ggliaotian ORDER BY id DESC LIMIT 2';//聊天列表获取
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
            $lthtml .= "<div class='text-red-600 text-xs'><a clas='font-semibold text-xs' href='?cmd=$ucmd''>[$uname]: </a><span class='text-white text-xs'>$umsg</span></div>";
        } else {
            $lthtml .= "<div class='text-red-600 text-xs'><span class='font-semibold text-xs'>[$uname]: </span><span class='text-white text-xs'>$umsg</span></div>";
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

$nowhtml = <<<HTML
<div>
    <div class="flex items-end">
        <img class="h-[40px]" src="images/pve/player-avatar.png">
        <span class="pb-[2px]">$player->uname [lv:$player->ulv]</span>
    </div>
    <div class="p-2">
        <div class="uppercase text-center font-semibold mb-2">$clmid->mname$pvphtml</div>
        <div class="flex flex-wrap">
            $playerhtml
            $gwhtml
        </div>
    </div>
<div>
</div>
<a href="?cmd=$mytask">Nhiệm vụ($taskcount)</a>
$npchtml
$bosshtml
Mời chọn giao lộ:<br/>
$lukouhtml
$clmid->mname
【<a href="?cmd=$mapcmd">K.tra bản đồ</a>】<br/>
<span class="xinxi2">$clmid->playerinfo</span>

<div class="bg-black text-white p-2 flex fixed bottom-[100px]" id="ltmsg">
<a class="!flex items-center border-none justify-center" href="?cmd=$goliaotian">
    <svg class="w-[24px]" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="comments" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" data-fa-i2svg=""><path fill="currentColor" d="M416 192c0-88.4-93.1-160-208-160S0 103.6 0 192c0 34.3 14.1 65.9 38 92-13.4 30.2-35.5 54.2-35.8 54.5-2.2 2.3-2.8 5.7-1.5 8.7S4.8 352 8 352c36.6 0 66.9-12.3 88.7-25 32.2 15.7 70.3 25 111.3 25 114.9 0 208-71.6 208-160zm122 220c23.9-26 38-57.7 38-92 0-66.9-53.5-124.2-129.3-148.1.9 6.6 1.3 13.3 1.3 20.1 0 105.9-107.7 192-240 192-10.8 0-21.3-.8-31.7-1.9C207.8 439.6 281.8 480 368 480c41 0 79.1-9.2 111.3-25 21.8 12.7 52.1 25 88.7 25 3.2 0 6.1-1.9 7.3-4.8 1.3-2.9.7-6.3-1.5-8.7-.3-.3-22.4-24.2-35.8-54.5z"></path></svg>
</a>
<div>$lthtml</div>
</div>

<div class="fixed bottom-0 bg-black h-[100px] overflow-scroll">
    <a href="?cmd=$ztcmd">T.thái</a>
     <a href="?cmd=$getbagcmd" >B.lô</a>  
    <a href="?cmd=$getbagjncmd" >Phù lục</a>
    <br/>
    <a href="?cmd=$phcmd" >X.hạng</a>
     <a href="?cmd=$xiuliancmd" >T.luyện</a> 
     <a href="?cmd=$fangshi" >Chợ</a> 
    <a href="?cmd=$clubcmd" >Tông môn</a>
    <a href="?cmd=$imcmd" >H.hữu</a> <a href="?cmd=$duihuancmd" >Đ.thưởng</a>
    <a href="?cmd=$cwcmd" >Pet</a> <a href="?cmd=$bugreportcmd" >G.lỗi</a>
</div>

</div>

<!--<a href="index.php" >Quay lại trang chủ</a><br/>-->
HTML;

echo $nowhtml;
