<?php
include 'pdo.php';
require_once 'class/encode.php';

//header('Access-Control-Allow-Origin:*');

$encode = new \encode\encode();
session_start();
$a = '';
$username = $_SESSION['username'];
$userpass = $_SESSION['userpass'];

if (isset($_POST['submit']) && $_POST['submit']) {

    $username = $_POST['username'];
    $userpass = $_POST['userpass'];
    $username = strtolower(htmlspecialchars($username));
    $userpass = htmlspecialchars($userpass);
    $sql = "select * from userinfo where username = ? and userpass = ?";
    $stmt = $dblj->prepare($sql);
    $bool = $stmt->execute(array($username, $userpass));
    $stmt->bindColumn('username', $cxusername);
    $stmt->bindColumn('userpass', $cxuserpass);
    $stmt->bindColumn('token', $cxtoken);
    $exeres = $stmt->fetch(PDO::FETCH_ASSOC);

    if ((strlen($username) < 6 || strlen($userpass) < 6) && !$exeres) {
        $a = 'Tài khoản hoặc mật khẩu không đúng';
    } elseif ($cxusername == $username && $cxuserpass == $userpass) {

        $sql = "select * from game1 where token='$cxtoken'";
        $cxjg = $dblj->query($sql);
        $cxjg->bindColumn('sid', $sid);
        $cxjg->fetch(PDO::FETCH_ASSOC);
        if ($sid == null) {
            $cmd = "cmd=cj&token=$cxtoken";
        } else {
            $cmd = "cmd=login&sid=$sid";
            $nowdate = date('Y-m-d H:i:s');

            $sql = "update game1 set endtime = '$nowdate',sfzx=1 WHERE sid=?";
            $stmt = $dblj->prepare($sql);
            $stmt->execute(array($sid));
        }
        $cmd = $encode->encode($cmd);
        $_SESSION['username'] = $username;
        $_SESSION['userpass'] = $userpass;
        header("refresh:1;url=game.php?cmd=$cmd");
    }
}
?>
<html lang="en">
<head>
    <meta charset="utf-8" content="width=device-width,user-scalable=no" name="viewport"/>
    <title>Tu Tiên Hội</title>
    <link rel="stylesheet" href="css/gamecss.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
</head>
<body>
<div class="main">
    <div style="overflow: hidden; background: white; height: 100%">
        <img src="images/11.jpg" height="200" style="width: 100%"><br/>
        <div id="mainfont" style="padding: 8px">
            Nguyệt lãnh thiên sơn giang tự bích, băng nhai vạn trượng vô lưu ý.<br/>
            Tầm đạo chích ảnh liên hoa lạc, trúc âm liêu lạc thính tân khúc.<br/>
            Tiên nhân thính thùy túy minh nguyệt, đạp lãng đạp phong tùy yến khứ.<br/>
            Kỷ cương nhân luân tâm như tang, nhất túy hồng trần tiêu bách tự.<br/>
            Ma tiền khấu thủ tam thiên niên, hồi thủ hồng trần bất tố tiên.<br/>
        </div>
        <div class="login">
            <form action=<?php echo $_SERVER['PHP_SELF']; ?> method="post">

                <input type="text" name="username" placeholder="Tài khoản" class="input"
                       value="<?php if (!empty($username)) echo $username; ?>"/><br/>

                <input type="password" name="userpass" placeholder="Mật khẩu" class="input"
                       value="<?php if (!empty($userpass)) echo $userpass; ?>"/><br/>
                <?php echo $a ?>
                <p><input type="submit" name="submit" class="btn-login" value="Đăng nhập"/> <a href="reguser.php"
                                                                                               id="btn">Đăng
                        ký</a></p>
            </form>
        </div>
        <div class="footer">
            <footer>
                <script>
                    function changetime() {
                        var ary = Array("Chủ Nhật", "Thứ Hai", "Thứ Ba", "Thứ Tư", "Thứ Năm", "Thứ Sáu", "Thứ bảy");
                        var Timehtml = document.getElementById('CurrentTime');
                        var date = new Date();
                        Timehtml.innerHTML = '' + date.toLocaleString() + ' ' + ary[date.getDay()];
                    }

                    window.onload = function () {
                        changetime();
                        setInterval(changetime, 1000);
                    }
                </script>
                <div id="CurrentTime"><?php echo date('Y-m-d H:i:s') ?></div>
            </footer>
        </div>
    </div>
</div>
</body>
</html>