<?php

$sql = 'SELECT * FROM game1 ORDER BY ulv DESC,uexp ASC LIMIT 10';
$player = player\getplayer($sid,$dblj);
$phcxjg = $dblj->query($sql);
$phhtml='';
$phlshtml='';

$backcmd=$encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
if ($phcxjg){
    $ret = $phcxjg->fetchAll(PDO::FETCH_ASSOC);
    for ($i=0;$i < count($ret);$i++){
        $uname = $ret[$i]['uname'];
        $ulv = $ret[$i]['ulv'];
        $uid = $ret[$i]['uid'];
        $cxsid = $ret[$i]['sid'];
        $clubp = \player\getclubplayer_once($cxsid,$dblj);
        if ($clubp){
            $club = \player\getclub($clubp->clubid,$dblj);
            $club->clubname ="[$club->clubname]";
        }else{
            $club = new \player\club();
            $club->clubname ="";
        }
        $ucmd = $encode->encode("cmd=getplayerinfo&uid=$uid&sid=$player->sid");
        $xuhao = $i+1;

        $phlshtml .="<div class='p-2'><span>$xuhao.[$ulv]</span><a href='?cmd=$ucmd'>{$club->clubname}$uname</a><br/></div>";
    }

    $phhtml.=<<<HTML
<div class="text-white p-3">
    <div>Đẳng cấp</div>
    $phlshtml
    <br/>
<button onClick="javascript:history.back(-1);">Trở về</button> <a href="?cmd=$gonowmid">Trở về trò chơi</a>
</div>

HTML;
    echo $phhtml;
}
?>