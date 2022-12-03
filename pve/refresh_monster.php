<?php
require_once($_SERVER['DOCUMENT_ROOT'] . "/pdo.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/class/player.php");

$sid = $_GET['sid'];
$player = player\getplayer($sid, $dblj);

$sql = "select * from midguaiwu where mid='$player->nowmid' AND sid = ''";
//Nhận quái vật bản đồ hiện tại
$cxjg = $dblj->query($sql);
$cxallguaiwu = $cxjg->fetchAll(PDO::FETCH_ASSOC);
$gwhtml = '';

for ($i = 0; $i < count($cxallguaiwu); $i++) {
    $monster_lv = $cxallguaiwu[$i]['glv'];
    $monster_name = $cxallguaiwu[$i]['gname'];
    $monster_id = $cxallguaiwu[$i]['id'];
    $gyid = $cxallguaiwu[$i]['gyid'];

    $ran_top = mt_rand(40, 250);
    $ran_left = mt_rand(1, 350);

    $top =  $ran_top . 'px';
    $left = $ran_left . 'px';

    $gwhtml .= <<<HTML
    <div class="absolute monster flex flex-col items-center"
        style="top: $top; left: $left"
        gid="$monster_id" 
        gyid="$gyid" 
        sid='$sid' 
        nowmid='$player->nowmid'>
        <a 
        class='relative rounded-full m-2 !flex flex-col bg-white !text-white font-medium text-center w-[50px] h-[50px] overflow-hidden attach-monster'>
        <img class="absolute top-[50%] left-[50%] w-[45px] h-[45px]" loading="lazy" src="pve/image/fs_007_421.png" style="transform: translate(-50%, -50%);">
        <span class="text-white font-size-7">
        [lv$monster_lv] $monster_name
        </span>
        </a> 
    </div>
HTML;
}

echo $gwhtml;
exit();
