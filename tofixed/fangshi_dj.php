<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/6/8 0008
 * Time: 18:58
 */
$player = $game->player_get_uinfo();
$payhtml='';
$pdjcount = 0;
if (!isset($yeshu)){
    $yeshu = 0;
}
if (!isset( $cmd2) ){
    $cmd2 = "";
}
switch ($cmd2){
    case "buy":
        $fsdj = $game->fangshi_get_daoju($arr_data->payid);
        if (!$fsdj){
            echo("Đạo cụ đã bán sạch<br/>");
        }
        if ( ( (int) $fsdj->djcount ) < ( (int) $arr_data->buycount )){
            echo("Đạo cụ số lượng không đủ<br/>");
        }

        $playerdj = $game->dj_get_player($fsdj->djid);
        if ($playerdj){
            $pdjcount = $playerdj->djsum;
        }

        $price = $arr_data->buycount * $fsdj->pay;
        $ret = $game->yxb_change( 2 , $price );

        if(!$ret){
            echo("Linh thạch không đủ<br/>");
            break;
        }


        $game->fangshi_update_daoju($arr_data->payid , $arr_data->buycount);
        $game->yxb_change_uid( 1 , $price , $fsdj->uid);
        $game->dj_add($fsdj->djid , $arr_data->buycount);
        $game->fangshi_delete_daoju_all();

        echo "Giao dịch thành công!<br/>";


}

$fsdjall = $game->fangshi_get_daoju_all();
foreach ($fsdjall as $fsdj){

    $goumaidj1 = $game->create_url("cmd=fangshi_dj&cmd2=buy&payid={$fsdj->payid}&buycount=1","Mua 1");
    $goumaidj5 = $game->create_url("cmd=fangshi_dj&cmd2=buy&payid={$fsdj->payid}&buycount=5","Mua 5");
    $goumaidj10 = $game->create_url("cmd=fangshi_dj&cmd2=buy&payid={$fsdj->payid}&buycount=10","Mua 10");
    $djpaycmd = $game->create_url("cmd=djinfo&djid={$fsdj->payid}","{$fsdj->djname}x{$fsdj->djcount}");
    $payhtml .= "{$djpaycmd} Đơn giá: {$fsdj->pay} {$goumaidj1} {$goumaidj5} {$goumaidj10}<br/>";
}

$zhuangbei = $game->create_url("cmd=fangshi_zb","Trang bị");
$payhtml="
【Đạo cụ|{$zhuangbei}】<br/>
$payhtml
{$变量_系统->链接_返回游戏_按钮短}<br/>";
echo $payhtml;