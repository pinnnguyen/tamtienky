<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/8/26 0026
 * Time: 19:06
 */
$newclub = $encode->encode("cmd=npc&&nid=$nid&canshu=newclub&sid=$sid");
$player = \player\getplayer($sid, $dblj);
$gnhtml = <<<HTML
=======Tạo tông môn=======<br/>
Vô nhân đạo Tu hành là hành đạo trộm cắp<br/>
Nhiều hơn đại lộ Kẻ trộm không bao giờ dừng lại<br/>
Muốn đánh cắp con đường cổ tích một mình..quá khó khăn..<br/>
<a href="?cmd=$newclub" >Tạo tông môn</a><br/>
HTML;
$clubplayer = \player\getclubplayer_once($sid, $dblj);
if (isset($canshu)) {
    switch ($canshu) {
        case "newclub":
            if ($clubplayer) {
                $gnhtml = "<br/>bạn đã có một bang hội<br/>";
                break;
            }
            $gnhtml = <<<HTML
<form>
<input type="hidden" name="cmd" value="npc">
<input type="hidden" name="nid" value="$nid">
<input type="hidden" name="sid" value="$sid">
<input type="hidden" name="canshu" value="addclub">
Tên tông môn:<input class="border border-1" name="clubname"><br/>
Mô tả về tông môn:<textarea class="border border-1" name="clubinfo" style="height: 80px"></textarea>
<br/>
<button type="submit" class="gamesubmit" value="Tạo">Tạo</button>
</form>
HTML;
            break;
        case "addclub":
            if ($clubplayer) {
                $gnhtml = "<br/>Bạn đã có một tông môn<br/>";
                break;
            }

            $clubname = htmlspecialchars($clubname);
            $clubinfo = htmlspecialchars($clubinfo);
            if (strlen($clubname) < 6 || strlen($clubname) > 12) {
                $gnhtml = "<br/>Tên quá dài hoặc quá ngắn<br/>";
                break;
            }
            $sql = "insert into club(clubname, clubinfo, clublv, clubexp, clubno1) VALUES (?,?,?,?,?)";
            $stmt = $dblj->prepare($sql);
            $stmt->execute(array($clubname, $clubinfo, 1, 0, $player->uid));
            $clubid = $dblj->lastInsertId();

            $sql = "insert into clubplayer(clubid, uid, sid, uclv) VALUES (?,?,?,?)";
            $stmt = $dblj->prepare($sql);
            $stmt->execute(array($clubid, $player->uid, $sid, 1));

            $clubcmd = $encode->encode("cmd=club&sid=$sid");
            $gnhtml .= "<br/>Chúc mừng thiếu hiện đã tạo được tông môn<br/><a href='?cmd=$clubcmd'>Nhấp để vào</a>";
            break;
    }
}

?>

