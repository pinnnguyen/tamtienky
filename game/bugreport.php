<?php
$player = \player\getplayer($sid,$dblj);
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$bugedit = $encode->encode("cmd=bugreport&canshu=edit&sid=$sid");
$buginfo = $encode->encode("cmd=bugreport&canshu=info&sid=$sid");
$bug = \player\getbug_once($dblj);

if (isset($_POST['submit'])){
    if($_POST['title']!="" && $_POST['content']!="") {
        $title = htmlspecialchars($_POST['title']);
        $content = htmlspecialchars($_POST['content']);
        $sql = "insert into bugcollect(uname,title,content,uptime,uid) values('$player->uname','$title','$content',NOW(),'$player->uid')";
        $affected_rows=$dblj->exec($sql);
        if(!$affected_rows)
            throw new PDOException("gửi lỗi không thành công<br/>");//那个错误抛出异常
        echo "</br>Thân mến".$player->uname.", chúng tôi đã nhận được bài nộp của bạn</br> cảm ơn bạn đã ủng hộ trò chơi!";
    }
    else{
        echo "Tiêu đề và nội dung là bắt buộc!";
    }
}
if (isset($canshu)){
    switch ($canshu) {
        case 'edit':
            $edithtml = <<<HTML
            <br/>
            <h3><span style="color: #0093E8">Chỉnh sửa bài nộp</span></h3>
            <form method="post">
            <input type="text" placeholder="Tiêu đề lỗi" name="title" style="width: 100%"/>
            </br></br>
            <textarea cols="40" rows="1" placeholder="nội dung lỗi" name="content" style="height: 200px"></textarea>
            </br>
            <input type="submit" class="gamesubmit" name="submit" value="Trình lỗi"/>
            <a href="?cmd=$buginfo">Xem lỗi</a>
            </form>
HTML;
            echo $edithtml;
            break;
        case 'info':
                $sql = 'SELECT * FROM bugcollect ORDER BY id DESC LIMIT 20';//bug列表获取
                $ltcxjg = $dblj->query($sql);
                $lthtml='';
                if ($ltcxjg){
                    $ret = $ltcxjg->fetchAll(PDO::FETCH_ASSOC);
                    for ($i=0;$i < count($ret);$i++){
                        $id = $ret[count($ret) - $i-1]['id'];
                        $uname = $ret[count($ret) - $i-1]['uname'];
                        $uid = $ret[count($ret) - $i-1]['uid'];
                        $title = $ret[count($ret) - $i-1]['title'];
                        $content = $ret[count($ret) - $i-1]['content'];
                        $uptime = $ret[count($ret) - $i-1]['uptime'];
                        $ucmd = $encode->encode("cmd=getplayerinfo&uid=$uid&sid=$player->sid");
                        $bugcmd = $encode->encode("cmd=getbuginfo&id=$id&sid=$player->sid");
                        //编译命令必须带上sid参数否则会返回首页
                        if ($uname){
                            $lthtml .="<a href='?cmd=$ucmd'>$uname</a>:<a href='?cmd=$bugcmd'>$title</a><br/>";
                        }else{
                            $lthtml .="<div class='hpys' style='display: inline'>$uname:</div>$title<br/>";
                        }
                    }
                    $show = $lthtml.=<<<HTML
 <a href="?cmd=$bugedit">Chỉnh sửa nội dung lỗi</a>
HTML;
                    echo $show;
                }
            break;
    }
}

$footerhtml = <<<HTML
</br><button onClick="javascript :history.back(-1);">Trang trước</button>  <a href="game.php?cmd=$gonowmid">Trở lại trò chơi</a>
HTML;
echo $footerhtml;