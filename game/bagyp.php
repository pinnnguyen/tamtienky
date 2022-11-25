<?php
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$getbagzbcmd = $encode->encode("cmd=getbagzb&sid=$sid");
$getbagdjcmd = $encode->encode("cmd=getbagdj&sid=$sid");
$getbagjncmd = $encode->encode("cmd=getbagjn&sid=$sid");
$yaopin = player\getplayeryaopinall($sid,$dblj);
$allyp= '';
$suoyin = 0;
if ($yaopin){
    foreach ($yaopin as $yp){
        $ypsum = $yp['ypsum'];
        if ($ypsum > 0){
            $suoyin += 1;
            $ypid = $yp['ypid'];
            $ypname = $yp['ypname'];
            $ypcmd = $encode->encode("cmd=ypinfo&ypid=$ypid&sid=$sid");
            $allyp .= <<<HTML
            [$suoyin].<a href="?cmd=$ypcmd">{$ypname}x$ypsum</a><br/>
HTML;
        }
    }
}

$bagyphtml =<<<HTML
【<a href="?cmd=$getbagzbcmd">Trang bị</a>|<a href="?cmd=$getbagdjcmd">Đạo cụ</a>|Dược phẩm|<a href="?cmd=$getbagjncmd">Phù lục</a>】<br/>
<br/>
$allyp
<br/>
<button onClick="javascript:history.back(-1);">Trở về</button> <a href="?cmd=$gonowmid">Trở về trò chơi</a>
HTML;
echo $bagyphtml;

?>