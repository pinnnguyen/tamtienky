<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/6/17
 * Time: 10:18
 */
//$sql = "select * from mid order by mid ASC";//获取当前地图
//$cxjg = $dblj->query($sql);

$player = player\getplayer($sid, $dblj);
$map = '';

$cxallmap = \player\getqy_all($dblj);
$br = 0;
for ($i = 0; $i < count($cxallmap); $i++) {

    $qyame = $cxallmap[$i]['qyname'];
    $mid = $cxallmap[$i]['mid'];
    if ($mid > 0) {
        $cxmid = \player\getmid($mid, $dblj);
        $mname = $cxmid->mname;
        $br++;
        $gomid = $encode->encode("cmd=gomid&newmid=$mid&sid=$sid");
        $map .= <<<HTML
        <a href="?cmd=$gomid" >[$qyame]$mname</a>
HTML;

        if ($cxmid->ispvp === "1") {
            $map .= <<<HTML
            <span class="text-red-600">[PvP]</span>
HTML;
        }
    }
    if ($br >= 3) {
        $br = 0;
        $map .= "<br/>";
    }
}


$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$allmap = <<<HTML
Danh sách bản đồ:<br/>
$map<br>
<br>
<button onClick="javascript:history.back(-1);">Trở về</button> <a href="?cmd=$gonowmid">Trở về trò chơi</a>
HTML;
echo $allmap;
?>