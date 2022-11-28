<?php
$player = \player\getplayer($sid, $dblj);
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$cwhtml = '';
$cwnamehtml = '';
$chouqucmd = $encode->encode("cmd=chongwu&canshu=chouqu&sid=$sid");

if (isset($canshu)) {
    switch ($canshu) {
        case 'chouqu':
            if (\player\changeczb(2, 50, $sid, $dblj)) {
                \player\addchongwu($sid, $dblj);
            } else {
                echo "Không đủ Đá Thần linh Tối cao<br/>";
            }
            break;
        case 'chuzhan':
            \player\changeplayersx('cw', $cwid, $sid, $dblj);
            $player = \player\getplayer($sid, $dblj);
            break;
        case 'shouhui':
            \player\changeplayersx('cw', 0, $sid, $dblj);
            $player = \player\getplayer($sid, $dblj);
            break;
        case 'fangsheng':
            \player\delechongwu($cwid, $sid, $dblj);
            break;
        case 'cwinfo':
            $chongwu = \player\getchongwu($cwid, $dblj);
            $pzarr = array('Phổ thông', 'Ưu tú', 'Trác tuyệt', 'Phi phàm', 'Hoàn mỹ', 'Nghịch thiên');
            $cwpz = $pzarr[$chongwu->cwpz];
            $chongwu->cwpz = $chongwu->cwpz * 10;
            $cwhtml = <<<HTML
            Tên: [$chongwu->cwname]<br/>
            Class: $chongwu->cwlv<br/>
            Phẩm: $cwpz<br/>
            K.nghiệm: $chongwu->cwexp/$chongwu->cwmaxexp<br/>
            K.huyết: ($chongwu->cwhp/$chongwu->cwmaxhp)<br/>
            C.kích: $chongwu->cwgj<br/>
            P.ngự: $chongwu->cwfy<br/>
            B.kích: $chongwu->cwbj<br/>
            H.máu: $chongwu->cwxx<br/>
            <br/>
            K.huyết trưởng thành: $chongwu->uphp<br/>
            C.kích trưởng thành: $chongwu->upgj<br/>
            P.ngự trưởng thành: $chongwu->upfy<br/>
            Phẩm chất [$cwpz] thưởng khi nâng cấp $chongwu->cwpz%<br/>
            <br/><br/>
            <button onClick="javascript :history.back(-1);">Trở về</button> <a href="game.php?cmd=$gonowmid">Trở về trò chơi</a>
HTML;
            echo $cwhtml;
            exit();
            break;
    }
}

$allcw = \player\getchongwuall($sid, $dblj);
if ($allcw) {
    foreach ($allcw as $cw) {
        $cwid = $cw['cwid'];
        $czcmd = '';
        if ($cwid != $player->cw) {
            $czcmd = $encode->encode("cmd=chongwu&canshu=chuzhan&cwid=$cwid&sid=$sid");
            $fscmd = $encode->encode("cmd=chongwu&canshu=fangsheng&cwid=$cwid&sid=$sid");
            $czcmd = '<a href="?cmd=' . $czcmd . '">Ra trận</a>';
            $fscmd = '<a href="?cmd=' . $fscmd . '">Phóng thích</a>';
            $gncmd = $czcmd . $fscmd;
        } else {
            $shcmd = $encode->encode("cmd=chongwu&canshu=shouhui&cwid=$cwid&sid=$sid");
            $shcmd = '<a href="?cmd=' . $shcmd . '">Triệu hồi</a>';
            $gncmd = '(Đã xuất chiến)' . $shcmd;
        }
        $cwinfo = $encode->encode("cmd=chongwu&cwid=$cwid&canshu=cwinfo&sid=$sid");
        $cwnamehtml .= "[Sủng vật]" . '<a href="?cmd=' . $cwinfo . '">' . $cw['cwname'] . '</a>' . $gncmd . '<br/>';

    }
} else {
    $cwnamehtml = 'Bạn hiện không có vật nuôi';
}
$cwhtml = <<<HTML
$cwnamehtml
<br/>
<a href="?cmd=$chouqucmd">Triệu hồi sủng vật[Cực phẩm linh thạch 50]</a>
<br/><br/>
<button onClick="javascript :history.back(-1);">Trang trước</button> <a href="game.php?cmd=$gonowmid">Trở về trò chơi</a>
HTML;
echo $cwhtml;