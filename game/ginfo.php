<?php
require_once($_SERVER['DOCUMENT_ROOT'] . "/pdo.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/class/encode.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/class/player.php");

$sid = $_GET['sid'];
$gid = $_GET['gid'];
$gyid = $_GET['gyid'];

$player = \player\getplayer($sid, $dblj);
$nowmid = $player->nowmid;

$encode = new \encode\encode();
$backcmd = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");

if ($nowmid != $player->nowmid) {
    $html = <<<HTML
        Hãy chơi game bình thường!<br/>
        <br/>
        <a href="?cmd=$backcmd">Trở lại trò chơi</a>
HTML;
    echo $html;
    exit();
}

if (isset($gid)) {
    $guaiwu = player\getguaiwu($gid, $dblj);
    $yguaiwu = \player\getyguaiwu($gyid, $dblj);
    $pvecmd = $encode->encode("cmd=pve&gid=$gid&sid=$sid&nowmid=$nowmid");
    if ($yguaiwu->ginfo == '') {
        $yguaiwu->ginfo = 'Không có danh vọng';
    }

    if ($guaiwu->sid != '' or $guaiwu->gname == '') {
        $html = <<<HTML
        Con quái vật đã bị tấn công bởi những người khác!<br/>
        Mời Thiếu Hiệp luyện tập một cái tốc độ tay nha
        <br/>
        <a href="?cmd=$backcmd">Trở về trò chơi</a>
HTML;
    } else {
        $dlhtml = '';
        $zbhtml = '';
        $djhtml = '';
        $yphtml = '';
        if ($yguaiwu->gzb != '') {
            $zbarr = explode(',', $yguaiwu->gzb);
            foreach ($zbarr as $newstr) {
                $zbkzb = \player\getzbkzb($newstr, $dblj);
                $img = substr($zbkzb->preview_url, 1, -1);
                $zbcmd = $encode->encode("cmd=zbinfo_sys&zbid=$zbkzb->zbid&sid=$sid");
                $zbhtml .= "<div class='flex mt-2'>
<div class='border rounded-full w-[45px] h-[45px] flex items-center justify-center'><img class='w-10 rounded-full' src='$img' /></div>
<a class='' href='?cmd=$zbcmd'>$zbkzb->zbname</a>
</div>";
            }
            $dlhtml .= $zbhtml;
        }

        if ($yguaiwu->gdj != '') {
            $djarr = explode(',', $yguaiwu->gdj);

            foreach ($djarr as $newstr) {
                $dj = \player\getdaoju($newstr, $dblj);
                $djinfo = $encode->encode("cmd=djinfo&djid=$dj->djid&sid=$sid");
                $djhtml .= "<div class='flex mt-2'>
<div class='border rounded-full w-[45px] h-[45px] flex items-center justify-center'><img class='rounded-full w-[16px]' src='images/XJICON_Treasure_03_17.png' /></div>
<a class='' href='?cmd=$djinfo'>$dj->djname</a></div>";
            }
            $dlhtml .= $djhtml;
        }

        if ($yguaiwu->gyp != '') {
            $yparr = explode(',', $yguaiwu->gyp);
            foreach ($yparr as $newstr) {
                $yp = \player\getyaopinonce($newstr, $dblj);
                $ypinfo = $encode->encode("cmd=ypinfo&ypid=$yp->ypid&sid=$sid");
                $yphtml .= "<div class='ypys'><a href='?cmd=$ypinfo'>$yp->ypname</a></div>";
            }
            $dlhtml .= $yphtml;
        }

        if ($dlhtml == '') {
            $dlhtml = 'Quái vật không có vật phẩm rớt ra<br/>';
        }

        $html = <<<HTML
        <div>
        <div class="p-2 p-6 leading-6">
            <div>
            [$yguaiwu->gname]: Cấp: $yguaiwu->glv
        </div>
<div>
        Cảnh giới: $guaiwu->jingjie
</div>
<div>
        <div class="mt-4">
                        <div class="uppercase mb-1">Thông tin</div>
                         <div class="border border-[#dcc18d] bg-[#2d251d] rounded text-center flex justify-between text-xs">
                            <div class="p-2">
                                <div class="flex items-center p-1"><div class="mr-1">Sát thương vật lý</div> <div>$guaiwu->ggj</div></div>
                                <div class="flex items-center p-1"><div class="mr-1">Phòng thủ vật lý</div> <div>$guaiwu->gfy</div></div>
                                <div class="flex items-center p-1"><div class="mr-1">Chí mạng</div> <div>$guaiwu->gdj</div></div>
                            </div>
                            <div class="p-2">
                              <div class="flex items-center p-1"><div class="mr-1">Máu</div> <div>$guaiwu->gmaxhp</div></div>
                              <div class="flex items-center p-1"><div class="mr-1">Hút máu</div> <div>$guaiwu->xxx</div></div>
                            </div>
                         </div>
                    </div>
</div>
        <br/>
        Rơi xuống:
        $dlhtml
   </div>
<div class="h-[55px] flex items-center justify-end pr-3">
<!--        <a href="?cmd=$backcmd" class="!flex items-center justify-center bg-[#333333] !text-white h-[28px]">Rút lui</a>-->
        <a cmd="pve" gid=$gid sid=$sid nowmid=$nowmid class="on-attach !flex items-center justify-center bg-[#ff613d] !text-white h-[28px]">Công kích</a>
</div>
</div>

<script>
$('.on-attach').unbind('click').bind('click', function () {
    axios.get(`game/pve.php?gid=$gid&cmd=pvegj&sid=$sid&nowmid=$nowmid&manual=true`).then((response) => {
        $('.teleport').html(response.data?.html)
    })
});
</script>
HTML;
    }
}

echo $html;
