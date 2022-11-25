<?php
$task = \player\getplayerrenwuonce($sid,$rwid,$dblj);
$player = \player\getplayer($sid,$dblj);
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$rwdjarr = explode(',',$task->rwdj);
$rwjlhtml = 'Phần thưởng nhiệm vụ:<br/>';
$rwhtml='';
if ($task->rwdj!=''){
    for ($i=0;$i<count($rwdjarr);$i++){
        $djarr = explode('|',$rwdjarr[$i]);
        $djid = $djarr[0];
        $djcount = $djarr[1];
        $rwdj = \player\getdaoju($djid,$dblj);
        $djinfo = $encode->encode("cmd=djinfo&djid=$rwdj->djid&sid=$sid");
        $rwjlhtml .="<div class='djys'><a href='?cmd=$djinfo'>$rwdj->djname</a>x$djcount</div>";
    }
}
if ($task->rwzb!=''){
    $sql = "select * from zhuangbei where zbid IN ($task->rwzb)";
    $cxjg = $dblj->query($sql);
    $ret = $cxjg->fetchAll(PDO::FETCH_ASSOC);
    for ($i=0;$i<count($ret);$i++){
        $zbname = $ret[$i]['zbname'];
        $zbid = $ret[$i]['zbid'];
        $zbcmd = $encode->encode("cmd=zbinfo_sys&zbid=$zbid&sid=$sid");
        $rwjlhtml.="<div class='zbys'><a href='?cmd=$zbcmd'>$zbname</a></div>";
    }
}
if ($task->rwexp!=''){
    $rwjlhtml.="Kinh nghiệm:$task->rwexp<br/>";
}
if ($task->rwyxb!=''){
    $rwjlhtml.="Linh thạch:$task->rwyxb<br/>";
}
switch ($task->rwzl){
    case 1://收集
        $daoju = \player\getplayerdaoju($sid,$task->rwyq,$dblj);
        $rwyq = \player\getdaoju($task->rwyq,$dblj);
        $rwhtml ="Thu thập $task->rwcount$rwyq->djname<br/> Tiến độ: $task->rwnowcount/$task->rwcount";
        break;
    case 2://打怪
        $rwyq = \player\getyguaiwu($task->rwyq,$dblj);
        $rwhtml ="Đánh giết $task->rwcount$rwyq->gname<br/> Tiến độ: $task->rwnowcount/$task->rwcount";
        break;
    case 3://对话
        $tjnpc = \player\getnpc($task->rwcount,$dblj);
        $rwhtml ="Đi tìm $tjnpc->nname";
        break;
}
$taskinfo = <<<HTML

$task->rwname:<br/>
$rwhtml<br/><br/>
$rwjlhtml
<br/>
<button onClick="javascript:history.back(-1);">Trở về</button> <a href="?cmd=$gonowmid">Trở về trò chơi</a>
HTML;
echo $taskinfo;
?>