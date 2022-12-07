<?php
include 'pdo.php';

$response = [];
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
    $response['message'] = 'Mật khẩu nhập hai lần không nhất quán';
    echo json_encode($response);
    exit();
} elseif (strlen($username) < 6 or strlen($userpass) < 6) {
    $response['message'] = 'Độ dài của số tài khoản hoặc mật khẩu phải lớn hơn hoặc bằng 6 ký tự';
    echo json_encode($response);
    exit();
} elseif ($ret) {
    $response['message'] = 'Đăng ký không thành công, tài khoản' . $cxusername . 'đã tồn tại';
    echo json_encode($response);
    exit();
} else {
    $token = md5("$username.$userpass" . strtotime(date('Y-m-d H:i:s')));
    $sql = "insert into userinfo(username,userpass,token) values(?,?,?)";
    $stmt = $dblj->prepare($sql);
    $cxjg = $stmt->execute([strtolower($username), $userpass, $token]);
    $response['message'] = 'đăng ký thành công';
    $response['success'] = true;
    echo json_encode($response);
    exit();
//    header("refresh:1;url=index.php");
}

echo json_encode($response);