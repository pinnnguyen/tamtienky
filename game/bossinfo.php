<?php
$boss = \player\getboss($bossid,$dblj);
$pvb = $encode->encode("cmd=pvb&bossid=$bossid&sid=$sid");
$bossinfohtml = <<<HTML
$boss->bossname<br/>
$boss->bossinfo<br/>
<br/>
<!--NOTE Kiểm tra boss đã chết chưa, hoặc đã đến thời gian công kích chưa, nếu đến rồi thì cho phép đánh-->
<a href="?cmd=$pvb">Công kích</a><a href="">Trở về trò chơi</a> 
HTML;
echo $bossinfohtml;

?>