<?php
require_once $_SERVER['DOCUMENT_ROOT'] . "/pdo.php";
require_once $_SERVER['DOCUMENT_ROOT'] . "/class/player.php";
require_once $_SERVER['DOCUMENT_ROOT'] . "/class/encode.php";

$sid = $_GET['sid'];
$canshu = $_GET['canshu'];
$player = player\getplayer($sid, $dblj);
$encode = new \encode\encode();

$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
if (isset($canshu)) {
    $getyxb = 0;
    if ($canshu == "maichu1") {
        $ret = \player\deledjsum($djid, 1, $sid, $dblj);
        if ($ret) {
            $daoju = \player\getdaoju($djid, $dblj);
            \player\changeyxb(1, $daoju->djyxb, $sid, $dblj);
            $getyxb = $daoju->djyxb;
        }
    }
    if ($canshu == "maichu5") {
        $ret = \player\deledjsum($djid, 5, $sid, $dblj);
        if ($ret) {
            $daoju = \player\getdaoju($djid, $dblj);
            \player\changeyxb(1, $daoju->djyxb * 5, $sid, $dblj);
            $getyxb = $daoju->djyxb * 5;
        }
    }
    if ($canshu == "maichu10") {
        $ret = \player\deledjsum($djid, 10, $sid, $dblj);
        if ($ret) {
            $daoju = \player\getdaoju($djid, $dblj);
            \player\changeyxb(1, $daoju->djyxb * 10, $sid, $dblj);
            $getyxb = $daoju->djyxb * 10;
        }
    }
    echo "Bán thành công, nhận được {$getyxb} Linh thạch<br/>";
}

$sql = "select * from playerdaoju WHERE sid = '$sid'";
$cxjg = $dblj->query($sql);
if ($cxjg) {
    $retdj = $cxjg->fetchAll(PDO::FETCH_ASSOC);
}
$djhtml = '';
for ($i = 0; $i < count($retdj); $i++) {
    $djname = $retdj[$i]['djname'];
    $djid = $retdj[$i]['djid'];
    $djsum = $retdj[$i]['djsum'];

    if ($djsum > 0) {
        $chakandj = $encode->encode("cmd=djinfo&djid=$djid&uid=$player->uid&sid=$sid");
        $maichu1 = $encode->encode("cmd=getbagdj&canshu=maichu1&djid=$djid&uid=$player->uid&sid=$sid");
        $maichu5 = $encode->encode("cmd=getbagdj&canshu=maichu5&djid=$djid&uid=$player->uid&sid=$sid");
        $maichu10 = $encode->encode("cmd=getbagdj&canshu=maichu10&djid=$djid&uid=$player->uid&sid=$sid");
        $djhtml .= <<<HTML
 <div class="flex flex-col max-h-[120px]" cmd="djinfo" djid="$djid" uid="$player->uid" sid="$sid">
    <div class="w-[60px] h-[60px] relative p-1 m-2 border border-white bg-[#bbbbbb]">
        <div class="border-2 border-white w-full h-full">
            <img class="w-[70%] absolute top-[50%] left-[50%]" style="transform: translate(-50%, -50%);" src="bag/images/00600.png" alt="" />
            <span class="absolute bottom-0 right-0 font-bold bg-[#ffc107d1]" style="font-size: 8px; padding: 2px">X $djsum</span>
        </div>
    </div>
    <span class="p-1">$djname</span>
 </div>
HTML;
    }
}
$getbagzbcmd = $encode->encode("cmd=getbagzb&sid=$sid");
$getbagypcmd = $encode->encode("cmd=getbagyp&sid=$sid");
$getbagjncmd = $encode->encode("cmd=getbagjn&sid=$sid");

$bagdjhtml = <<<HTML
<img src="bag/images/back.png" class="w-[35px] h-[35px] absolute z-[99] top-[2px] left-0" id="close-bag">
<div class="border-2 border-[#e0c49d] font-bold px-2 py-2 relative h-full">
    <div class="h-full border-2 border-black overflow-y-scroll">
        <div class="">
            <div class="h-[35px] flex items-center justify-center">
                <a id="bag-trangbi" cmd="getbagzb" sid="$sid">Trang bị</a>
                <a id="bag-duocpham" sid="$sid" cmd="getbagyp">Dược phẩm</a>|
                <a id="bag-skill" sid="$sid" cmd="getbagjn">Kỹ năng</a>
            </div>
            <div class="text-black bg-[#efeeec] grid grid-cols-4" style="height: calc(100% - 75px);">
                $djhtml
            </div>
        </div>
    </div>
</div>
<script src="bag/bag.js">
HTML;

echo $bagdjhtml;


//【<a href="?cmd=$getbagzbcmd">Trang bị</a>|Đạo cụ|<a href="?cmd=$getbagypcmd">Dược phẩm</a>|<a href="?cmd=$getbagjncmd">Phù lục</a>】<br />
