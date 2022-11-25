<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/6/26
 * Time: 15:57
 */
$yphp = '';
$ypgj = '';
$ypfy = '';
$ypbj = '';
$ypxx = '';
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$yaopin = \player\getyaopinonce($ypid, $dblj);
$playeryp = \player\getplayeryaopin($ypid, $sid, $dblj);
$setyp = '';
$tishi = '';
if (isset($canshu)) {
    switch ($canshu) {
        case 'setyp1':
            \player\changeplayersx('yp1', $ypid, $sid, $dblj);
            $tishi = "Thiết trí dược phẩm 1 thành công<br/>";
            break;
        case 'setyp2':
            \player\changeplayersx('yp2', $ypid, $sid, $dblj);
            $tishi = "Thiết trí dược phẩm 2 thành công<br/>";
            break;
        case 'setyp3':
            \player\changeplayersx('yp3', $ypid, $sid, $dblj);
            $tishi = "Thiết trí dược phẩm 3 thành công<br/>";
            break;
        case 'useyp':
            $userypret = \player\useyaopin($ypid, 1, $sid, $dblj);
            if ($userypret) {
                $tishi = "Sử dụng dược phẩm thành công<br/>";
            } else {
                $tishi = "Sử dụng dược phẩm thất bại<br/>";
            }
            break;
    }
}
if ($playeryp) {
    $setyp1 = $encode->encode("cmd=ypinfo&canshu=setyp1&ypid=$ypid&sid=$sid");
    $setyp2 = $encode->encode("cmd=ypinfo&canshu=setyp2&ypid=$ypid&sid=$sid");
    $setyp3 = $encode->encode("cmd=ypinfo&canshu=setyp3&ypid=$ypid&sid=$sid");
    $useyp = $encode->encode("cmd=ypinfo&canshu=useyp&ypid=$ypid&sid=$sid");
    $setyp = <<<HTML
    <br/>
    <a href="?cmd=$setyp1">Trang bị dược phẩm 1.</a>
    <a href="?cmd=$setyp2">Trang bị dược phẩm 2.</a>
    <a href="?cmd=$setyp3">Trang bị dược phẩm 3.</a><br/>
    <a href="?cmd=$useyp">Sử dụng</a>
HTML;
}
if ($yaopin->yphp != 0) {
    $yphp = "Khí huyết" . $yaopin->yphp . "<br/>";
}
if ($yaopin->ypgj != 0) {
    $ypgj = "Công kích" . $yaopin->ypgj . "<br/>";
}
if ($yaopin->ypfy != 0) {
    $ypfy = "Phòng ngự" . $yaopin->ypfy . "<br/>";
}
if ($yaopin->ypbj != 0) {
    $ypbj = "Bạo kích" . $yaopin->ypbj . "<br/>";
}
if ($yaopin->ypxx != 0) {
    $ypxx = "Hút máu" . $yaopin->ypxx . "<br/>";
}
$ypsx = "<br/>" . $yphp . $ypgj . $ypfy . $ypbj . $ypxx;
$ypinfo = <<<HTML
$tishi
[$yaopin->ypname]<br/>
$ypsx
$setyp
<br/>
<button onClick="javascript :history.back(-1);">Trở về</button> <a href="?cmd=$gonowmid">Trở về trò chơi</a>
HTML;
echo $ypinfo;