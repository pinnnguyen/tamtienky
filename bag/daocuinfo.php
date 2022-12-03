<?php
require_once($_SERVER['DOCUMENT_ROOT'] . "/pdo.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/class/player.php");
require_once $_SERVER['DOCUMENT_ROOT'] . "/class/encode.php";
$encode = new \encode\encode();

$djid = $_GET['djid'];
$djcount = $_GET['djcount'];
$pay = $_GET['pay'];
$action = $_GET['action'];
$sid = $_GET['sid'];

$player = \player\getplayer($sid, $dblj);

$ydaoju = \player\getdaoju($djid, $dblj);
$daoju = \player\getplayerdaoju($sid, $djid, $dblj);

$djhtml = '';

if ($daoju) {
    $djhtml = <<<HTML
    <div class="mt-2 daocu-from">
        <p class="uppercase text-xs my-1">Số lượng</p>
        <input class="bg-[#2d251d] border border-[#dcc18d] rounded focus:outline-none djcount" type="number" name="djcount"><br/>
        <p class="uppercase text-xs my-1">Đơn giá</p>
        <input class="bg-[#2d251d] border border-[#dcc18d] rounded focus:outline-none pay" type="number" name="pay"> 
        <div class="text-left"><input djid="$djid" sid="$sid" class="button_yes buy-daocu" type="submit" value="Bán ra"></div>
    </div>
HTML;
}

if (isset($action)) {
    if ($action == 'pay') {
        try {
            $dblj->setAttribute(PDO::ATTR_AUTOCOMMIT, 0);
            $dblj->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $dblj->beginTransaction();
            $sql = "update `playerdaoju` set djsum= djsum - $djcount WHERE djid = $djid AND djsum >= $djcount AND uid = $player->uid AND sid='$sid'";
            $affected_rows = $dblj->exec($sql);
            if (!$affected_rows) {
                throw new PDOException("Bạn không có đủ đạo cụ<br/>");
            }
            $sql = "insert into `fangshi_dj`(djid,djcount,uid,pay,djname,djinfo) VALUES ($djid,$djcount,$player->uid,$pay,'$daoju->djname','$daoju->djinfo')";
            $affected_rows = $dblj->exec($sql);
            if (!$affected_rows) {
                throw new PDOException("Không bán được<br/>");
            }

            echo <<<HTML
<script>
$.notify('Đã giao bán thành công', {
        style: 'normal',
        globalPosition: 'bottom right',
    })
</script>
HTML;

            $dblj->commit();
            exit();
        } catch (PDOException $e) {
            echo $e->getMessage();
            $dblj->rollBack();
        }
    }
}

$dblj->setAttribute(PDO::ATTR_AUTOCOMMIT, 1);
$daoju = \player\getplayerdaoju($sid, $djid, $dblj);
\player\changerwyq1(1, $djid, 1, $sid, $dblj);

$html = <<<HTML
<div class="p-3 leading-6">
    <div>
    Tên vật phẩm: $ydaoju->djname
</div>
<div>Số lượng: $daoju->djsum</div>
<div>Giá vật phẩm: $ydaoju->djyxb linh thạch</div>

<div><p>Chi tiết</p>
<div class="bg-[#2d251d] border border-[#dcc18d] rounded leading-[40px] text-center">$ydaoju->djinfo</div>
</div>

<div>$djhtml</div>
</div>
<script src="bag/bag.js"></script>
HTML;

echo $html;



