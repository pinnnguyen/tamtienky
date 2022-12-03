<?php
require_once($_SERVER['DOCUMENT_ROOT'] . "/pdo.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/class/player.php");
require_once $_SERVER['DOCUMENT_ROOT'] . "/class/encode.php";

$sid = $_POST['sid'];
$zbnowid = $_POST['zbnowid'];
$pay = $_POST['pay'];
$player = \player\getplayer($sid, $dblj);
$zhuangbei = new \player\zhuangbei();
$zhuangbei = player\getzb($zbnowid, $dblj);

$in_equips = [$player->tool1, $player->tool2, $player->tool3, $player->tool4, $player->tool5, $player->tool6];
if (!in_array($zhuangbei->zbnowid, $in_equips) && isset($pay) && $pay > 0) {
    try {
        $dblj->setAttribute(PDO::ATTR_AUTOCOMMIT, 0);
        $dblj->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $dblj->beginTransaction();

        $sql = "insert into `fangshi_zb`(zbname, zbinfo, zbgj, zbfy, zbbj, zbxx, zbid, uid, zbnowid, sid, zbhp, qianghua, zblv, pay, preview_url) VALUES ('$zhuangbei->zbname','$zhuangbei->zbinfo','$zhuangbei->zbgj','$zhuangbei->zbfy','$zhuangbei->zbbj','$zhuangbei->zbxx','$zhuangbei->zbid','$player->uid','$zbnowid','$sid','$zhuangbei->zbhp','$zhuangbei->qianghua','$zhuangbei->zblv','$pay', '$zhuangbei->preview_url')";
        $affected_rows = $dblj->exec($sql);
        if (!$affected_rows) {
            throw new PDOException("Trang bị treo bán thất bại<br/>"); //Lỗi đó ném ngoại lệ
        }

        $sql = "UPDATE `playerzhuangbei` SET uid=0, sid='' WHERE zbnowid = $zbnowid";
        $affected_rows = $dblj->exec($sql);
        if (!$affected_rows) {
            throw new PDOException("Trang bị truyền tống thất bại<br/>"); //Lỗi đó ném ngoại lệ
        }

        echo <<<HTML
<script>
$.notify('Treo bán thành công', {
            style: 'normal',
            globalPosition: 'bottom right',
        })
</script>
HTML;

        $dblj->commit(); // Gửi khi giao dịch thành công
    } catch (PDOException $e) {
        echo $e->getMessage();
        $dblj->rollBack();
    }

    $dblj->setAttribute(PDO::ATTR_AUTOCOMMIT, 1); // Khép kín
    $zhuangbei = player\getzb($zbnowid, $dblj);

    exit();
}

echo <<<HTML
<script>
$.notify('Treo bán thất bại', {
            style: 'normal',
            globalPosition: 'bottom right',
        })
</script>
HTML;

exit();
