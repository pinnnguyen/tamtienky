<?php

$player = \player\getplayer($sid,$dblj);
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$zhuangbei = new \player\zhuangbei();
if ($zbnowid!=0){
    $zhuangbei = player\getzb($zbnowid,$dblj);
}

$arr = array($player->tool1,$player->tool2,$player->tool3,$player->tool4,$player->tool5,$player->tool6);
$setzbwz='';
$upgj = '';
$upfy = '';
$uphp = '';
$upbj = '';
$upxx = '';
$upts = '';
$qhssum = '';
$upls = round($zhuangbei->qianghua/2) * round($zhuangbei->qianghua/3) * 2 * (round($zhuangbei->qianghua / 4) )+ 1;

if (isset($canshu)){
    if ($canshu == "chushou" && !in_array($zhuangbei->zbnowid,$arr) && isset($pay) && $pay > 0){
        try {

            $dblj->setAttribute(PDO::ATTR_AUTOCOMMIT, 0);
            $dblj->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $dblj->beginTransaction();

            $sql = "insert into `fangshi_zb`(zbname, zbinfo, zbgj, zbfy, zbbj, zbxx, zbid, uid, zbnowid, sid, zbhp, qianghua, zblv, pay) VALUES ('$zhuangbei->zbname','$zhuangbei->zbinfo','$zhuangbei->zbgj','$zhuangbei->zbfy','$zhuangbei->zbbj','$zhuangbei->zbxx','$zhuangbei->zbid','$player->uid','$zbnowid','$sid','$zhuangbei->zbhp','$zhuangbei->qianghua','$zhuangbei->zblv','$pay')";
            $affected_rows = $dblj->exec($sql);
            if (!$affected_rows){
                throw new PDOException("Trang bị treo bán thất bại<br/>");//那个错误抛出异常
            }
            $sql="UPDATE `playerzhuangbei` SET uid=0,sid='' WHERE zbnowid = $zbnowid";
            $affected_rows=$dblj->exec($sql);
            if (!$affected_rows){
                throw new PDOException("Trang bị truyền tống thất bại<br/>");//那个错误抛出异常
            }
            echo "Treo bán thành công!<br/>";
            $dblj->commit();//交易成功就提交
        }catch(PDOException $e){
            echo $e->getMessage();
            $dblj->rollBack();
        }
        $dblj->setAttribute(PDO::ATTR_AUTOCOMMIT, 1);//关闭
        $zhuangbei = player\getzb($zbnowid,$dblj);
    }
}


if ($player->uid == $zhuangbei->uid){
    $uyxb = '/'.$player->uyxb;
    if ($cmd=='upzb'){
        if ($player->uyxb >=$upls){
            $ret = \player\upzbsx($zbnowid,$upsx,$sid,$dblj);
            if ($ret != -1){
                $retyxb = \player\changeyxb(2,$upls,$sid,$dblj);
				if ($ret==2){
                    $upts = "Nên trang bị đã cường hóa đến hạn mức lớn nhất+50 !<br/>";
                }
                elseif ($ret==1){
                    $upts = "Chúc mừng cường hóa thành công<br/>";
                }
				elseif ($ret==0){
                    $upts = "Cường hóa thất bại, mời tích lũy tích nhân phẩm<br/>";
                }
                $zhuangbei = \player\getzb($zbnowid,$dblj);

            }else{
                $upts = "Cường hóa thất bại, cường hóa thạch không đủ<br/>";
            }
        }else{
            $upts = "Cường hóa thất bại, linh thạch không đủ<br/>";
        }
    }
    $upgj = $encode->encode("cmd=upzb&upsx=zbgj&zbnowid=$zhuangbei->zbnowid&sid=$sid");
    $upfy = $encode->encode("cmd=upzb&upsx=zbfy&zbnowid=$zhuangbei->zbnowid&sid=$sid");
    $uphp = $encode->encode("cmd=upzb&upsx=zbhp&zbnowid=$zhuangbei->zbnowid&sid=$sid");
//    $upbj = $encode->encode("cmd=upzb&upsx=zbbj&zbnowid=$zhuangbei->zbnowid&sid=$sid");
//    $upxx = $encode->encode("cmd=upzb&upsx=zbxx&zbnowid=$zhuangbei->zbnowid&sid=$sid");
    $daoju = player\getplayerdaoju($sid,1,$dblj);
    $qhssum = '/0';
    if ($daoju){
        $qhssum = '/'.$daoju->djsum;
    }

    $upgj =<<<HTML
    <a href="?cmd=$upgj">Cường hóa công kích</a>
HTML;
    $upfy =<<<HTML
    <a href="?cmd=$upfy">Cường hóa phòng ngự</a>
HTML;
    $uphp =<<<HTML
    <a href="?cmd=$uphp">Cường hóa khí huyết</a>
HTML;
    $upbj =<<<HTML
    <a href="?cmd=$upbj">Cường hóa bạo kích</a>
HTML;
    $upxx =<<<HTML
    <a href="?cmd=$upxx">Cường hóa hút máu</a>
HTML;
}else{
    $uyxb='';
}

if ($player->uid == $zhuangbei->uid && !in_array($zhuangbei->zbnowid,$arr)){

    $player = \player\getplayer($sid,$dblj);
    $delezb = $encode->encode("cmd=delezb&zbnowid=$zhuangbei->zbnowid&sid=$sid");
    $self = $_SERVER['PHP_SELF'];
    $setzbwz = $encode->encode("cmd=setzbwz&zbwz={$zhuangbei->tool}&zbnowid=$zhuangbei->zbnowid&sid=$sid");
    $setzbwz = "<a href='?cmd=$setzbwz'>Mặc trang bị</a><br/>";

    if ($zhuangbei->tool == 0){
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

    $setzbwz .=<<<HTML
    <br/>
    <a href="?cmd=$delezb">Phân giải nên trang bị</a>
    <br/>
    <form action="$self">
    <input type="hidden" name="cmd" value="chakanzb">
    <input type="hidden" name="canshu" value="chushou">
    <input type="hidden" name="sid" value='$sid'>
    <input type="hidden" name="zbnowid" value="$zhuangbei->zbnowid">
    Treo bán đơn giá:<br/>
    <input type="number" name="pay"> 
    <input type="submit" class="gamesubmit" value="Treo bán">
    </form>
HTML;
}
$updjsl = $zhuangbei->qianghua * 3 + 1;
$upls = round($zhuangbei->qianghua/2) * round($zhuangbei->qianghua/3) * 2 * (round($zhuangbei->qianghua / 4) )+ 1;
$fjls = $zhuangbei->qianghua * 20 + 20;
$qianghua = '';
if ($zhuangbei->qianghua>0){
    $qianghua="+".$zhuangbei->qianghua;
}

$qhcgl = round((30-$zhuangbei->qianghua)/30,2) * 100;
$qhcgl .='%';
$tools = array("Không hạn định","Vũ khí","Đồ trang sức","Quần áo","Đai lưng","Đồ trang sức","Giày");
$tool = $tools[$zhuangbei->tool];


$html = <<<HTML
Tên:$zhuangbei->zbname$qianghua<br/>
Vị trí:$tool<br/>
Đăng cấp:$zhuangbei->zblv<br/>
Công khích:$zhuangbei->zbgj$upgj<br/>
Phòng ngự:$zhuangbei->zbfy$upfy<br/>
Khí huyết:$zhuangbei->zbhp$uphp<br/>
Bạo kích:$zhuangbei->zbbj%<br/>
Hút máu:$zhuangbei->zbxx%<br/>
Thông tin:$zhuangbei->zbinfo<br/><br/>
Xác xuất cường hóa:$qhcgl  (100% +50 max)<br/>
Cường hóa cần CH thạch: $updjsl$qhssum<br/>
Cường hóa cần Linh Thạch: $upls$uyxb<br/>
Phân giải cần Linh Thạch: $fjls$uyxb<br/>
$upts
$setzbwz
<br/>
<button onClick="javascript :history.back(-1);">Trở về</button> <a href="?cmd=$gonowmid">Trở về trò chơi</a>
HTML;
echo $html;
?>