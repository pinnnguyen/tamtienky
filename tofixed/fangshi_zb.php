<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/8/24 0024
 * Time: 12:59
 */
$player = $game->player_get_uinfo();
$payhtml='';
$pdjcount = 0;
if (!isset($yeshu)){
    $yeshu = 0;
}
if (!isset( $arr_data->cmd2) ){
    $arr_data->cmd2 = "";
}

switch ($arr_data->cmd2){
    case "buy":
        $fszb = $game->fangshi_get_zhuangbei($arr_data->zbnowid);
        if (!$fszb){
            echo "Trang bị đã bị bán ra<br/>";
            break;
        }

        $game->yxb_change(2 , $fszb->pay);
        $ret = $game->fangshi_delete_zhuangbei($arr_data->zbnowid);

        if(!$ret){
            echo "Trang bị xuất hàng thất bại<br/>";
            break;
        }
        $ret = $game->yxb_change_uid(1,$fszb->pay ,$fszb->uid);
        if(!$ret && $fszb->pay > 0 ){
            echo "Treo lên nên trang bị tu sĩ chưa thu đến linh thạch<br/>";
            break;
        }
        $game->zb_update_user($arr_data->zbnowid);
        echo "Giao dịch thành công!<br/>";
}

$fsdjall = $game->fangshi_get_zhuangbei_all();
foreach ($fsdjall as $fsdj){

    $payid = $fsdj->payid;
    if ($fsdj->pay){
        $fsdj->qianghua = "+{$fsdj->qianghua}";
    }else{
        $fsdj->qianghua ='';
    }
    $goumaizb = $game->create_url("cmd=fangshi_zb&cmd2=buy&zbnowid={$fsdj->zbnowid}","Mua sắm");
    $zbpaycmd = $game->create_url("cmd=zbinfo&zbnowid={$fsdj->zbnowid}","{$fsdj->zbname}{$fsdj->qianghua}");
    $payhtml .= "{$zbpaycmd} Giá cả: {$fsdj->pay}{$goumaizb}<br/>";
}
$坊市_道具 = $game->create_url("cmd=fangshi_dj","Đạo cụ");
$payhtml ="
【{$坊市_道具}|Trang bị】<br/>
$payhtml
<br/>
{$变量_系统->链接_返回游戏_按钮短}";



echo $payhtml;