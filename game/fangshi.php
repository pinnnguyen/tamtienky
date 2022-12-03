<?php

$player = \player\getplayer($sid, $dblj);
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$payhtml = '';
$pdjcount = 0;

if ($player->ulv < "10") {
    exit("<span>Bạn chưa đạt lv10</span><a href='?cmd=$gonowmid'>Trở về trò chơi</a>");
}

if (!isset($yeshu)) {
    $yeshu = 0;
}

if (!isset($fangshi)) {
    exit("<a href='?cmd=$gonowmid'>Trở về trò chơi</a>");
}

switch ($fangshi) {
    case "daoju":

        if (isset($canshu)) {
            if ($canshu == "buy") {
                $fsdj = \player\getfangshi_once("daoju", $payid, $dblj);
                try {
                    if (!$fsdj) {
                        throw new PDOException("Đạo cụ đã bán sạch<br/>");//那个错误抛出异常
                    }
                    $playerdj = \player\getplayerdaoju($sid, $fsdj->djid, $dblj);
                    if ($playerdj) {
                        $pdjcount = $playerdj->djsum;
                    }
                    $dblj->setAttribute(PDO::ATTR_AUTOCOMMIT, 0);
                    $dblj->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                    $dblj->beginTransaction();
                    $price = $buycount * $fsdj->pay;
                    $sql = "update `game1` set uyxb = uyxb - $price WHERE uyxb >= $price AND sid='$sid'"; //扣除买了道具的玩家的钱
                    $affected_rows = $dblj->exec($sql);
                    if (!$affected_rows && $price > 0)
                        throw new PDOException("Linh thạch không đủ<br/>");//那个错误抛出异常

                    $sql = "update `fangshi_dj` set djcount = djcount - $buycount WHERE djcount >= $buycount and payid = $payid";
                    $affected_rows = $dblj->exec($sql);
                    if (!$affected_rows)
                        throw new PDOException("Trong phường thị nên đạo cụ số lượng không đủ<br/>");//那个错误抛出异常

                    $sql = "update `game1` set uyxb = uyxb + {$price} WHERE uid = {$fsdj->uid}"; //给卖出道具的玩家增加灵石
                    $affected_rows = $dblj->exec($sql);
                    if (!$affected_rows)
                        throw new PDOException("Treo lên nên đạo cụ tu sĩ chưa thu đến linh thạch<br/>");//那个错误抛出异常
                    $djsum = $pdjcount + $buycount;
                    $sql = "insert INTO `playerdaoju` (djname,djsum,uid,sid,djid,djinfo) 
					select '$fsdj->djname','$djsum','$player->uid','$sid','$fsdj->djid','$fsdj->djinfo' FROM DUAL
					WHERE NOT EXISTS (SELECT djzl FROM `playerdaoju` WHERE uid='$player->uid' and djid='$fsdj->djid')
					";
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
                    // //根据主表或索引判断有没有这条数据，没有则直接插入，有的话先删除再插入（djid不唯一，因为可能同样道具，不同玩家都有）
                    // // alter table tablename(数据表名) drop primary key  删除主键  SHOW INDEX FROM table_name; ALTER TABLE table_name DROP PRIMARY KEY;  ALTER TABLE table_name DROP INDEX index_name;
                    $sql = "alter table `fangshi_dj` AUTO_INCREMENT=1"; //表payid智能字段归零
                    $dblj->exec($sql); //执行归零操作，不管结果如何
                    echo "Giao dịch thành công!<br/>";
                    $dblj->commit();//交易成功就提交

                } catch (PDOException $e) {
                    echo $e->getMessage();
                    $dblj->rollBack();
                }
                $dblj->setAttribute(PDO::ATTR_AUTOCOMMIT, 1);//关闭
                $sql = "delete from `fangshi_dj` where djcount = 0";
                $dblj->exec($sql);
                \player\changerwyq1(1, $fsdj->djid, 1, $sid, $dblj);
            }
        }
        $fsdjall = \player\gettrangbi_in_market($fangshi, $dblj);
        foreach ($fsdjall as $fsdj) {
            $djid = $fsdj['djid'];
            $djname = $fsdj['djname'];
            $djpay = $fsdj['pay'];
            $djcount = $fsdj['djcount'];
            $payid = $fsdj['payid'];
            $goumaidj1 = $encode->encode("cmd=fangshi&fangshi=daoju&canshu=buy&payid=$payid&buycount=1&sid=$sid");
            $goumaidj5 = $encode->encode("cmd=fangshi&fangshi=daoju&canshu=buy&payid=$payid&buycount=5&sid=$sid");
            $goumaidj10 = $encode->encode("cmd=fangshi&fangshi=daoju&canshu=buy&payid=$payid&buycount=10&sid=$sid");
            $djpaycmd = $encode->encode("cmd=djinfo&djid=$djid&sid=$sid");
            $payhtml .= "<a href='?cmd=$djpaycmd'>{$djname}x$djcount</a>Đơn giá: $djpay<a href='?cmd=$goumaidj1'>Mua 1</a><a href='?cmd=$goumaidj5'>Mua 5</a> <a href='?cmd=$goumaidj10'>Mua 10</a><br/>";
        }
        $zhuangbei = $encode->encode("cmd=fangshi&fangshi=zhuangbei&sid=$sid");
        $payhtml = <<<HTML
            【 Đạo cụ2|<a href="?cmd=$zhuangbei">Trang bị</a>】<br/>
            $payhtml
            <br/><a href='?cmd=$gonowmid'>Trở về trò chơi</a><br/>
HTML;
        break;


    case "zhuangbei":
        if (isset($canshu)) {
            if ($canshu == "buy") {
                try {
                    $fszb = \player\getfangshi_once("zhuangbei", $payid, $dblj);

                    if (!$fszb) {
                        echo "Trang bị đã bị bán ra<br/>";//那个错误抛出异常
                        goto fszblist;
                    }
                    $pay = $fszb->pay;  //装备价格
                    $dblj->setAttribute(PDO::ATTR_AUTOCOMMIT, 0);
                    $dblj->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                    $dblj->beginTransaction();
                    $sql = "update `game1` set uyxb = uyxb - $pay WHERE uyxb >= $pay AND sid='$sid'"; //扣除玩家灵石，如果玩家灵石大于装备价格
                    $affected_rows = $dblj->exec($sql);
                    if (!$affected_rows && $pay > 0)
                        throw new PDOException("Linh thạch không đủ<br/>");//装备价格大于0但是执行后对任意行没影响，表示买不起。那个错误抛出异常

//                    -------------------------------------------------------------------------------
                    //echo $payid;    $payid作为唯一字段和AI智能自增字段  zbnowid作为unique唯一字段
                    $sql = "delete from `fangshi_zb` WHERE payid=$payid";
                    $affected_rows = $dblj->exec($sql);
                    if (!$affected_rows)
                        throw new PDOException("Giao hàng thiết bị không thành công<br/>");//那个错误抛出异常
//                    -------------------------------------------------------------------------------
                    $sql = "update `game1` set uyxb = uyxb+ $pay WHERE uid=$fszb->uid"; //增加卖出这个装备的玩家灵石数量为卖出价格
                    $affected_rows = $dblj->exec($sql);
                    if (!$affected_rows && $pay > 0)
                        throw new PDOException("Treo lên nên trang bị tu sĩ chưa thu đến linh thạch<br/>");//那个错误抛出异常

//                    -------------------------------------------------------------------------------
                    $sql = "update `playerzhuangbei` set sid = '$sid',uid=$player->uid WHERE zbnowid=$fszb->zbnowid"; //更改这个装备id的拥有者
                    $affected_rows = $dblj->exec($sql);
                    if (!$affected_rows)
                        throw new PDOException("Trang bị truyền tống thất bại<br/>");//那个错误抛出异常
//					-------------------------------------------------------------------------------
                    $sql = "alter table `fangshi_zb` AUTO_INCREMENT=1"; //表payid智能字段归零
                    $dblj->exec($sql); //执行归零操作，不管结果如何
                    echo "Giao dịch thành công!<br/>";
                    $dblj->commit();//交易成功就提交
                } catch (PDOException $e) {
                    echo $e->getMessage();
                    $dblj->rollBack();
                }
                $dblj->setAttribute(PDO::ATTR_AUTOCOMMIT, 1);

            }
        }
        fszblist:
        $fsdjall = \player\gettrangbi_in_market($fangshi, $dblj);
        foreach ($fsdjall as $fsdj) {
            $zbnowid = $fsdj['zbnowid'];
            $zbname = $fsdj['zbname'];
            $zbqh = $fsdj['qianghua'];
            $zbpay = $fsdj['pay'];
            $payid = $fsdj['payid'];
            if ($zbqh) {
                $zbqh = '+' . $zbqh;
            } else {
                $zbqh = '';
            }
            $goumaizb = $encode->encode("cmd=fangshi&fangshi=zhuangbei&canshu=buy&payid=$payid&sid=$sid");
            $zbpaycmd = $encode->encode("cmd=zbinfo&zbnowid=$zbnowid&sid=$sid");
            $payhtml .= "<a href='?cmd=$zbpaycmd'>{$zbname}{$zbqh}</a>Giá bán: $zbpay<a href='?cmd=$goumaizb'>Mua</a><br/>";
        }
        $fangshi = $encode->encode("cmd=fangshi&fangshi=daoju&sid=$sid");
        $payhtml = <<<HTML
            【<a href="?cmd=$fangshi">Đạo cụ</a>|Trang bị】<br/>
            $payhtml
            <br/>
            <a href='?cmd=$gonowmid'>Trở lại trò chơi</a><br/>
HTML;
        break;
}

echo $payhtml;