<?php
require_once($_SERVER['DOCUMENT_ROOT'] . "/pdo.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/class/player.php");
require_once $_SERVER['DOCUMENT_ROOT'] . "/class/encode.php";

$sid = $_GET['sid'];
$payid = $_GET['payid'];
$fangshi = $_GET['fangshi'];
$buycount = $_GET['buycount'];
$canshu = $_GET['canshu'];

//$cmd = $_GET['cmd'];
//$limit = $_GET['limit'];

$encode = new \encode\encode();

$player = \player\getplayer($sid, $dblj);
$payhtml = '';
$pdjcount = 0;

if ($player->ulv < "20") {
    $player_info = array('linhthach'=>$player->uyxb,
        'cucphamlinhthach'=>$player->uczb,
        'sid'=>$player->sid,
        );

    echo json_encode(['player' => $player_info, 'error' => ['look' => true,
        'message' => 'Bạn chưa đạt cấp độ 20']]);
    exit();
}

if (!isset($yeshu)) {
    $yeshu = 0;
}

if (!isset($fangshi)) {
    exit("<a>Trở về trò chơi</a>");
}

$all_market = [];
switch ($fangshi) {
    case "daoju":
        if (isset($canshu)) {
            if ($canshu == "buy") {
                $fsdj = \player\getfangshi_once("daoju", $payid, $dblj);
                try {
                    if (!$fsdj) {
                        throw new PDOException("Đạo cụ đã bán sạch<br/>");
                    }
                    $playerdj = \player\getplayerdaoju($sid, $fsdj->djid, $dblj);
                    if ($playerdj) {
                        $pdjcount = $playerdj->djsum;
                    }
                    $dblj->setAttribute(PDO::ATTR_AUTOCOMMIT, 0);
                    $dblj->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                    $dblj->beginTransaction();
                    $price = $buycount * $fsdj->pay;

                    #Trừ tiền của người chơi đã mua vật phẩm
                    $sql = "update `game1` set uyxb = uyxb - $price WHERE uyxb >= $price AND sid='$sid'";
                    $affected_rows = $dblj->exec($sql);
                    if (!$affected_rows && $price > 0)
                        #Lỗi đó ném ngoại lệ
                        throw new PDOException("Linh thạch không đủ<br/>");

                    $sql = "update `fangshi_dj` set djcount = djcount - $buycount WHERE djcount >= $buycount and payid = $payid";
                    $affected_rows = $dblj->exec($sql);
                    if (!$affected_rows)
                        throw new PDOException("Trong phường thị nên đạo cụ số lượng không đủ<br/>");

                    #Thêm đá tinh thần cho người chơi bán vật phẩm
                    $sql = "update `game1` set uyxb = uyxb + {$price} WHERE uid = {$fsdj->uid}";
                    $affected_rows = $dblj->exec($sql);
                    if (!$affected_rows)
                        throw new PDOException("Treo lên nên đạo cụ tu sĩ chưa thu đến linh thạch<br/>");

                    $djsum = $pdjcount + $buycount;
                    $sql = "insert INTO `playerdaoju` (djname,djsum,uid,sid,djid,djinfo)
					select '$fsdj->djname','$djsum','$player->uid','$sid','$fsdj->djid','$fsdj->djinfo' FROM DUAL
					WHERE NOT EXISTS (SELECT djzl FROM `playerdaoju` WHERE uid='$player->uid' and djid='$fsdj->djid')";

                    //echo $sql;
                    $affected_rows = $dblj->exec($sql);
                    if (!$affected_rows) {
                        $sql = "UPDATE `playerdaoju` SET djname='$fsdj->djname',djsum='$djsum',sid='$sid',djinfo='$fsdj->djinfo'
						WHERE uid='$player->uid' and djid=$fsdj->djid";
                        $affected_rows = $dblj->exec($sql);
                        if (!$affected_rows)
                            throw new PDOException("Truyền Tống Trận tại truyền tống đạo cụ thời điểm truyền tống thất bại<br/>");//那个错误抛出异常
                    }

                    // $sql = "replace into `playerdaoju`(djname,djsum,uid,sid,djid,djinfo) VALUES('$fsdj->djname','$djsum','$player->uid','$sid',$fsdj->djid,'$fsdj->djinfo')";
                    // // Căn cứ vào bảng chính hoặc chỉ mục để đánh giá xem có dữ liệu này hay không, nếu không có thì trực tiếp chèn vào, nếu có thì xóa trước rồi mới chèn (djid không phải là duy nhất, vì có thể là cùng một mục , những người chơi khác nhau có nó)
                    // // thay đổi tablename (tên bảng dữ liệu) bỏ khóa chính xóa khóa chính SHOW INDEX FROM table_name;ALTER TABLE table_name DROP PRIMARY KEY;ALTER TABLE table_name DROP INDEX index_name;
                    $sql = "alter table `fangshi_dj` AUTO_INCREMENT=1"; //Đặt lại trường thông minh payid của bảng về 0
                    $dblj->exec($sql); //执行归零操作，不管结果如何
                    echo "Giao dịch thành công";
                    $dblj->commit();

                } catch (PDOException $e) {
                    echo $e->getMessage();
                    $dblj->rollBack();
                }
                $dblj->setAttribute(PDO::ATTR_AUTOCOMMIT, 1);
                $sql = "delete from `fangshi_dj` where djcount = 0";
                $dblj->exec($sql);
                \player\changerwyq1(1, $fsdj->djid, 1, $sid, $dblj);

                exit();
            }
        }

        getAllMarket($dblj, $player);
        exit();

    case "zhuangbei":
        if (isset($canshu)) {
            if ($canshu == "buy") {
                try {
                    $fszb = \player\getfangshi_once("zhuangbei", $payid, $dblj);

                    if (!$fszb) {
                        echo "Trang bị đã bị bán ra<br/>";
                        goto fszblist;
                    }

                    # giá thiết bị
                    $pay = $fszb->pay;
                    $dblj->setAttribute(PDO::ATTR_AUTOCOMMIT, 0);
                    $dblj->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                    $dblj->beginTransaction();

                    #Trừ linh thạch của người chơi, nếu linh thạch của người chơi lớn hơn giá trang bị
                    $sql = "update `game1` set uyxb = uyxb - $pay WHERE uyxb >= $pay AND sid='$sid'";
                    $affected_rows = $dblj->exec($sql);
                    if (!$affected_rows && $pay > 0)
                        #Giá trang bị lớn hơn 0 nhưng không ảnh hưởng đến bất kỳ dòng nào sau khi thực hiện, nghĩa là không thể mua được. Lỗi đó ném ngoại lệ
                        throw new PDOException("Linh thạch không đủ");

//                    -------------------------------------------------------------------------------
                    //echo $payid;    $payid作为唯一字段和AI智能自增字段  zbnowid作为unique唯一字段
                    $sql = "delete from `fangshi_zb` WHERE payid=$payid";
                    $affected_rows = $dblj->exec($sql);
                    if (!$affected_rows)
                        throw new PDOException("Giao hàng thiết bị không thành công");
//                    -------------------------------------------------------------------------------
                    #Tăng số lượng đá linh hồn của người chơi bán trang bị này theo giá bán
                    $sql = "update `game1` set uyxb = uyxb+ $pay WHERE uid=$fszb->uid";
                    $affected_rows = $dblj->exec($sql);
                    if (!$affected_rows && $pay > 0)
                        throw new PDOException("Treo lên nên trang bị tu sĩ chưa thu đến linh thạch");

//                    -------------------------------------------------------------------------------
                    # Thay đổi id chủ sở hữu của thiết bị này
                    $sql = "update `playerzhuangbei` set sid = '$sid',uid=$player->uid WHERE zbnowid=$fszb->zbnowid";
                    $affected_rows = $dblj->exec($sql);
                    if (!$affected_rows)
                        throw new PDOException("Trang bị truyền tống thất bại<br/>");
//					-------------------------------------------------------------------------------
                    # Đặt lại trường thông minh payid của bảng về 0
                    $sql = "alter table `fangshi_zb` AUTO_INCREMENT=1";
                    $dblj->exec($sql);
                    echo "Giao dịch thành công!";
                    $dblj->commit();
                } catch (PDOException $e) {
                    echo $e->getMessage();
                    $dblj->rollBack();
                }

                $dblj->setAttribute(PDO::ATTR_AUTOCOMMIT, 1);
                exit();
            }
            exit();
        }

        fszblist:
        getAllMarket($dblj, $player);
}

function getAllMarket ($dblj, $player)
{
    $fsdjall = \player\gettrangbi_in_market('daoju', $dblj);
    $tools = [];
    foreach ($fsdjall as $fsdj) {
        $djid = $fsdj['djid'];
        $djname = $fsdj['djname'];
        $djpay = $fsdj['pay'];
        $djcount = $fsdj['djcount'];
        $payid = $fsdj['payid'];
        $djinfo = $fsdj['djinfo'];
        array_push($tools, ['id'=>$djid,
            'name'=>$djname,
            'pay'=>$djpay,
            'count'=>$djcount,
            'payid'=>$payid,
            'djinfo'=>$djinfo]);
    }

    $fsdjall = \player\gettrangbi_in_market('zhuangbei', $dblj);
    $equipments = [];
    foreach ($fsdjall as $fsdj) {
        $zbnowid = $fsdj['zbnowid'];
        $zbname = $fsdj['zbname'];
        $zbqh = $fsdj['qianghua'];
        $zbpay = $fsdj['pay'];
        $payid = $fsdj['payid'];
        $preview_img = $fsdj['preview_url'];

        $baokich = $fsdj['zbbj']; # Bao Kich
        $def = $fsdj['zbfy']; # Phong Phu
        $attach = $fsdj['zbgj']; # Tan Cong
        $hp = $fsdj['zbhp']; # Hp
        $hutmau = $fsdj['zbxx']; # Hut mau

        if ($zbqh) {
            $zbqh = '+' . $zbqh;
        } else {
            $zbqh = '';
        }

        array_push($equipments, ['zbnowid'=>$zbnowid,
            'baokich'=>$baokich,
            'def'=>$def,
            'attach'=>$attach,
            'hp'=>$hp,
            'hutmau'=>$hutmau,
            'name'=>$zbname,
            'zbqh'=>$zbqh,
            'pay'=>$zbpay,
            'payid'=>$payid,
            'preview_url'=>$preview_img]);
    }

    $player_info = array('linhthach'=>$player->uyxb, 'cucphamlinhthach'=>$player->uczb, 'sid'=>$player->sid);
    $response = array('tools'=> $tools, 'equipments'=> $equipments, 'player'=>$player_info);
    echo json_encode($response);

    exit();
}

//echo $payhtml;