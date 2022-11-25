<?php

$player = player\getplayer($sid,$dblj);
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$taskhtml = '';
$npc = player\getnpc($nid,$dblj);
$rwztt='';
if ($npc->taskid!=''){
    $taskarr = explode(',',$npc->taskid);
    $taskhtml = '';
    for ($i=0;$i<count($taskarr);$i++){
        $task = \player\gettask($taskarr[$i],$dblj);
        $rwztt ='';
        if (!$task){
            continue;
        }
        if ($task->rwlx==1 || $task->rwlx==2){
            $reztarr = array('Phổ thông','Thường ngày');
            $rwzttext = $reztarr[ $task->rwlx - 1];
            $nowptrw = \player\getplayerrenwuonce($sid,$task->rwid,$dblj);
            if (!$nowptrw){
                if ($task->rwzl != 3){
                    $rwztt = '<img src="images/wen.gif" />';
                    $rwztt = $rwztt."[$rwzttext]";
                }elseif($task->rwyq == $nid){
                    $rwztt = '<img src="images/wen.gif" />';
                    $rwztt = $rwztt."[$rwzttext]";
                }else{
                    continue;
                }
            }else{
                if($nowptrw->rwzt==2){
                    if ($nowptrw->rwzl != 3){
                        $rwztt = '<img src="images/tan.gif" />';
                        $rwztt = $rwztt . "[$rwzttext]";
                    }elseif($nowptrw->rwcount == $nid){
                        $rwztt = '<img src="images/tan.gif" />';
                        $rwztt = $rwztt . "[$rwzttext]";
                    }else{
                        continue;
                    }
                }else{
                    continue;
                }
            }
        }

        if ($task->rwlx==3){
            $nowzxrw = \player\getplayerrenwuonce($sid,$task->rwid,$dblj);
            if ($nowzxrw){
                if ($nowzxrw->rwzt==2){
                    if ($nowzxrw->rwzl != 3){
                        $rwztt = '<img src="images/tan.gif" />';
                        $rwztt = $rwztt . "[Chủ tuyến]";
                    }elseif($nowzxrw->rwcount == $nid){
                        $rwztt = '<img src="images/tan.gif" />';
                        $rwztt = $rwztt . "[Chủ tuyến]";
                    }else{
                        continue;
                    }
                }else{
                    continue;
                }
            }else{
                if ($task->lastrwid <= 0){
                    if ($task->rwzl != 3){
                        $rwztt = '<img src="images/wen.gif" />';
                        $rwztt = $rwztt.'[Chủ tuyến]';
                    }elseif($task->rwyq == $nid){
                        $rwztt = '<img src="images/wen.gif" />';
                        $rwztt = $rwztt.'[Chủ tuyến]';
                    }else{
                        continue;
                    }

                }else{
                    $lastrw = \player\getplayerrenwuonce($sid,$task->lastrwid,$dblj);
                    if ($lastrw){
                        if ($lastrw->rwzt==3){
                            if ($task->rwzl != 3){
                                $rwztt = '<img src="images/wen.gif" />';
                                $rwztt = $rwztt.'[Chủ tuyến]';
                            }elseif($task->rwyq == $nid){
                                $rwztt = '<img src="images/wen.gif" />';
                                $rwztt = $rwztt.'[Chủ tuyến]';
                            }else{
                                continue;
                            }
                        }else{
                            continue;
                        }
                    }else{
                        continue;
                    }
                }
            }
        }
        $rwcmd = $encode->encode("cmd=task&nid=$nid&rwid=$taskarr[$i]&sid=$sid");
        $taskhtml .=<<<HTML
        $rwztt<a href="?cmd=$rwcmd">$task->rwname</a><br/>
HTML;
    }
}
if ($taskhtml!=''){
    $taskhtml = '<br/>'.$taskhtml;
}
$gnhtml='';
if ($npc->muban != ''){
    $mubanitem =  explode(',',$npc->muban);
    foreach ($mubanitem as $muban){
        $muban = iconv('UTF-8','GB2312',$muban);
        if (file_exists("./npc/muban/$muban")){
            include "./npc/muban/$muban";
        }
    }
}

$npchtml =<<<HTML
        Npc: $npc->nname<br/>
        Giới tính: $npc->nsex<br/>
        Tin tức: $npc->ninfo<br/>
        $taskhtml
        $gnhtml<br/>
        <a href="?cmd=$gonowmid">Trở về</a>
        <a href="?cmd=$boss">Trở về trò chơi</a>
HTML;
echo $npchtml
?>
