<?php
$playertask = \player\getplayerrenwu($sid, $dblj);
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$mytaskinfo = '';
$taskType = '';
$rwzt = '';

for ($n = 0; $n < count($playertask); $n++) {
    $rwid = $playertask[$n]['rwid'];
    $mytaskinfo = $encode->encode("cmd=mytaskinfo&rwid=$rwid&sid=$sid");

    $rwname = $playertask[$n]['rwname'];
    $rwlx = $playertask[$n]['rwlx'];

    if ($rwlx == 2 && $playertask[$n]['rwzt'] != 3) {
        $taskType = <<<HTML
            <div class="flex items-center"><span class="mr-2">[Hằng ngày]</span>
HTML;
    }
    if ($rwlx == 3 && $playertask[$n]['rwzt'] != 3) {
        $taskType = <<<HTML
            <div class="flex items-center"><span class="mr-2">[Chính tuyến]</span>
HTML;
    }
    if ($rwlx == 1 && $playertask[$n]['rwzt'] != 3) {
        $taskType = <<<HTML
            <div class="!flex items-center"><span class="mr-2">[Phổ thông]</span>
HTML;
    }

    switch ($playertask[$n]['rwzt']) {
        case 1:
            $taskhtml .= $taskType . <<<HTML
            <a class="!flex items-center" href="?cmd=$mytaskinfo"><img class="mr-1" src="images/wen.gif"/> $rwname</a></div>
HTML;
            break;
        case 2:
            $taskhtml .= $taskType . <<<HTML
            <a class="!flex items-center" href="?cmd=$mytaskinfo"><img class="mr-1" src="images/tan.gif"/> $rwname</a></div>
HTML;
            break;
        case 3:
            break;
    }
}
$taskhtml .= <<<HTML
<br/>
<a href="?cmd=$gonowmid">Trở lại trò chơi</a>
HTML;
echo $taskhtml;