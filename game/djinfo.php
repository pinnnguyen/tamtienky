<?php
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$ydaoju = \player\getdaoju($djid,$dblj);
$daoju = \player\getdaoju($djid,$dblj);
$chushou = $encode->encode("cmd=djinfo&canshu=chushou&djid=$djid&sid=$sid");
$daoju = \player\getplayerdaoju($sid,$djid,$dblj);
$player = \player\getplayer($sid,$dblj);
$djhtml = '';
if ($daoju){
    $self = $_SERVER['PHP_SELF'];
    $djhtml =<<<HTML
    <br/>
    <form action="$self">
    <input type="hidden" name="cmd" value="djinfo">
    <input type="hidden" name="canshu" value="chushou">
    <input type="hidden" name="sid" value='$sid'>
    <input type="hidden" name="djid" value="$djid">
    Số lượng:<br/>
    <input type="number" name="djcount"><br/>
    Đơn giá:<br/>
    <input type="number" name="pay"> 
    <input type="submit" class="gamesubmit" value="Bán ra">
    </form>
HTML;

}
if(isset($canshu))
    if ($canshu == "chushou"){
        try{
            $dblj->setAttribute(PDO::ATTR_AUTOCOMMIT, 0);
            $dblj->setAttribute(PDO::ATTR_ERRMODE,  PDO::ERRMODE_EXCEPTION);
            $dblj->beginTransaction();
            $sql = "update `playerdaoju` set djsum= djsum - $djcount WHERE djid = $djid AND djsum >= $djcount AND uid = $player->uid AND sid='$sid'";
            $affected_rows=$dblj->exec($sql);
            if (!$affected_rows){
                throw new PDOException("Bạn không có đủ đạo cụ<br/>");//那个错误抛出异常
            }
            $sql = "insert into `fangshi_dj`(djid,djcount,uid,pay,djname,djinfo) VALUES ($djid,$djcount,$player->uid,$pay,'$daoju->djname','$daoju->djinfo')";
            $affected_rows=$dblj->exec($sql);
            if (!$affected_rows){
                throw new PDOException("Không bán được<br/>");//那个错误抛出异常
            }
            echo "Mua bán thành công!<br/>";
            $dblj->commit();//交易成功就提交
        }catch (PDOException $e){
            echo $e->getMessage();
            $dblj->rollBack();
        }
        $dblj->setAttribute(PDO::ATTR_AUTOCOMMIT, 1);//关闭
        $daoju = \player\getplayerdaoju($sid,$djid,$dblj);
        \player\changerwyq1(1,$djid,1,$sid,$dblj);
    }
    
    

?>

Tên vật phẩm: <?php echo $ydaoju->djname; ?><br/>
<?php
    if ($daoju) {
        echo "Số lượng đạo cụ:$daoju->djsum<br/>";
    }
?>
Giá vật phẩm: <?php echo $ydaoju->djyxb;?> linh thạch<br/>
Chi tiết: <br/>
<?php echo $ydaoju->djinfo; ?>
<br/>
<?php echo $djhtml; ?>
<br/>
<button onClick="javascript:history.back(-1);">Trở về</button> <a href="?cmd=<?php echo $gonowmid; ?>">Trở về trò chơi</a><br/>


