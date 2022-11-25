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
    $username = htmlspecialchars($username);
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
    <title>Tầm Tiên kỷ</title>
    <link rel="stylesheet" href="css/gamecss.css">
</head>
<body>
<div class="main">
    <img src="images/11.jpg" width="300" height="200"><br/>
    <div id="mainfont">
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
            <p><input type="submit" name="submit" class="btn-login" value="Đăng nhập"/> <a href="reguser.php" id="btn">Đăng
                    ký</a></p>
        </form>
    </div>
    <div class="fix">
        <h2>2020/1/2 sửa nội dung:</h2>
        <p>1. Sửa lỗi người chơi khác nhau tạo võ công</p>
        <p>2. Chức năng NPC khôi phục bình thường, có thể trị liệu, mua thuốc, trao đổi kỹ năng</p>
        <p>3. Thời gian ngoại tuyến đã được điều chỉnh từ 10 phút ban đầu thành 15 phút</p>
        <p>4. Đã thêm chức năng gửi và xem lỗi</p>
        <p>5. Tối ưu hóa hiển thị song song của việc quay lại trang trước và quay lại trang chủ</p>
        <p>6. Sửa lỗi chức năng võ công không có thời gian góc</p>
        <p>7. Tối ưu hóa kích thước phông chữ của màn hình trò chuyện</p>
        <p>8. Giao diện đăng nhập thêm nút để xem thêm nhật ký</p>
        <p>9. Khắc phục sự cố bảng trắng thuốc hiển thị trên quái vật</p>
        <p>10. Điều chỉnh kinh nghiệm tiêu diệt quái vật, có 5 điểm thưởng khi nhảy cóc</p>
        <p>11. Cuộc trò chuyện bị hủy và được làm mới, và các khoảng trống không được phép gửi</p>
        <p>12. Sửa lỗi biệt hiệu có thể bị lặp lại</p>
        <h2>Nội dung cần sửa chữa:</h2>
        <p>1. Điều chỉnh trang nhiệm vụ (lập kế hoạch)</p>
        <p>2. Vấn đề thú cưng không phát huy tác dụng trong trận chiến</p>
        <p>3. Các vấn đề chưa biết còn lại</p>
        <p>4. Có kế hoạch điều chỉnh gói thiết bị (tùy theo tình hình quy hoạch và khả năng kỹ thuật có thể không bổ
            sung được, đừng quá hi vọng)</p>
        <p>5. Tấn công tự động đơn quái (tùy kỹ năng có thể không cộng được, đừng ôm hy vọng quá nhiều)</p>
        <br>
        <button type="button" onclick="window.location.href='log.php'">Xem thêm nhật ký</button>
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
    </footer>
</div>
</body>
</html>