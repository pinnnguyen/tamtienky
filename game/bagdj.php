<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/6/17
 * Time: 16:01
 */
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
if (isset($canshu)){
    $getyxb = 0;
    if ($canshu == "maichu1"){
        $ret = \player\deledjsum($djid,1,$sid,$dblj);
        if ($ret){
            $daoju = \player\getdaoju($djid,$dblj);
            \player\changeyxb(1,$daoju->djyxb,$sid,$dblj);
            $getyxb = $daoju->djyxb;
        }
    }
    if ($canshu == "maichu5"){
        $ret = \player\deledjsum($djid,5,$sid,$dblj);
        if ($ret){
            $daoju = \player\getdaoju($djid,$dblj);
            \player\changeyxb(1,$daoju->djyxb*5 ,$sid,$dblj);
            $getyxb = $daoju->djyxb*5;
        }
    }
    if ($canshu == "maichu10"){
        $ret = \player\deledjsum($djid,10,$sid,$dblj);
        if ($ret){
            $daoju = \player\getdaoju($djid,$dblj);
            \player\changeyxb(1,$daoju->djyxb*10 ,$sid,$dblj);
            $getyxb = $daoju->djyxb*10;
        }
    }
    echo "Bán thành công, nhận được {$getyxb} Linh thạch<br/>";
}

$sql = "select * from playerdaoju WHERE sid = '$sid'";
$cxjg = $dblj->query($sql);
if ($cxjg){
    $retdj = $cxjg->fetchAll(PDO::FETCH_ASSOC);
}
$djhtml = '';
$hangshu = 0;
for ($i=0;$i<count($retdj);$i++){
    $djname = $retdj[$i]['djname'];
    $djid = $retdj[$i]['djid'];
    $djsum = $retdj[$i]['djsum'];
    if ($djsum>0){
        $hangshu = $hangshu + 1;
        $chakandj = $encode->encode("cmd=djinfo&djid=$djid&uid=$player->uid&sid=$sid");
        $maichu1 = $encode->encode("cmd=getbagdj&canshu=maichu1&djid=$djid&uid=$player->uid&sid=$sid");
        $maichu5 = $encode->encode("cmd=getbagdj&canshu=maichu5&djid=$djid&uid=$player->uid&sid=$sid");
        $maichu10 = $encode->encode("cmd=getbagdj&canshu=maichu10&djid=$djid&uid=$player->uid&sid=$sid");
        $djhtml .="[$hangshu]<a href='?cmd=$chakandj'>{$djname}x{$djsum}</a><a href='?cmd=$maichu1'>Bán 1</a><a href='?cmd=$maichu5'>Bán 5</a><a href='?cmd=$maichu10'>Bán 10</a><br/>";
    }

}
$getbagzbcmd = $encode->encode("cmd=getbagzb&sid=$sid");
$getbagypcmd = $encode->encode("cmd=getbagyp&sid=$sid");
$getbagjncmd = $encode->encode("cmd=getbagjn&sid=$sid");
$bagdjhtml =<<<HTML
【<a href="?cmd=$getbagzbcmd">Trang bị</a>|Đạo cụ|<a href="?cmd=$getbagypcmd">Dược phẩm</a>|<a href="?cmd=$getbagjncmd">Phù lục</a>】<br/>
<br/>
$djhtml
<br/>
<button onClick="javascript :history.back(-1);">Trở về</button> <a href="?cmd=$gonowmid">Trở về trò chơi</a>
HTML;
echo $bagdjhtml;