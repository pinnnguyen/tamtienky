<?php
$player = \player\getplayer($sid,$dblj);
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$zhuangbei = new \player\zhuangbei();
$zhuangbei = player\getzbkzb($zbid,$dblj);

$html = <<<HTML
Tên:$zhuangbei->zbname<br/>
Công Kích:$zhuangbei->zbgj<br/>
Phòng Ngự:$zhuangbei->zbfy<br/>
Khí Huyết:$zhuangbei->zbhp<br/>
Bạo Kích:$zhuangbei->zbbj%<br/>
Hút Máu:$zhuangbei->zbxx%<br/>
Thông Tin:$zhuangbei->zbinfo<br/><br/>
Nhắc nhở: Trang bị không hạn chế chủng loại！<br/><br/>

<br/>
<button onClick="javascript :history.back(-1);">Trở về</button> <a href="?cmd=$gonowmid">Trở về trò chơi</a>
HTML;
echo $html;
?>