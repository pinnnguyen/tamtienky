<?php
error_reporting(E_ALL & ~E_NOTICE);
header("content-type:text/html;charset=utf-8"); //设置编码
ini_set('display_errors', 'off'); //屏蔽错误和警告提示
date_default_timezone_set('PRC'); //设置中国时区
include ("./mysql.php");
session_start();
if (isset($_POST['login'])) {
    $username = trim($_POST['username']);
    $password = trim($_POST['password']);
    if (($username == '') || ($password == '')) {
        echo "该用户名或密码不能为空";
        exit;
    } 
    else if (($username != '') && ($password != '')) { //都不为空
        $sql = "SELECT * FROM `admin` WHERE `username` = '$username' AND `password` = '$password';";
        $ltcxjg = $dblj->query($sql);
        $lthtml = '';
        if ($ltcxjg) {
            $ret = $ltcxjg->fetchAll(PDO::FETCH_ASSOC);
            if(count($ret)>0){ //登录成功
                //登录成功将信息保存到session中
                $_SESSION['username'] = $username;
                $_SESSION['islogin'] = 1;
                //如果勾选7天内自动保存，则将其保存到cookie
                if ($_POST['autologin'] == "yes") {
                    setcookie("username", $username, time() + 7 * 24 * 60 * 60);
                    setcookie("code", md5($username . md5($password)) , time() + 7 * 24 * 60 * 60);
                } else {
                    setcookie("username", '', time() - 1);
                    setcookie("code", '', time() - 1);
                }
                echo "登录成功";
//                for ($i = 0; $i < count($ret); $i++) {
//                    $username = $ret[count($ret) - $i - 1]['username'];
//                    $password = $ret[count($ret) - $i - 1]['password'];
//                    $lthtml .="用户名 $username 密码 $password";
//                }
            }
            else{
                //echo "用户名或密码错误";
                exit("用户名或密码错误");
            }
        }
        else{
            echo "数据库连接错误";
        }
    }
} 
else if (isset($_POST['changepwd'])) {
    $username = trim($_POST['username']);
    $oldpassword = trim($_POST['oldpassword']);
    $newpassword = trim($_POST['newpassword']);
    if (($username == '') || ($oldpassword == '') || ($newpassword == '')) {
        echo "该用户名或密码不能为空";
        exit;
    } 
    else if (($username != '') && ($oldpassword != '') && ($newpassword != '')) { //都不为空
        $sql = "SELECT * FROM `admin` WHERE `username` = '$username' AND `password` = '$oldpassword';";
        $ltcxjg = $dblj->query($sql);
        $lthtml = '';
        if ($ltcxjg) {
            $ret = $ltcxjg->fetchAll(PDO::FETCH_ASSOC);
            if(count($ret)>0) { //登录成功
                $_SESSION['username'] = $username;
                $_SESSION['islogin'] = 1;
                $id = $ret[0]["id"];
                $sql = "UPDATE `admin` SET `updated_time` = NOW(),`password` = '$newpassword' WHERE `id` =$id;";
                if ($_POST['autologin'] == "yes") {
                    setcookie("username", $username, time() + 7 * 24 * 60 * 60);
                    setcookie("code", md5($username . md5($newpassword)) , time() + 7 * 24 * 60 * 60);
                } else {
                    setcookie("username", '', time() - 1);
                    setcookie("code", '', time() - 1);
                }
                echo "登录成功";
            }
            else {
                exit("用户名或密码错误");
            }
        }


        $check = "SELECT * FROM `admin` WHERE `username` = '$username' AND `password` = '$oldpassword';";
        $ret = mysql_query($check); //执行
       $row = mysql_fetch_array($ret); //得到查询结果
        if ($row["username"] == $username) {
            //登录成功将信息保存到session中
            $_SESSION['username'] = $username;
            $_SESSION['islogin'] = 1;
            $id = $row["id"];
            $sql_code = "UPDATE `admin` SET `updated_time` = NOW(),`password` = '$newpassword' WHERE `id` =$id;";
            echo $sql_code;
            $ret=mysql_query($sql_code);
            //如果勾选7天内自动保存，则将其保存到cookie
            if ($_POST['autologin'] == "yes") {
                setcookie("username", $username, time() + 7 * 24 * 60 * 60);
                setcookie("code", md5($username . md5($newpassword)) , time() + 7 * 24 * 60 * 60);
            } else {
                setcookie("username", '', time() - 1);
                setcookie("code", '', time() - 1);
            }
            echo "登录成功";
        } 
        else {
            echo "用户名或密码错误";
            exit;
        }
    }
        }
else {
    echo "无权访问该文件！";
}
?>