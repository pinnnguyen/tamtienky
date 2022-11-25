<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/8/26 0026
 * Time: 18:37
 */
$clubplayer = \player\getclubplayer_once($sid,$dblj);
$player = \player\getplayer($sid,$dblj);
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$clubhtml= '';
$clubmenu = '';
$renzhihtml='';
$playerlist='';
if (isset($canshu)){
    switch ($canshu){
        case "joinclub":
            if ($clubplayer){
                echo "Ngươi đã có môn phái<br/>";
                break;
            }
            $sql = "insert into clubplayer(clubid, uid, sid, uclv) VALUES ($clubid,$player->uid,'$sid',6)";
            $row = $dblj->exec($sql);
            $clubplayer = \player\getclubplayer_once($sid,$dblj);
            echo "Chúc mừng ngươi thành công gia nhập<br/>";
            break;
        case "outclub":
            if ($clubplayer){
                $sql="delete from clubplayer WHERE sid='$sid'";
                $row = $dblj->exec($sql);
                echo "Mưu phản môn phái thành công!</br>";
                $clubplayer = \player\getclubplayer_once($sid,$dblj);
            }
            break;
        case "deleteclub":
            if ($clubplayer){
                if ($clubplayer->uclv == 1){
                    $sql="delete from club WHERE clubid='$clubplayer->clubid'";
                    $row = $dblj->exec($sql);
                    $sql="delete from clubplayer WHERE clubid='$clubplayer->clubid'";
                    $row = $dblj->exec($sql);
                    echo "Môn phái giải tán thành công<br/>";
                }
            }
            break;
        case "renzhi":
            if ($clubplayer){
                if (isset($zhiwei)){
                    $sql="select uid from clubplayer WHERE clubid=$clubplayer->clubid AND uclv > $clubplayer->uclv";
                    $ret = $dblj->query($sql);
                    $retuid = $ret->fetchAll(PDO::FETCH_ASSOC);
                    foreach ($retuid as $uiditem){
                        $uid = $uiditem['uid'];
                        if ($uid==$player->uid){
                            continue;
                        }
                        $otherplayer = \player\getplayer1($uid,$dblj);
                        $ucmd = $encode->encode("cmd=club&canshu=zhiwei&zhiwei=$zhiwei&uid=$uid&sid=$sid");
                        $playerlist .= "<a href='?cmd=$ucmd'>{$otherplayer->uname}</a><br/>";

                    }
                   $renzhihtml =  "=========Lựa chọn nhậm chức nhân viên=========<br/>$playerlist<button onClick='javascript :history.back(-1);'>Trở về</button><br/><a href='?cmd=$gonowmid'>Trở về trò chơi</a>";
                    exit($renzhihtml);
                }

                if ($clubplayer->uclv == 1){
                    $no2cmd = $encode->encode("cmd=club&canshu=renzhi&zhiwei=2&sid=$sid");
                    $no3cmd = $encode->encode("cmd=club&canshu=renzhi&zhiwei=3&sid=$sid");
                    $no4cmd = $encode->encode("cmd=club&canshu=renzhi&zhiwei=4&sid=$sid");
                    $no5cmd = $encode->encode("cmd=club&canshu=renzhi&zhiwei=5&sid=$sid");
                    $no6cmd = $encode->encode("cmd=club&canshu=renzhi&zhiwei=6&sid=$sid");
                    $renzhihtml = "<a href='?cmd=$no2cmd'>Nhậm chức Phó Chưởng Môn</a><br/><a href='?cmd=$no3cmd'>Nhậm chức trưởng lão</a><br/><a href='?cmd=$no4cmd'>Nhậm chức chấp sự</a><br/><a href='?cmd=$no5cmd'>Nhậm chức tinh anh</a><br/><a href='?cmd=$no6cmd'>Nhậm chức đệ tử</a><br/>";
                }
                if ($clubplayer->uclv == 2){
                    $no3cmd = $encode->encode("cmd=club&canshu=renzhi&zhiwei=3&sid=$sid");
                    $no4cmd = $encode->encode("cmd=club&canshu=renzhi&zhiwei=4&sid=$sid");
                    $no5cmd = $encode->encode("cmd=club&canshu=renzhi&zhiwei=5&sid=$sid");
                    $no6cmd = $encode->encode("cmd=club&canshu=renzhi&zhiwei=6&sid=$sid");
                    $renzhihtml = "<a href='?cmd=$no3cmd'>Nhậm chức trưởng lão</a><br/><a href='?cmd=$no4cmd'>Nhậm chức chấp sự</a><br/><a href='?cmd=$no5cmd'>Nhậm chức tinh anh</a><br/><a href='?cmd=$no6cmd'>Nhậm chức đệ tử</a><br/>";
                }
            }
            break;
        case "zhiwei":
            $sql="update clubplayer set uclv = $zhiwei WHERE uid=$uid AND clubid = $clubplayer->clubid";
            $dblj->exec($sql);

    }
}

if (isset($clubid) || $clubplayer){
    if ($clubplayer){
        if (isset($clubid)){
            if ($clubplayer->clubid != $clubid){
                goto noclub;
            }
        }else{
            $clubid = $clubplayer->clubid;
        }
        $outclubcmd = $encode->encode("cmd=club&canshu=outclub&sid=$sid");
        $clubmenu = "<a href='?cmd=$outclubcmd'>Mưu phản</a>";
        if ($clubplayer->uclv==1){
            $outclubcmd = $encode->encode("cmd=club&canshu=deleteclub&sid=$sid");
            $renzhicmd = $encode->encode("cmd=club&canshu=renzhi&sid=$sid");
            $clubmenu = "<a href='?cmd=$renzhicmd'>Nhậm chức</a> <a href='?cmd=$outclubcmd'>Giải tán</a>";
        }
    }else{
        $joincmd = $encode->encode("cmd=club&clubid=$clubid&canshu=joinclub&sid=$sid");
        $clubmenu = "<a href='?cmd=$joincmd'>Thân xin gia nhập</a>";
    }
    noclub:
    $club = \player\getclub($clubid,$dblj);
    $cboss = \player\getplayer1($club->clubno1,$dblj);
    $cbosscmd = $encode->encode("cmd=getplayerinfo&uid=$club->clubno1&sid=$sid");
    $clublist = $encode->encode("cmd=clublist&sid=$sid");
    
    $sql="select uid,uclv from clubplayer WHERE clubid=$clubid ORDER BY uclv ASC ";
    $ret = $dblj->query($sql);
    $retuid = $ret->fetchAll(PDO::FETCH_ASSOC);
    foreach ($retuid as $uiditem){
        $uid = $uiditem['uid'];
        $uclv = $uiditem['uclv'];
        $chenhao = "[Đệ tử]";
        switch ($uclv){
            case 1:
                $chenhao = "[Chưởng môn]";
                break;
            case 2:
                $chenhao = "[Phó Chưởng Môn]";
                break;
            case 3:
                $chenhao = "[Trưởng lão]";
                break;
            case 4:
                $chenhao = "[Phó tế]";
                break;
            case 5:
                $chenhao = "[Tinh anh]";
                break;
        }
        $otherplayer = \player\getplayer1($uid,$dblj);
        $ucmd = $encode->encode("cmd=getplayerinfo&uid=$uid&sid=$player->sid");
        $playerlist .= "<a href='?cmd=$ucmd'>{$chenhao}{$otherplayer->uname}</a><br/>";
    }

    $clubhtml =<<<HTML
Môn phái: $club->clubname<br/>
Người thành lập: <a href="?cmd=$cbosscmd" >$cboss->uname</a><br/>
Môn phái tài chính: Linh thạch [$club->clubyxb] Cực phẩm linh thạch [$club->clubczb]<br/>
Kiến thiết độ: $club->clubexp<br/>
Môn phái giới thiệu: <br/>$club->clubinfo<br/>
$clubmenu
<a href="?cmd=$clublist">Môn phái danh sách</a><br/>
$renzhihtml
Môn phái thành viên:<br/>
$playerlist
<br/>
<button onClick="javascript :history.back(-1);">Trở về</button> <a href="?cmd=$gonowmid">Trở về trò chơi</a>
HTML;
    //exit($clubhtml);
}

if (!$clubplayer){
    $clublist = $encode->encode("cmd=clublist&sid=$sid");
    $clubhtml =<<<HTML
Ngươi bây giờ còn chưa có môn phái đâu!<br/>
<a href="?cmd=$clublist">Gia nhập môn phái</a>
<br/>
<br/>
<a href="?cmd=$gonowmid">Trở về trò chơi</a> 
HTML;

}
echo $clubhtml;