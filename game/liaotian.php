<?php
$player = \player\getplayer($sid, $dblj);
$_SERVER['PHP_SELF'];
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$player->sid");
if ($ltlx == "all") {
    $sql = 'SELECT * FROM ggliaotian ORDER BY id DESC LIMIT 10';//聊天列表获取
    $ltcxjg = $dblj->query($sql);
    $lthtml = '';

    if ($ltcxjg) {
        $ret = $ltcxjg->fetchAll(PDO::FETCH_ASSOC);
        $goliaotian = $encode->encode("cmd=liaotian&ltlx=all&sid=$sid");
        $imliaotian = $encode->encode("cmd=liaotian&ltlx=im&sid=$sid");
        $lthtml = "Kênh trò chuyện<a href='?cmd=$goliaotian'>làm mới</a> <br/>【Công cộng|<a href='?cmd=$imliaotian'>Trò chuyện riêng tư</a>】<br/>";
        for ($i = 0; $i < count($ret); $i++) {
            $uname = $ret[count($ret) - $i - 1]['name'];
            $umsg = $ret[count($ret) - $i - 1]['msg'];
            $uid = $ret[count($ret) - $i - 1]['uid'];
            $ucmd = $encode->encode("cmd=getplayerinfo&uid=$uid&sid=$player->sid");
            if ($uid) {
                $lthtml .= "[Công cộng]<a href='?cmd=$ucmd'>$uname</a>:<span class='xinxi'> $umsg</span><br/>";
            } else {
                $lthtml .= "[Công cộng]<div class='hpys' style='display: inline'>$uname:</div><span class='xinxi'> $umsg</span><br/>";
            }

        }
        $lthtml .= <<<HTML
<form id="sendmsg">
<input type="text" name="ltmsg" id="ltmsg">
<input type="hidden" name="cmd" value="sendliaotian">
<input type="hidden" name="ltlx" value="all">
<input type="hidden" name="sid" value="$sid">
<input type="button" class="gamesubmit" id="btnsub" value="发送">
</form>
<script type="text/javascript" src="js/jquery-1.6.2.min.js"></script>
<script>
$(document).ready(function(){
  $("#btnsub").click(function(){
     var ltmsg = $("input#ltmsg").val();
     console.log(ltmsg);
if (ltmsg.length<2){
     if($("span#liaotianerror").length==0){
            $("form").append("</br><span style='font-size:14px' id='liaotianerror'>"+ltmsg+"发送失败!长度必须大于2</span>");
            }
            else{
                $("span#liaotianerror").text(ltmsg+"发送失败!长度必须>=2");
            }
}else{
    $("#sendmsg").submit();
}
  });
});
</script>
HTML;
    }
}
if ($ltlx == 'im') {
    $sql = "SELECT * FROM imliaotian WHERE uid= {$player->uid} or imuid = {$player->uid} ORDER BY id DESC LIMIT 10";//聊天列表获取
    $ltcxjg = $dblj->query($sql);
    $lthtml = '';

    if ($ltcxjg) {
        $ret = $ltcxjg->fetchAll(PDO::FETCH_ASSOC);
        $goliaotian = $encode->encode("cmd=liaotian&ltlx=all&sid=$sid");
        $imliaotian = $encode->encode("cmd=liaotian&ltlx=im&sid=$sid");
        $lthtml = "Kênh trò chuyện <a href='?cmd=$imliaotian'>Làm mới</a> <br/>【<a href='?cmd=$goliaotian'>Công cộng</a>|Nói chuyện riêng】<br/>";
        for ($i = 0; $i < count($ret); $i++) {
            $uname = $ret[count($ret) - $i - 1]['name'];
            $umsg = $ret[count($ret) - $i - 1]['msg'];
            $uid = $ret[count($ret) - $i - 1]['uid'];
            $imuid = $ret[count($ret) - $i - 1]['imuid'];
            $uplayer = \player\getplayer1($imuid, $dblj);
            $ucmd = $encode->encode("cmd=getplayerinfo&uid=$uid&sid=$player->sid");
            $imucmd = $encode->encode("cmd=getplayerinfo&uid=$imuid&sid=$player->sid");
            if ($uid) {
                $lthtml .= "[Trò chuyện riêng]<a href='?cmd=$ucmd'>$uname</a>-->><a href='?cmd=$imucmd'>$uplayer->uname</a>:<span class='xinxi'>$umsg</span><br/>";
            }
        }
    }
}

$html = <<<HTML
$lthtml
<br/>
<a href="?cmd=$gonowmid">Trở về trò chơi</a>
HTML;
echo $html;