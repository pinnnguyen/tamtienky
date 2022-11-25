<?php
//新手村村长
$player = player\getplayer($sid,$dblj);
$rehp = $encode->encode("cmd=npc&nid=$nid&canshu=rehp&sid=$sid");
$npchtml =<<<HTML
游戏错误
 <p><a href="?cmd=$gonowmid">Trở về trò chơi</a></p>;
HTML;
$xiaohao = round($player->ulv*(8.2 + $player->ulv/2));
if ($nid!=''){
    if (isset($canshu)){
        switch ($canshu){
            case 'rehp':
                if ($player->uhp<=0){
                    \player\changeyxb(2,$xiaohao,$sid,$dblj);
                    \player\changeplayersx('uhp',$player->umaxhp,$sid,$dblj);
                    $player = player\getplayer($sid,$dblj);
                    $gnhtml =<<<HTML
                    <br/>$npc->nname:Thiếu Hiệp, ngươi khí huyết đã khôi phục!<br/>
                    Sinh mệnh: $player->uhp/$player->umaxhp<br/>
HTML;
                }else{
                    $gnhtml ="<br/>Ta chỗ này chỉ tiếp đợi trọng thương nhân sĩ<br/>";
                }
                break;
        }
    }else{
        $gnhtml =<<<HTML
        <br/><a href="?cmd=$rehp">Sinh mệnh khôi phục cần [$xiaohao] Linh thạch (không có linh thạch không thu phí)</a><br/>
HTML;
        }
}
?>