<?php
require_once($_SERVER['DOCUMENT_ROOT'] . "/pdo.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/class/player.php");
require_once $_SERVER['DOCUMENT_ROOT'] . "/class/encode.php";

$sid = $_GET['sid'];
$uid = $_GET['uid'];
$cmd = $_GET['cmd'];
$upsx = $_GET['upsx'];
$zbnowid = $_GET['zbnowid'];

$encode = new \encode\encode();
$player = \player\getplayer($sid, $dblj);

$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$gotrangbi = $encode->encode("cmd=xxzb&zbwz=1&sid=$sid");
$zhuangbei = new \player\zhuangbei();

if ($zbnowid != 0) {
    $zhuangbei = player\getzb($zbnowid, $dblj);
}

$arr = [$player->tool1, $player->tool2, $player->tool3, $player->tool4, $player->tool5, $player->tool6];
$setzbwz = '';
$upgj = '';
$upfy = '';
$uphp = '';
$upbj = '';
$upxx = '';
$upts = '';
$qhssum = '';
$upls = round($zhuangbei->qianghua / 2) * round($zhuangbei->qianghua / 3) * 2 * round($zhuangbei->qianghua / 4) + 1;

$equip = '';
$cup_trang_bi = '';

if (in_array($zhuangbei->zbnowid, $arr)) {
    $equip = <<<HTML
<button class="bg-[#9e9e9e] h-[30px] flex items-center justify-center rounded-sm p-1" style="background: radial-gradient(black, transparent)">Tháo trang bị</button>
HTML;
} else {
    $cup_trang_bi = <<<HTML
    <button zbnowid="$zhuangbei->zbnowid" sid="$sid" cmd="delezb" class="delete-item h-[30px] flex items-center justify-center rounded-sm p- bg-button">Phân giải</button>
HTML;
}

if (isset($canshu)) {
    if ($canshu == "chushou" && !in_array($zhuangbei->zbnowid, $arr) && isset($pay) && $pay > 0) {
        try {
            $dblj->setAttribute(PDO::ATTR_AUTOCOMMIT, 0);
            $dblj->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $dblj->beginTransaction();

            $sql = "insert into `fangshi_zb`(zbname, zbinfo, zbgj, zbfy, zbbj, zbxx, zbid, uid, zbnowid, sid, zbhp, qianghua, zblv, pay) VALUES ('$zhuangbei->zbname','$zhuangbei->zbinfo','$zhuangbei->zbgj','$zhuangbei->zbfy','$zhuangbei->zbbj','$zhuangbei->zbxx','$zhuangbei->zbid','$player->uid','$zbnowid','$sid','$zhuangbei->zbhp','$zhuangbei->qianghua','$zhuangbei->zblv','$pay')";
            $affected_rows = $dblj->exec($sql);
            if (!$affected_rows) {
                throw new PDOException("Trang bị treo bán thất bại<br/>"); //Lỗi đó ném ngoại lệ
            }

            $sql = "UPDATE `playerzhuangbei` SET uid=0,sid='' WHERE zbnowid = $zbnowid";
            $affected_rows = $dblj->exec($sql);
            if (!$affected_rows) {
                throw new PDOException("Trang bị truyền tống thất bại<br/>"); //Lỗi đó ném ngoại lệ
            }

            echo "Treo bán thành công!<br/>";
            $dblj->commit(); // Gửi khi giao dịch thành công
        } catch (PDOException $e) {
            echo $e->getMessage();
            $dblj->rollBack();
        }
        $dblj->setAttribute(PDO::ATTR_AUTOCOMMIT, 1); // Khép kín
        $zhuangbei = player\getzb($zbnowid, $dblj);
    }
}

if ($player->uid == $zhuangbei->uid) {
    $uyxb = '/' . $player->uyxb;
    if ($cmd == 'upzb') {
        if ($player->uyxb >= $upls) {
            $ret = \player\upzbsx($zbnowid, $upsx, $sid, $dblj);
            if ($ret != -1) {
                $retyxb = \player\changeyxb(2, $upls, $sid, $dblj);
                if ($ret == 2) {
                    $upts =
                        <<<HTML
    <script>$.notify('Nên trang bị đã cường hóa đến hạn mức lớn nhất+50 !', {
        style: 'normal',
        globalPosition: 'bottom right',
    })</script>
HTML;
                } elseif ($ret == 1) {
                    $upts = <<<HTML
    <script>$.notify('Chúc mừng cường hóa thành công', {
        style: 'normal',
        globalPosition: 'bottom right',
    })</script>
HTML;
                } elseif ($ret == 0) {
                    $upts = <<<HTML
    <script>$.notify('Cường hóa thất bại, mời tích lũy tích nhân phẩm', {
        style: 'normal',
        globalPosition: 'bottom right',
    })</script>
HTML;
                }
                $zhuangbei = \player\getzb($zbnowid, $dblj);
            } else {
                $upts = <<<HTML
    <script>$.notify('Cường hóa thất bại, linh thạch không đủ', {
        style: 'normal',
        globalPosition: 'bottom right',
    })</script>
HTML;
            }
        } else {
            $upts = <<<HTML
    <script>$.notify('Cường hóa thất bại, linh thạch không đủ', {
        style: 'normal',
        globalPosition: 'bottom right',
    })</script>
HTML;
        }
    }

    $upgj = $encode->encode("cmd=upzb&upsx=zbgj&zbnowid=$zhuangbei->zbnowid&sid=$sid");
    $upfy = $encode->encode("cmd=upzb&upsx=zbfy&zbnowid=$zhuangbei->zbnowid&sid=$sid");
    $uphp = $encode->encode("cmd=upzb&upsx=zbhp&zbnowid=$zhuangbei->zbnowid&sid=$sid");
    //    $upbj = $encode->encode("cmd=upzb&upsx=zbbj&zbnowid=$zhuangbei->zbnowid&sid=$sid");
    //    $upxx = $encode->encode("cmd=upzb&upsx=zbxx&zbnowid=$zhuangbei->zbnowid&sid=$sid");
    $daoju = player\getplayerdaoju($sid, 1, $dblj);
    $qhssum = '/0';
    if ($daoju) {
        $qhssum = '/' . $daoju->djsum;
    }

    $upgj = <<<HTML
    <button 
    class="bg-button upgrade-trangbi" 
    cmd="upzb" 
    upsx="zbgj" 
    zbnowid="$zhuangbei->zbnowid" 
    sid="$sid">Cường hóa</button>
HTML;
    $upfy = <<<HTML
    <button 
    class="bg-button upgrade-trangbi" 
    cmd="upzb" 
    upsx="zbfy" 
    zbnowid="$zhuangbei->zbnowid" 
    sid="$sid">Cường hóa</button>
HTML;
    $uphp = <<<HTML
    <button 
    class="bg-button upgrade-trangbi" 
    cmd="upzb" 
    upsx="zbhp" 
    zbnowid="$zhuangbei->zbnowid" 
    sid="$sid">Cường hóa</button>
HTML;
    $upbj = <<<HTML
    <a href="?cmd=$upbj">Cường hóa</a>
HTML;
    $upxx = <<<HTML
    <a href="?cmd=$upxx">Cường hóa</a>
HTML;
} else {
    $uyxb = '';
}

$use_trang_bi = '';

if ($player->uid == $zhuangbei->uid && !in_array($zhuangbei->zbnowid, $arr)) {
    $player = \player\getplayer($sid, $dblj);
    $delezb = $encode->encode("cmd=delezb&zbnowid=$zhuangbei->zbnowid&sid=$sid");
    $self = $_SERVER['PHP_SELF'];
    $use_trang_bi_url = $encode->encode("cmd=setzbwz&zbwz={$zhuangbei->tool}&zbnowid=$zhuangbei->zbnowid&sid=$sid");
    $use_trang_bi = <<<HTML
    <button 
        cmd="setzbwz"
        zbnowid="$zhuangbei->zbnowid"
        sid="$sid"
        zbwz="$zhuangbei->tool"
        class="h-[30px] flex items-center justify-center rounded-sm p-1 bg-button">
        <a href="?cmd=$use_trang_bi_url">
        Đeo trang bị
</a>
    </button>
HTML;

    if ($zhuangbei->tool == 0) {
        $setzbwz1 = $encode->encode("cmd=setzbwz&zbwz=1&zbnowid=$zhuangbei->zbnowid&sid=$sid");
        $setzbwz2 = $encode->encode("cmd=setzbwz&zbwz=2&zbnowid=$zhuangbei->zbnowid&sid=$sid");
        $setzbwz3 = $encode->encode("cmd=setzbwz&zbwz=3&zbnowid=$zhuangbei->zbnowid&sid=$sid");
        $setzbwz4 = $encode->encode("cmd=setzbwz&zbwz=4&zbnowid=$zhuangbei->zbnowid&sid=$sid");
        $setzbwz5 = $encode->encode("cmd=setzbwz&zbwz=5&zbnowid=$zhuangbei->zbnowid&sid=$sid");
        $setzbwz6 = $encode->encode("cmd=setzbwz&zbwz=6&zbnowid=$zhuangbei->zbnowid&sid=$sid");

        $setzbwz = "
        <a href='?cmd=$setzbwz1'>Trang bị tại 【  vũ khí 】 vị trí</a>
        <a href='?cmd=$setzbwz2'>Trang bị tại 【  đồ trang sức 】 vị trí</a><br/>
        <a href='?cmd=$setzbwz3'>Trang bị tại 【  quần áo 】 vị trí</a>
        <a href='?cmd=$setzbwz4'>Trang bị tại 【  đai lưng 】 vị trí</a><br/>
        <a href='?cmd=$setzbwz5'>Trang bị tại 【  đồ trang sức 】 vị trí</a>
        <a href='?cmd=$setzbwz6'>Trang bị tại 【  giày 】 vị trí</a><br/>";
    }

    $setzbwz .= <<<HTML
    <div class="flex items-center justify-end my-4">
        <input class="w-[45%] bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg h-[30px] bg-[#36445a] text-xs" type="number" name="pay"> 
        <button id="for-sale" zbnowid="$zhuangbei->zbnowid" sid="$sid" class="bg-button h-[30px] flex items-center justify-center rounded-sm p-1" value="Treo bán">Treo bán</button>
    </div>
HTML;
}

$updjsl = $zhuangbei->qianghua * 3 + 1;
$upls = round($zhuangbei->qianghua / 2) * round($zhuangbei->qianghua / 3) * 2 * round($zhuangbei->qianghua / 4) + 1;
$fjls = $zhuangbei->qianghua * 20 + 20;
$qianghua = '';

if ($zhuangbei->qianghua > 0) {
    $qianghua = "+" . $zhuangbei->qianghua;
}

$qhcgl = round((30 - $zhuangbei->qianghua) / 30, 2) * 100;
$qhcgl .= '%';
$tools = ["Không hạn định", "Vũ khí", "Đồ trang sức", "Quần áo", "Đai lưng", "Đồ trang sức", "Giày"];
$tool = $tools[$zhuangbei->tool];

$html = <<<HTML
<div class="p-3">
<div class="flex items-center justify-between mb-4">
<div class="flex items-center justify-center">
<div class="w-[75px]">
    <img src="$zhuangbei->preview_url" alt="">
</div>
</div>
<div class="border-l border-white pl-2">
    <div>
        $zhuangbei->zbname$qianghua
    </div>
    <div>
        Loại:$tool
    </div>
    <div>
    Đăng cấp: $zhuangbei->zblv
    </div>
    <div class="flex justify-between">
        <span>
            Công khích: $zhuangbei->zbgj
        </span>
        <span>|</span>
        $upgj
    </div>
    
    <div class="flex justify-between">
    <span>Phòng ngự: $zhuangbei->zbfy</span>
    <span>|</span>
$upfy
</div>
    <div class="flex justify-between">
    <span>Khí huyết: $zhuangbei->zbhp</span>
    <span>|</span>
$uphp
</div>
    <div class="flex justify-between">
    <span>Bạo kích: $zhuangbei->zbbj%</span></div>
    <div class="flex justify-between"><span>Hút máu: $zhuangbei->zbxx%</span></div>
</div>
</div>

<div class="leading-7">
    <div>
        Xác xuất cường hóa: $qhcgl  (100% +50 max)
    </div>
    <div class="flex">
        <span>Cường hóa cần CH thạch</span>: <img class="w-5 h-5" src="bag/images/00600.png" alt=""><span>$updjsl$qhssum</span>
    </div>
    <div class="flex">
        <span>Cường hóa cần</span>: <img class="w-5 h-5" src="bag/images/00534.png" alt=""> <span>$upls$uyxb</span>
    </div>
    <div class="flex">
        <span>Phân giải cần</span>: <img class="w-5 h-5" src="bag/images/00534.png" alt=""> <span>$fjls$uyxb</span>
    </div>
</div>
$upts

<div class="mt-2 border-t border-white">
    $setzbwz
</div>

<div class="flex justify-end mt-2 gap-2">
    $cup_trang_bi
    $equip
    $use_trang_bi
    </div>
</div>

<script src="bag/bag.js"></script>

HTML;
//Thông tin:$zhuangbei->zbinfo<br/><br/>

echo $html;
