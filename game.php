<?php
error_reporting(0);
require_once 'class/player.php';
require_once 'class/encode.php';
include 'pdo.php';

header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
header("Cache-Control: no-cache, must-revalidate");
header("Pragma: no-cache");

$encode = new \encode\encode();
$player = new \player\player();
$guaiwu = new \player\guaiwu();
$clmid = new \player\clmid();
$npc = new \player\npc();

$ym = 'game/nowmid.php';
$Dcmd = $_SERVER['QUERY_STRING'];
$pvpts = '';
$tpts = '';
session_start();
//$allow_sep = "220";
//function getMillisecond() {
//    list($t1, $t2) = explode(' ', microtime());
//    return (float)sprintf('%.0f',(floatval($t1) + floatval($t2)) * 1000);
//}
//if (isset($_SESSION["post_sep"]))
//{
//
//    if (getMillisecond() - $_SESSION["post_sep"] < $allow_sep)
//    {
//
//        $msg = '<meta charset="utf-8" content="width=device-width,user-scalable=no" name="viewport">你点击太快了^_^!<br/><a href="?'.$Dcmd.'">继续</a>';
//        exit($msg);
//    }
//    else
//    {
//        $_SESSION["post_sep"] = getMillisecond();
//    }
//}
//else
//{
//    $_SESSION["post_sep"] = getMillisecond();
//}

parse_str($Dcmd);
//var_dump($Dcmd);
if (isset($cmd)) {
    if ($cmd == 'cjplayer') {
        $Dcmd = $encode->encode($Dcmd);
        header("refresh:1;url=?cmd=$Dcmd");
        exit();
    }
    if ($cmd == 'djinfo') {
        $Dcmd = $encode->encode($Dcmd);
        header("refresh:1;url=?cmd=$Dcmd");
        exit();
    }
    if ($cmd == 'zbinfo') {
        $Dcmd = $encode->encode($Dcmd);
        header("refresh:1;url=?cmd=$Dcmd");
        exit();
    }
    if ($cmd == 'npc') {
        $Dcmd = $encode->encode($Dcmd);
        header("refresh:1;url=?cmd=$Dcmd");
        exit();
    }
    if ($cmd == 'duihuan') {
        $Dcmd = $encode->encode($Dcmd);
        header("refresh:1;url=?cmd=$Dcmd");
        exit();
    }
    if ($cmd == 'sendliaotian') {
        $Dcmd = $encode->encode($Dcmd);
        //$ym = 'game/liaotian.php';
        //header("refresh:1;url=?cmd=$Dcmd");
        //exit();
    }
    $Dcmd = $encode->decode($cmd);
//    var_dump($Dcmd);
    parse_str($Dcmd);
    switch ($cmd) {
        case 'cj':
            $ym = 'game/cj.php';
            break;
        case 'login';
            $player = \player\getplayer($sid, $dblj);
            $gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
            $nowdate = date('Y-m-d H:i:s');
            $sql = "update game1 set endtime='$nowdate',sfzx=1 WHERE sid='$sid'";
            $cxjg = $dblj->exec($sql);
            header("refresh:1;url=?cmd=$gonowmid");
            exit();
            break;
        case 'zhuangtai';
            $ym = 'game/zhuangtai.php';
            break;
        case 'cjplayer':
            if (isset($token) && isset($username) && isset($sex)) {
                $username = htmlspecialchars($username);
                $sql = "SELECT * FROM game1 where uname = '" . $username . "'";//昵称查询
                $ltcxjg = $dblj->query($sql);
                if ($ltcxjg) {
                    $ret = $ltcxjg->fetchAll(PDO::FETCH_ASSOC);
                    if (count($ret) > 0) {
                        echo "Biệt hiệu này đã được sử dụng!";
                        $ym = 'game/cj.php';
                        break;
                    }
                }

                if (strlen($username) < 6 || strlen($username) > 12) {
                    echo "Tên người dùng không được quá ngắn hoặc quá dài";
                    $ym = 'game/cj.php';
                    break;
                }

                $sid = md5($username . $token . '229');

                $sql = "select * from game1 where token='$token'";
                $cxjg = $dblj->query($sql);

                $cxjg->bindColumn('sid', $player->sid);
                $ret = $cxjg->fetch(PDO::FETCH_ASSOC);
                $nowdate = date('Y-m-d H:i:s');

                if ($player->sid == '') {
                    $gameconfig = \player\getgameconfig($dblj);
                    $firstmid = $gameconfig->firstmid;

                    $query = "insert into game1(token, sid, uname, ulv, uyxb, uczb, uexp, uhp, umaxhp, ugj, ufy, uwx, usex, vip, nowmid, endtime, sfzx) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                    $stmt = $dblj->prepare($query);
                    $stmt->execute([$token, $sid, $username, '1', '2000', '100', '0', '35', '35', '12', '5', '0', $sex, '0', $firstmid, $nowdate, 1]) or die(print_r($dblj->errorInfo()));;

                    $gonowmid = $encode->encode("cmd=gomid&newmid=$gameconfig->firstmid&sid=$sid");

                    echo '<meta charset="utf-8" content="width=device-width,user-scalable=no" name="viewport">';
                    echo $username . " Hoan nghênh đi vào phá";

                    $sql2 = "insert into ggliaotian(name,msg,uid) values(?,?,?)";
                    $stmt2 = $dblj->prepare($sql2);

                    $stmt2->execute(array('Hệ thống', " Vạn người không được một người chơi {$username} Bước lên Tiên đồ", '0'));
                    header("refresh:1;url=?cmd=$gonowmid");
                }
                exit();
            }
            break;
        case 'gomid':
            $ym = 'game/nowmid.php';
            break;
        case 'getginfo':
            $ym = 'game/ginfo.php';
            break;
        case 'pve':
            $ym = 'game/pve.php';
            break;
        case 'pvp':
            $ym = 'game/pvp.php';
            break;
        case 'pvegj':
            $ym = 'game/pve.php';
            break;
        case 'pvbgj':// công kích boss
            $ym = 'game/boss.php';
            break;
        case 'sendliaotian':
            if (isset($ltlx) && isset($ltmsg) && mb_strlen($ltmsg) >= 2) {
                switch ($ltlx) {
                    case 'all':
                        $player = player\getplayer($sid, $dblj);
                        if ($player->uname != '') {
                            $ltmsg = htmlspecialchars($ltmsg);
                            $sql = "insert into ggliaotian(name,msg,uid) values(?,?,?)";
                            $stmt = $dblj->prepare($sql);
                            $exeres = $stmt->execute(array($player->uname, $ltmsg, $player->uid));
                        }
                        $ym = 'game/liaotian.php';
                        break;
                    case "im":
                        $player = player\getplayer($sid, $dblj);
                        if ($player->uname != '') {
                            $ltmsg = htmlspecialchars($ltmsg);
                            $sql = "insert into imliaotian(name,msg,uid,imuid) values('$player->uname','$ltmsg',$player->uid,{$imuid})";

                            $cxjg = $dblj->exec($sql);
                        }
                        $ym = 'game/liaotian.php';
                        break;
                }
            } elseif (isset($ltlx) && isset($ltmsg) && mb_strlen($ltmsg) < 2) {
                echo('Gửi thất bại! Vui lòng đảm bảo rằng nội dung của cuộc trò chuyện có nhiều hơn 2 chữ số');
            }
            break;
        case 'liaotian':
            $ym = 'game/liaotian.php';
            break;
        case 'getplayerinfo':
            $ym = 'game/otherzhuangtai.php';
            break;
        case 'getbuginfo':
            $ym = 'game/buginfo.php';
            break;
        case 'zbinfo':
            $ym = 'game/zbinfo.php';
            break;
        case 'npc':
            $ym = "npc/npc.php";
            break;
        case 'paihang';
            $ym = 'game/paihang.php';
            break;
        case 'chakanzb':
            $ym = 'game/zbinfo.php';
            break;
        case 'djinfo':
            $ym = 'game/djinfo.php';
            break;
        case 'getbagzb':
            $ym = 'game/bagzb.php';
            break;
        case 'getbagyp':
            $ym = 'game/bagyp.php';
            break;
        case 'getbagjn':
            $ym = 'game/bagjn.php';
            break;
        case 'xxzb':
            $ym = 'game/zhuangtai.php';
            break;
        case 'setzbwz':
            $ym = 'game/zhuangtai.php';
            break;
        case 'allmap':
            $ym = 'game/allmap.php';
            break;
        case 'delezb':
            $ym = 'game/bagzb.php';
            break;
        case 'getbagdj':
            $ym = 'game/bagdj.php';
            break;
        case 'upzb':
            $ym = 'game/zbinfo.php';
            break;
        case 'goxiulian':
            $ym = 'game/xiulian.php';
            break;
        case 'startxiulian':
            $ym = 'game/xiulian.php';
            break;
        case 'endxiulian':
            $ym = 'game/xiulian.php';
            break;
        case 'task':
            $ym = 'game/task.php';
            break;
        case 'mytask':
            $ym = 'game/playertask.php';
            break;
        case 'mytaskinfo':
            $ym = 'game/playertaskinfo.php';
            break;
        case 'boss':
            $ym = 'game/bossinfo.php';
            break;
        case 'ypinfo':
            $ym = 'game/ypinfo.php';
            break;
        case 'pvb':
            $ym = 'game/boss.php';
            break;
        case 'chongwu':
            $ym = 'game/chongwu.php';
            break;
        case 'bugreport':
            $ym = 'game/bugreport.php';
            break;
        case 'jninfo':
            $ym = 'game/jninfo.php';
            break;
        case "zbinfo_sys":
            $ym = 'game/zbinfo_sys.php';
            break;
        case "tupo":
            $ym = 'game/tupo.php';
            break;
        case "fangshi":
            $ym = "game/fangshi.php";
            break;
        case "club":
            $ym = "game/club.php";
            break;
        case "clublist":
            $ym = "game/clublist.php";
            break;
        case "duihuan":
            $ym = "game/duihuan.php";
            break;
        case "im":
            $ym = "game/im.php";
            break;
    }
    if (!isset($sid) || $sid == '') {
        if ($cmd != 'cj' && $cmd !== 'cjplayer') {
            header("refresh:1;url=index.php");
            exit();
        }
    } else {
        if ($cmd != 'pve' && $cmd != 'pvegj') {
            $sql = "delete from midguaiwu where sid='$sid'";//Xóa bản đồ và người chơi đã bị quái vật tấn công
            $dblj->exec($sql);
        }

        $player = \player\getplayer($sid, $dblj);
        if ($player->ispvp != 0) {
            $pvper = \player\getplayer1($player->ispvp, $dblj);
            $pvpcmd = $encode->encode("cmd=pvp&uid=$pvper->uid&sid=$sid");
            $pvpcmd = "<a href='?cmd=$pvpcmd'> đánh lại </a>";
            $pvpts = "$pvper->uname Đang tấn công bạn: $pvpcmd<br/>";
        }

        if (\player\istupo($sid, $dblj) != 0 && $player->uexp >= $player->umaxexp) {
            $tupocmd = $encode->encode("cmd=tupo&sid=$sid");
            $tupocmd = "<a href='?cmd=$tupocmd'>Đột phá</a>";
            $tpts = "<p class='p-2 text-white bg-black text-xs'><strong>Tip: </strong>Bạn cần đột phá, nếu không sẽ không thể tích lũy được kinh nghiệm:$tupocmd</p>";
        }

        $nowdate = date('Y-m-d H:i:s');
        $second = floor((strtotime($nowdate) - strtotime($player->endtime)) % 86400);//Nhận khoảng thời gian làm mới
        if ($second >= 900) {
            echo '<meta charset="utf-8" content="width=device-width,user-scalable=no" name="viewport">';
            echo $player->uname . "Thời gian ngoại tuyến quá lâu, vui lòng đăng nhập lại-";
            header("refresh:1;url=index.php");
            exit();
        } else {
            $sql = "update game1 set endtime='$nowdate',sfzx=1 WHERE sid='$sid'";
            $dblj->exec($sql);
        }
    }
} else {
    header("refresh:1;url=index.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" content="width=device-width,user-scalable=no" name="viewport">
    <title>Tu Tiên Hội</title>
    <link rel="stylesheet" href="css/gamecss.css">
    <link rel="icon" href="images/logo.ico" type="image/x-icon">
    <script src="https://cdn.tailwindcss.com"></script>
<!--    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>-->
    <link rel="manifest" href="manifest.json" />

</head>
<body>
<div class="main max-w-[400px] h-[100vh]">
    <div class="h-full relative">
        <?php
        if (!$ym == '') {
            echo $tpts;
            if ($ym != "game/pvp.php") {
                echo $pvpts;
            }

            include "$ym";
        } ?>
    </div>
</div>
</body>

<script src="js/game.js"></script>
<script>
    tailwind.config = {
        shortcuts: {
            'light-img': 'block dark:hidden',
            'dark-img': 'hidden dark:block',
            'btn': 'font-medium focus:outline-none disabled:cursor-not-allowed disabled:opacity-75 focus:ring-offset-white dark:focus:ring-offset-black text-xs px-2.5 py-1.5 border border-transparent text-gray-700 bg-gray-100 hover:bg-gray-200 disabled:bg-gray-100 focus:ring-2 focus:ring-offset-2 focus:ring-gray-900 inline-flex items-center rounded-lg'
        },
        theme: {
            extend: {
                colors: {
                    clifford: '#da373d',
                }
            }
        }
    }
</script>

</html>