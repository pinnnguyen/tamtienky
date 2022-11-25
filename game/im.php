<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/8/30 0030
 * Time: 19:32
 */

if (isset($canshu)){
    if ($canshu=="deim"){
        $sql="delete from im WHERE imuid = $uid AND sid='$sid'";
        $dblj->exec($sql);
    }
}

$sql="select * from im WHERE sid='$sid'";
$ret = $dblj->query($sql);
$imitem = $ret->fetchAll(PDO::FETCH_ASSOC);
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$imlist = '';
foreach ($imitem as $im){
    $imuid = $im['imuid'];
    $implayer = \player\getplayer1($imuid,$dblj);
    $playercmd = $encode->encode("cmd=getplayerinfo&uid=$imuid&sid=$sid");
    $imlist .="<a href='?cmd=$playercmd'>$implayer->uname</a><br/>";
}
$imhtml =<<<HTML
=======Hảo hữu=======<br/>
$imlist
<br/>
<button onClick="javascript:history.back(-1);">Trở về</button> <a href="?cmd=$gonowmid">Trở về trò chơi</a>
HTML;
echo $imhtml;