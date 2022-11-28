<?php
include 'pdo.php';

$a = '';
if (isset($_POST['submit']) && $_POST['submit']) {
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
        $cxjg = $stmt->execute([$username, $userpass, $token]);
        $a = 'đăng ký thành công';
        echo $a;
        header("refresh:1;url=index.php");
    }
}

?>
<html lang="en">
<head>
    <meta charset="utf-8" content="width=device-width,user-scalable=no" name="viewport">
    <title>寻仙纪</title>

    <link rel="stylesheet" href="css/gamecss.css">
</head>
<body>
<div class="main" style="max-width: 678px">
    <img src="images/11.jpg" width="300" height="200" style="width: 100%">
    <div id="mainfont">
        <p>Thiên hạ phong vân xuất ngã bối, nhất nhập giang hồ tuế nguyệt thôi</p>
        <p>Hoàng đồ phách nghiệp đàm tiếu trung, bất thắng nhân sinh nhất tràng túy</p>
        <p>Đề kiếm khóa kỵ huy quỷ vũ, bạch cốt như sơn điểu kinh phi</p>
        <p>Trần sự như triều nhân như thủy, chích thán giang hồ kỷ nhân hồi</p>
    </div>
    <div class="login">
        <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
            <input type="text" name="username" placeholder="Tài khoản" class="input">
            <input type="password" name="userpass" placeholder="Mật khẩu" class="input">
            <input type="password" name="userpass2" placeholder="Nhập lại mật khẩu" class="input">
            <br>
            <p><input type="submit" name="submit" value="Đăng ký" class="btn-login"> <a href="index.php" id="btn">Đăng
                    nhập</a></p>
        </form>
    </div>
</div>
<div class="footer">
    <footer>
        <script type="text/javascript" src="js/jquery-1.6.2.min.js"></script>
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
    </footer> <!---* 小九楼论坛：www.xjyxi.com--->
</div>
</body>
</html>