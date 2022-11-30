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
    <div class="absolute monster"
        style="top: $top; left: $left"
        gid="$monster_id" 
        gyid="$gyid" 
        sid='$sid' 
        nowmid='$player->nowmid'>
        <a 
        class='rounded-full m-2 !flex flex-col bg-[#8b0808] !text-white font-medium text-center w-[50px] overflow-hidden h-[50px] overflow-hidden attach-monster'>
        <span>
        [lv$monster_lv]
        </span>$monster_name</a> 
    </div>
HTML;
}

echo $gwhtml;
exit();
