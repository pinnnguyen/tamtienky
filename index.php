<?php
include 'pdo.php';
require_once 'class/encode.php';

//header('Access-Control-Allow-Origin:*');

$encode = new \encode\encode();
session_start();
$a = '';
$username = $_SESSION['username'];
$userpass = $_SESSION['userpass'];

if (isset($_POST['register']) && $_POST['register']) {
    $username = $_POST['username'];
    $userpass = $_POST['userpass'];
    $userpass2 = $_POST['userpass2'];
    $username = htmlspecialchars($username);
    $userpass = htmlspecialchars($userpass);
    $sql = "select * from userinfo where username=?";
    $stmt = $dblj->prepare($sql);
    $stmt->execute(array($username));
    $stmt->bindColumn('username', $cxusername);
    $ret = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($userpass2 != $userpass) {
        $a = 'Mật khẩu nhập hai lần không nhất quán';
    } elseif (strlen($username) < 6 or strlen($userpass) < 6) {
        $a = 'Độ dài của số tài khoản hoặc mật khẩu phải lớn hơn hoặc bằng 6 ký tự';
    } elseif ($ret) {
        $a = 'Đăng ký không thành công, tài khoản' . $cxusername . 'đã tồn tại';
        echo $a;
    } else {
        $token = md5("$username.$userpass" . strtotime(date('Y-m-d H:i:s')));
        $sql = "insert into userinfo(username,userpass,token) values(?,?,?)";
        $stmt = $dblj->prepare($sql);
        $cxjg = $stmt->execute([strtolower($username), $userpass, $token]);
        $a = 'đăng ký thành công';
        echo $a;
        header("refresh:1;url=index.php");
    }
}

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
        $cxjg->bindColumn('nowmid', $nowmid);
        $cxjg->fetch(PDO::FETCH_ASSOC);

        if ($sid == null) {
            $cmd = "cmd=cj&token=$cxtoken";
        } else {
            $cmd = "cmd=login&sid=$sid";
            $nowdate = date('Y-m-d H:i:s');

            $sql = "update game1 set endtime = '$nowdate',sfzx=1 WHERE sid=?";
            $stmt = $dblj->prepare($sql);
            $stmt->execute(array($sid));

            if (isset($nowmid)) {
                $gonowmid = $encode->encode("cmd=gomid&newmid=$nowmid&sid=$sid");
                header("refresh:1;url=game.php?cmd=$gonowmid");
                exit();
            }
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
    <link rel="manifest" href="manifest.json"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.6.1.js"
            integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

</head>
<body>
<div class="main">
    <audio id="autoplay" class="hidden" loop controls autoplay loop hidden>
        <source src="/figure/source/76180931-42ba-4a4f-a837-940988b10b49.mp3" type="audio/mpeg">
    </audio>
    <script>
        setTimeout(() => {
            document.getElementById('autoplay').play();
        }, 1000)
    </script>
        <script src="/script.js"></script>
    <section class="sign-in">
        <div class="main-page">
            <div class="name">
                <h1 style="width: 200px">TIÊN HỘI</h1>
                AFK để trở thành tiên đế
            </div>
            <div class="form-btns">
                <button class="s-btn">Đăng nhập</button>
                <!--                <button class="f-btn">Sign In with Facebook</button>-->
                <a class="new-btn">Đăng ký ?</a>
            </div>
            <div class="cancel">
                <a><i class="fas fa-times"></i></a>
            </div>
        </div>

        <div class="sign-in-page">
            <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
                <input value="<?php if (!empty($username)) echo $username; ?>" name="username" placeholder="Tài khoản" type="text"/>
                <input value="<?php if (!empty($userpass)) echo $userpass; ?>" name="userpass" placeholder="Mật khẩu" type="password"/>
                <input type="submit" name="submit" value="Đăng nhập" />
            </form>
        </div>
<!--        <input type="text" name="name" placeholder="Tài khoản" class="input">-->
        <!--        <input type="password" name="userpass" placeholder="Mật khẩu" class="input">-->
        <!--        <input type="password" name="userpass2" placeholder="Nhập lại mật khẩu" class="input">user-->
        <div class="sign-up-page">
            <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
                <input class="username" name="username" placeholder="Tài khoản" type="text"/>
                <input class="userpass" name="userpass"  placeholder="Mât khẩu" type="password"/>
                <input class="userpass2" name="userpass2" placeholder="Nhập lại mật khẩu" type="password">
                <input class="register" type="button" name="register" value="Đăng ký" />
            </form>
        </div>
    </section>

    <!-----jquery+3.5.1----->
    <script>

        $(document).on('click', '.register', function () {
            const username = $('.sign-up-page').find('.username').val()
            const userpass = $('.sign-up-page').find('.userpass').val()
            const userpass2 = $('.sign-up-page').find('.userpass2').val()

            $.post('/reguser.php', {
                username,
                userpass,
                userpass2
            }, function (res) {
                console.log('res', JSON.parse(res))
                const parseRes = JSON.parse(res);
                window.alert(parseRes?.message)
                if (parseRes?.success) {
                    window.location.reload()
                }
            })
        })

        $(document).on('click', '.s-btn', function () {
            $('.sign-in').addClass('active-sign-in')
                .siblings('.sign-in').removeClass('active-sign-up')
        });

        $(document).on('click', '.new-btn', function () {
            $('.sign-in').addClass('active-sign-up')
                .siblings('.sign-in').removeClass('active-sign-in')
        });

        $(document).ready(function () {
            $('.cancel a').click(function () {
                $('.sign-in').removeClass('active-sign-in , active-sign-up')
            })
        });
    </script>
</div>
</body>
</html>