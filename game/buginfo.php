<?php
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");

if (isset($id)) {
    $sql = 'SELECT * FROM bugcollect where id =' . $id;//bug详情获取
    $ltcxjg = $dblj->query($sql);
    $lthtml = '';
    if ($ltcxjg) {
        $ret = $ltcxjg->fetchAll(PDO::FETCH_ASSOC);
        for ($i = 0; $i < count($ret); $i++) {
            $title = $ret[count($ret) - $i - 1]['title'];
            $content = $ret[count($ret) - $i - 1]['content'];
            $uptime = $ret[count($ret) - $i - 1]['uptime'];
            if ($title) {
                $lthtml .= "<div class='fix'><h2>Tiêu đề</h2>$title </br><h2>Chi tiết</h2><p>$content</p><h2>Ngày gửi</h2>$uptime</div>";
            } else {
                $lthtml .= "<div class='hpys' style='display: inline'>$title </br>$content</br>$uptime</div>";
            }
        }
    }
    $show = $lthtml .= <<<HTML
</br><button onClick="javascript :history.back(-1);">Trang trước</button>  <a href="game.php?cmd=$gonowmid">Trở lại trò chơi</a>
HTML;
    echo $show;
}