<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/2/5 0005
 * Time: 19:57
 */

namespace main;
date_default_timezone_set("Asia/Shanghai");

class sess{

    function sessionMysqlOpen($savePath, $sessionName) {
        return true;
    }

    function sessionMysqlClose() {
        return true;
    }


    function sessionMysqlRead($sessionId) {
        try {
            $dblj = $this->get_Connection();

            $time = time();
            $sql = 'SELECT count(*) AS `count` FROM `session` WHERE skey = ? and expire > ?';
            $stmt = $dblj->prepare($sql);;
            $stmt->execute(array($sessionId, $time));
            $data = $stmt->fetch(\PDO::FETCH_ASSOC);

            if ($data['count'] == 0) {
                return '';
            }

            $sql = 'SELECT `data` FROM `session` WHERE `skey` = ? and `expire` > ?';
            $stmt = $dblj->prepare($sql);
            $stmt->execute(array($sessionId, $time));
            $data = $stmt->fetch(\PDO::FETCH_ASSOC);
            return $data['data'];
        } catch (\Exception $e) {
            return '';
        }

    }

    function sessionMysqlWrite($sessionId, $data) {
        try {
            $dblj = $this->get_Connection();
            $session_maxlifetime = get_cfg_var('session.gc_maxlifetime');

            $expire = time() + $session_maxlifetime;
            $sql = 'INSERT INTO `session` (`skey`, `data`, `expire`) values (?, ?, ?) ON DUPLICATE KEY UPDATE data = ?, expire = ?';
            $stmt = $dblj->prepare($sql);
            $stmt->execute(array($sessionId, $data, $expire, $data, $expire));

        } catch (\Exception $e) {
            echo $e->getMessage();
        }
        return true;
    }

    function sessionMysqlDestroy($sessionId) {
        try {
            $dbh = $this->get_Connection();
            $sql = 'DELETE FROM `session` where skey = ?';
            $stmt = $dbh->prepare($sql);
            $stmt->execute(array($sessionId));
            return TRUE;
        } catch (\Exception $e) {
            return FALSE;
        }
    }

    function sessionMysqlGc($lifetime) {
        try {
            $dbh = $this->get_Connection();
            $sql = 'DELETE FROM `session` WHERE expire < ?';
            $stmt = $dbh->prepare($sql);
            $stmt->execute(array(time()));
            $dbh = NULL;
            return TRUE;
        } catch (\Exception $e) {
            return FALSE;
        }
    }

    function sessionMysqlId() {
        if (filter_input(INPUT_GET, session_name()) == '' and
            filter_input(INPUT_COOKIE, session_name()) == '') {
            try {
                $dbh = $this->get_Connection();
                $stmt = $dbh->query('SELECT uuid() AS uuid');
                $data = $stmt->fetch(\PDO::FETCH_ASSOC);
                $data = str_replace('-', '', $data['uuid']);
                session_id($data);
                return TRUE;
            } catch (\Exception $ex) {
                return FALSE;
            }
        }
        return FALSE;
    }

    function startSession() {
        session_set_save_handler(
            array($this , 'sessionMysqlOpen'),
            array($this , 'sessionMysqlClose'),
            array($this , 'sessionMysqlRead'),
            array($this , 'sessionMysqlWrite'),
            array($this , 'sessionMysqlDestroy'),
            array($this , 'sessionMysqlGc'));
        register_shutdown_function( 'session_write_close');

        $this->sessionMysqlId();
        session_start();
    }


    function get_Connection(){
        $pdo_ = new pdo_();
        $dblj = $pdo_->dblj();
        return $dblj;
    }


}

class pdo_
{



    function dblj(){

        $sqlname = 'user';
        $sqlpass = '123456';
        $dbhost = '127.0.0.1';
        $dbport = 3306;
        $dbname = 'game';
        $dsn="mysql:host=$dbhost;port=$dbport;dbname=$dbname;";

        $APP_ROOT = dirname( dirname( __FILE__ )  ) . DIRECTORY_SEPARATOR;
        if(file_exists($APP_ROOT . 'config' . DIRECTORY_SEPARATOR . 'db.config.php')){
            require_once( $APP_ROOT . 'config' . DIRECTORY_SEPARATOR . 'db.config.php' );   
        }        

        if(isset($GLOBALS['config']['db']['db_host'])){

            $sqlname = $GLOBALS['config']['db']['db_user'];
            $sqlpass = $GLOBALS['config']['db']['db_password'];
            $dbhost = $GLOBALS['config']['db']['db_host'];
            $dbport = $GLOBALS['config']['db']['db_port'];
            $dbname = $GLOBALS['config']['db']['db_name'];

            $dsn="mysql:host=$dbhost;port=$dbport;dbname=$dbname;";
        }

        $dblj = new \PDO( $dsn , $sqlname , $sqlpass , array(\PDO::ATTR_PERSISTENT=>true) );

        $dblj->setAttribute(\PDO::ATTR_EMULATE_PREPARES, false);
        $dblj->query("SET NAMES utf8mb4");;
        return $dblj;
    }
}


class user
{

    public $dblj;
    public $token;

    function __construct()
    {

        $pdo_ =  new pdo_();
        $this->dblj = $pdo_->dblj();
    }

    function login_user( $username , $userpass ){
        $username = htmlspecialchars($username);
        $userpass = htmlspecialchars($userpass);

        $sql = "select * from userinfo where username = ? and userpass = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($username,$userpass));
        $retobj = $stmt->fetch(\PDO::FETCH_OBJ);
        if (!$retobj){
            $ret = (object) array(
                'cmd'=>"login_user",
                'status'=>0,
                'msg'=>"Người dùng không tồn tại hoặc mật khẩu tài khoản sai"
            );
            return $ret;
        }
        $_SESSION['token'] = $retobj->token;
        $this->token = $retobj->token;
        $ret = (object) array(
            'cmd'=>"login_user",
            'status'=>1,
            'obj'=>$retobj,
            'msg'=>"Đăng nhập thành công"
        );
        return $ret;

    }

    function login_game(){
        $ret = $this->login_game_token($this->token);
        return $ret;
    }


    function login_game_token($token){
        $sql = "select * from game1 WHERE token = ?;";
        $stmt = $this->dblj->prepare($sql);
        $data = array($token);
        $stmt->execute($data);
        $retobj = $stmt->fetch(\PDO::FETCH_OBJ);

        if (!$retobj){
            $ret = (object) array(
                'cmd'=>"login_game",
                'status'=>2,
                'msg'=>"Vai trò không tồn tại"
            );
            return $ret;
        }

        $ret = (object) array(
            'cmd'=>"login_game",
            'status'=>1,
            'obj'=>$retobj,
            'msg'=>"Hạ cánh thành công"

        );

        return $ret;
    }

    function new_player( $uname , $usex){//创建角色
        $this->token = $_SESSION['token'];
        $uname = htmlspecialchars($uname);

        if(strlen($uname)<6 || strlen($uname)>12){

            $ret = (object) array(
                'cmd'=>"newplayer",
                'status'=>0,
                'msg'=>"Tên người dùng không được quá ngắn hoặc quá dài"
            );
            return $ret;
        }

        $game = new game();
        $Obj_get_game_config = $game->get_system_config("游戏","出生点");
        $firstmid = $Obj_get_game_config->firstmid;
        $sid = md5($uname.$this->token.'229');
        $nowdate = date('Y-m-d H:i:s');

        $sql = "insert into game1(token , sid , uname , usex , nowmid , endtime) SELECT  ?,?,?,?,?,? FROM dual WHERE NOT exists(SELECT token FROM game1 WHERE token = ?);";
        $stmt = $this->dblj->prepare($sql);
        $data = array( $this->token , $sid , $uname , $usex , $firstmid , $nowdate ,$this->token);
        $exeres = $stmt->execute($data);

        if (!$exeres){
            $ret = (object) array(
                'cmd'=>"newplayer",
                'status'=>0,
                'msg'=>"Tạo không thành công, không rõ lý do"
            );
            return $ret;

        }

        $ret = (object) array(
            'cmd'=>"newplayer",
            'status'=>1,
            'msg'=>"Đã tạo thành công"
        );
        return $ret;

    }

    function reg($username , $userpass , $userpass2){
        $sql = "select * from userinfo where username = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($username));
        $stmt->bindColumn('username',$cxusername);
        $ret = $stmt->fetch(\PDO::FETCH_OBJ);

        if($userpass2 != $userpass){
            $a = 'Hai mật khẩu không nhất quán';
        }elseif (strlen($username) < 6 or strlen($userpass)< 6){
            $a = 'Độ dài của tài khoản hoặc mật khẩu phải lớn hơn hoặc bằng 6 chữ số';
        }elseif ($ret){
            $a = 'Đăng ký không thành công, số tài khoản '.$cxusername.' đã tồn tại';
        }else {
            $token = md5("$username.$userpass" . strtotime(date('Y-m-d H:i:s')));
            $sql = "insert into userinfo(username,userpass,token) values(?,?,?)";
            $stmt = $this->dblj->prepare($sql);
            $stmt->execute(array($username, $userpass, $token));
            $a = 'Đăng ký thành công';

            $Obj_login_user = $this->login_user($username, $userpass);
            if (!$Obj_login_user) {
                $a = 'error,Đăng nhập người dùng không thành công';
            }

            if ($Obj_login_user->status == 0) {
                $a = $Obj_login_user->msg;
            } else {

                $userinfo = $Obj_login_user->obj;
                $_SESSION['token'] = $userinfo->token;

                $Obj_login_game = $this->login_game();

                if (!$Obj_login_game) {
                    $a = 'error, Đăng nhập trò chơi không thành công';
                }

                if ($Obj_login_game->status == 0) {
                    $a = $Obj_login_user->msg;
                }

                if ($Obj_login_game->status == 2) {
                    Header("Location:./chuangjian.php");
                    exit();
                }

                if ($Obj_login_game->status == 1) {
                    $uinfo = $Obj_login_game->obj;
                    $_SESSION['sid'] = $uinfo->sid;
                    $_SESSION['uid'] = $uinfo->uid;
                    Header("Location:./game.php");
                    exit();
                }
            }
        }
        return $a;
    }



}

class game{

    public $dblj;
    public $sid;
    public $uid;
    public $token;

    function __construct()
    {

        $pdo_ =  new pdo_();
        $this->dblj =  $pdo_->dblj();

        if (!isset($_SESSION['sid'] )) {
            return;
        }
        $this->sid = $_SESSION['sid'];
        $this->uid = $_SESSION['uid'];
        $this->token = $_SESSION['token'];
    }

    function get_system_config($m_name,$m_value){
        $sql = "select * from `system_config` WHERE m_name = ? AND  m_value = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array( $m_name , $m_value));
        $ret = $stmt->fetch(\PDO::FETCH_OBJ);
        if (!$ret ){
            return "không tên";
        }
        if (!$ret || !$ret->m_string ){
            $ret->m_string = "không tên";
        }
        return $ret->m_string;
    }

    function get_system_config_all(){
        $sql = "select * from `system_config`";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute();
        $ret = $stmt->fetchAll(\PDO::FETCH_OBJ);
        return $ret;
    }

    function create_url($parm,$url_name,$type=1){//创建url

        if ( !isset($_SESSION['c']) || !isset($_SESSION['a']) ){
            $c = rand(1,100);
            $a = rand(1,100);
            $_SESSION['c'] = $c;
            $_SESSION['a'] = $a;
        }

        $a = $_SESSION['a'];
        $c = $_SESSION['c'];

        $c++;

        $_SESSION["a_{$a}_c_{$c}"] = $parm;
        $returl = "?c=a_{$a}_c_{$c}";

        if ($c>5){
            $a++;
            $c = 0;
        }

        $_SESSION['a'] = $a;

        $_SESSION['c'] = $c;
        switch ($type){
            case 1:
                $class = "h5ui-btn_1 h5ui-btn_primary btn-outlined_1";//按钮短
                break;
            case 2:
                $class = ""; //链接
                break;
            case 3:
                $class = "h5ui-grid_item"; //块
                break;
            case 4:
                $class = "h5ui-btn h5ui-btn_primary btn-outlined";//按钮长
        }
        $returl = "<a href='$returl' class='$class'>$url_name</a>";

        return $returl;

    }

    function player_change_exp($exp , $type ){
        $ret = $this->player_change_game1('uexp' , $type , $exp );
        if ($ret){
            $ret = $this->plauer_lv_up();
        }
        return $ret;
    }

    function player_add_exp($exp ){
        return $this->player_change_exp( $exp , 1 );
    }

    function player_sub_exp($exp ){
        return $this->player_change_exp( $exp ,  2 );
    }

    function player_change_yxb($exp , $lx ){
        return $this->player_change_game1('uyxb' , $lx , $exp );
    }

    function player_change_czb($exp , $lx ){
        return $this->player_change_game1('uczb' , $lx , $exp );
    }

    function player_change_xl_time($time ){
        return $this->player_change_xl_time_sid($time , $this->sid);
    }

    function player_change_xl_time_sid($time , $sid){
        return $this->player_update_game1_sid('xiuliantime' , $time , $sid);
    }

    function player_change_xl_buff($buff ){
        return $this->player_change_xl_buff_sid($buff , $this->sid);
    }

    function player_change_xl_buff_sid($buff , $sid){
        return $this->player_update_game1_sid('sfxl' , $buff ,$sid);
    }

    function player_update_game1_sid($ziduan , $gaibian ,$sid){//更新玩家字段值
        $sql = "update game1 set $ziduan = ? WHERE sid = ?";
        $stmt = $this->dblj->prepare($sql);
        $bool = $stmt->execute(array( $gaibian , $sid));
        return $bool;
    }

    function player_update_game1($ziduan , $gaibian ){//更新玩家字段值
        $sql = "update game1 set $ziduan = ? WHERE sid = ?";
        $stmt = $this->dblj->prepare($sql);
        $bool = $stmt->execute(array( $gaibian , $this->sid));
        return $bool;
    }

    function player_update_game1_uid( $ziduan , $gaibian ,$uid){//更新玩家字段值
        $sql = "update game1 set $ziduan = ? WHERE uid = ?";
        $stmt = $this->dblj->prepare($sql);
        $bool = $stmt->execute(array( $gaibian , $uid));
        return $bool;
    }

    function player_update_ispvp_uid($gaibian ,$uid ){//更新玩家字段值
        $sql = "update game1 set ispvp = ? WHERE uid = ?";
        $stmt = $this->dblj->prepare($sql);
        $bool = $stmt->execute(array( $gaibian , $uid));
        return $bool;
    }

    function player_update_ispvp($gaibian ){//更新玩家字段值
        return $this->player_update_ispvp_sid($gaibian , $this->sid);
    }

    function player_update_ispvp_sid($gaibian , $sid){//更新玩家字段值
        $sql = "update game1 set ispvp = ? WHERE sid = ?";
        $stmt = $this->dblj->prepare($sql);
        $bool = $stmt->execute(array( $gaibian , $sid));
        return $bool;
    }

    function player_change_game1($ziduan , $lx , $gaibian ){//改变玩家字段值
       return $this->player_change_game1_sid($ziduan , $lx , $gaibian,$this->sid);

    }

    function player_change_game1_sid($ziduan , $type , $gaibian , $sid){//改变玩家字段值

        if ($type == 1){
            $sql = "update game1 set $ziduan = $ziduan + ? WHERE sid = ? ";
            $data = array($gaibian , $sid );
        }else{
            $sql = "update game1 set $ziduan = $ziduan - ? WHERE sid = ? AND $ziduan >= ?";
            $data = array($gaibian , $sid , $gaibian);
        }

        $stmt = $this->dblj->prepare($sql);
        return $stmt->execute($data);

    }

    function mid_get_info($mid ){//获取地图信息
        $sql = "select * from mid where mid = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($mid));
        $ret = $stmt->fetch(\PDO::FETCH_OBJ);
        return $ret;
    }

    function liaotian_get_all($num ){//获取公共聊天纪录
        $sql = 'SELECT * FROM ggliaotian ORDER BY id DESC LIMIT ?';//聊天列表获取
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($num));
        $retObj = $stmt->fetchAll(\PDO::FETCH_OBJ);
        return $retObj;

    }

    function liaotian_send_all($msg ,$uname , $uid){//发送公共聊天

        $nowdate = date('Y-m-d H:i:s');
        $ltmsg = htmlspecialchars($msg);
        $sql = "insert into ggliaotian(name,date,msg,uid) values(?,?,?,?)";
        $stmt = $this->dblj->prepare($sql);
        $exeres = $stmt->execute(array($uname,$nowdate,$ltmsg,$uid));

        return $exeres;

    }

    function mid_get_player_online($mid ){//获取当前地图玩家
        $sql = "select * from game1 where nowmid = ? AND sfzx = 1";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($mid));
        $ret = $stmt->fetchAll(\PDO::FETCH_ASSOC);
        return $ret;
    }

    function player_update_sfzx($sfzx ){//更新在线状态
        $nowdate = date('Y-m-d H:i:s');
        $sql = "update game1 set sfzx = ? , endtime = ? WHERE sid = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute( array($sfzx ,$nowdate , $this->sid ) );
        $exeres = $stmt->rowCount();
        return $exeres;
    }

    function player_update_sfzx_uid($sfzx,$uid){//更新在线状态

        $nowdate = $nowdate = date('Y-m-d H:i:s');
        $sql = "update game1 set sfzx = ? , endtime = ? WHERE uid = ?";
        $stmt = $this->dblj->prepare($sql);
        $exeres = $stmt->execute( array($sfzx ,$nowdate , $uid ) );
        return $exeres;
    }

    function player_update_endtime($endtime){//更新最后操作时间
        $sql = "update game1 set endtime = ? , sfzx = ? WHERE sid = ?";
        $stmt = $this->dblj->prepare($sql);
        $exeres = $stmt->execute( array($endtime ,1, $this->sid ) );
        return $exeres;
    }

    function mid_delete_guaiwu_player(){//删除地图该玩家已经被攻击怪物
        $sql = "delete from midguaiwu where sid = ?";
        $stmt = $this->dblj->prepare($sql);
        $ret = $stmt->execute(array($this->sid));
        return $ret;
    }

    function player_get_uinfo_uid($uid){

        $sql="select * from game1 where uid = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute( array($uid) );
        $player = $stmt->fetch(\PDO::FETCH_OBJ);

        $player = $this->player_get_uinfo_sid($player->sid);
        return $player;
    }

    function club_creater($clubname , $clubinfo ,$clublv , $clubexp ,$clubno1){
        $sql = "insert into club(clubname, clubinfo, clublv, clubexp, clubno1) VALUES (?,?,?,?,?)";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute([$clubname , $clubinfo ,$clublv , $clubexp ,$clubno1]);
        $clubid = $this->dblj->lastInsertId();
        return $clubid;
    }

    function club_get_info($clubid){
        $sql = "select * from `club` WHERE clubid = ? ";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute( array($clubid) );
        $club = $stmt->fetch(\PDO::FETCH_OBJ);
        return $club;
    }

    function club_get_info_all(){
        $sql = "select * from `club`";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute();
        $club = $stmt->fetchAll(\PDO::FETCH_OBJ);
        return $club;
    }

    function clubplayer_join($clubid){
        return $this->clubplayer_join_sid($clubid , $this->sid);
    }

    function clubplayer_join_sid($clubid , $sid){
        $sql = "insert into clubplayer(clubid, sid, uid, uclv) VALUES (?,?,?,?)";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute( array($clubid , $sid , $this->uid , 6) );
        $club = $stmt->rowCount();
        return $club;
    }

    function club_delete_sid($clubid){
        $sql="delete from club WHERE clubid = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute( array($clubid) );
        $row = $stmt->rowCount();
        return $row;
    }

    function clubplayer_out(){
        return $this->clubplayer_out_sid($this->sid);
    }

    function clubplayer_set_uclv($clubid ,$uid ,$uclv){
        $sql = "update clubplayer set uclv = ? WHERE clubid = ? and uid = ? ";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($uclv ,$clubid , $uid ));
        $club = $stmt->rowCount();
        return $club;
    }

    function clubplayer_out_sid($sid){
        $sql="delete from clubplayer WHERE sid = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute( array($sid) );
        $club = $stmt->rowCount();
        return $club;
    }

    function clubplayer_get_player_uid($uid){
        $sql = "select * from `clubplayer` WHERE uid = ? ";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute( array($uid) );
        $club = $stmt->fetch(\PDO::FETCH_OBJ);
        return $club;
    }
    function clubplayer_get_player(){
        return $this->clubplayer_get_player_sid($this->sid);
    }

    function clubplayer_get_player_sid($sid){
        $sql = "select * from `clubplayer` WHERE sid = ? ";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute( array($sid) );
        $club = $stmt->fetch(\PDO::FETCH_OBJ);
        return $club;
    }

    function clubplayer_get_all($clubid){
        $sql="select uid,uclv from clubplayer WHERE clubid = ? ORDER BY uclv ASC ";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($clubid));
        return $stmt->fetchAll(\PDO::FETCH_OBJ);
    }

    function clubplayer_get_uclv_all($clubid , $uclv){
        $sql = "select * from clubplayer WHERE clubid = ? AND uclv > ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($clubid,$uclv));
        return $stmt->fetchAll(\PDO::FETCH_OBJ);
    }



    function club_creator_renzhi( $变量_系统){
        $门派玩家 = $this->clubplayer_get_player();
        $player = $this->player_get_uinfo();
        $门派所有可操作玩家 = $this->clubplayer_get_uclv_all($门派玩家->clubid , $门派玩家->uclv);
        $操作列表 = "";
        foreach ($门派所有可操作玩家 as $门派可操作玩家){
            if ($门派可操作玩家->uid == $player->uid){
                continue;
            }

            $任职副掌门 = $this->create_url("cmd=club&canshu=renzhi&zhiwei=2&uid={$门派可操作玩家->uid}","Nhậm chức Phó trưởng");
            $任职长老 = $this->create_url("cmd=club&canshu=renzhi&zhiwei=3&uid={$门派可操作玩家->uid}","Nhậm chức trưởng lão");
            $任职执事 = $this->create_url("cmd=club&canshu=renzhi&zhiwei=4&uid={$门派可操作玩家->uid}","Nhậm chức chấp sự");
            $任职精英 = $this->create_url("cmd=club&canshu=renzhi&zhiwei=5&uid={$门派可操作玩家->uid}","Nhậm chức tinh anh");
            $任职弟子 = $this->create_url("cmd=club&canshu=renzhi&zhiwei=6&uid={$门派可操作玩家->uid}","Nhậm chức đệ tử");

            if ($门派玩家->uclv == 1){

                $renzhihtml = "{$任职副掌门}{$任职长老}{$任职执事}{$任职精英}{$任职弟子}";
            }
            if ($门派玩家->uclv == 2){

                $renzhihtml = "{$任职长老}{$任职执事}{$任职精英}{$任职弟子}";
            }
            if ($门派玩家->uclv == 3){

                $renzhihtml = "{{$任职执事}{$任职精英}{$任职弟子}";
            }

            $otherplayer = $this->player_get_uinfo_uid($门派可操作玩家->uid);
            $ucmd = $this->create_url("cmd=otherzhuangtai&uid={$门派可操作玩家->uid}","{$otherplayer->uname}");
            $操作列表 .= "{$ucmd}{$renzhihtml}<br/>";

        }
        $out_html = " =========Lựa chọn nhậm chức nhân viên=========<br/>$操作列表<br/>{$变量_系统->链接_返回游戏_按钮短}";
        return $out_html;
    }

    function club_creator_notclub($变量_系统){
        $门派列表 = $this->create_url("cmd=clublist","Môn phái danh sách");
        $门派页面 ="你现在还没有门派呢！<br/>
        {$门派列表}
        <br/>
        <br/>
        {$变量_系统->链接_返回游戏_按钮短}";
        return $门派页面;
    }

    function club_creator_info($arr_data , $变量_系统){


        $门派玩家 = $this->clubplayer_get_player();


        if (!isset($arr_data->clubid) && $门派玩家){
            $arr_data->clubid = $门派玩家->clubid;
        }

        $门派 = $this->club_get_info($arr_data->clubid);
        $创建者 = $this->player_get_uinfo_uid($门派->clubno1);
        $链接_创建者 =$this->create_url("cmd=otherzhuangtai&uid={$门派->clubno1}",$创建者->uname);
        $链接_门派列表 = $this->create_url("cmd=clublist","门派列表");
        $链接_申请加入 = $this->create_url("cmd=club&clubid={$arr_data->clubid}&canshu=joinclub","申请加入");
        $链接_叛出 = $this->create_url("cmd=club&canshu=outclub","叛出");
        $链接_解散 = $this->create_url("cmd=club&canshu=deleteclub","解散");
        $链接_任职 = $this->create_url("cmd=club&canshu=into_renzhi","任职");

        $门派所有玩家 = $this->clubplayer_get_all($arr_data->clubid);
        $链接_玩家列表 = '';
        foreach ($门派所有玩家 as $门派玩家_temp){
            $uid = $门派玩家_temp->uid;
            $chenhao = "[Đệ tử]";
            switch ($门派玩家_temp->uclv){
                case 1:
                    $chenhao = "[Chưởng môn]";
                    break;
                case 2:
                    $chenhao = "[Phó Chưởng Môn]";
                    break;
                case 3:
                    $chenhao = "[Trưởng lão]";
                    break;
                case 4:
                    $chenhao = "[Chấp sự]";
                    break;
                case 5:
                    $chenhao = "[Tinh anh]";
                    break;
            }
            $otherplayer = $this->player_get_uinfo_uid($uid);
            $ucmd = $this->create_url("cmd=otherzhuangtai&uid={$门派玩家_temp->uid}","{$chenhao}{$otherplayer->uname}");
            $链接_玩家列表 .= "{$ucmd}<br/>";
        }

        if($门派玩家 && $门派玩家->clubid == $arr_data->clubid){
            $链接_门派菜单 = "{$链接_叛出}";
            if ($门派玩家->uclv == 1 ){
                $链接_门派菜单 = " {$链接_任职}{$链接_解散}";
            }elseif ($门派玩家->uclv == 2){
                $链接_门派菜单 = " {$链接_叛出}{$链接_任职}";
            }elseif ($门派玩家->uclv == 3){
                $链接_门派菜单 = " {$链接_叛出}{$链接_任职}";
            }
        }else{
            $链接_门派菜单 = " {$链接_申请加入}";
        }

        $门派页面_门派界面 ="Môn phái:{$门派->clubname}<br/>
        Người thành lập:{$链接_创建者}<br/>
        Môn phái tài chính:Linh thạch[{$门派->clubyxb}] Cực phẩm linh thạch[{$门派->clubczb}]<br/>
        Kiến thiết độ:{$门派->clubexp}<br/>
        Môn phái giới thiệu:<br/>{$门派->clubinfo}<br/>
        {$链接_门派菜单}
        {$链接_门派列表}<br/>
        Môn phái thành viên:<br/>
        {$链接_玩家列表}
        <br/>
        {$变量_系统->链接_返回游戏_按钮短}";

        return $门派页面_门派界面;

    }

    function player_get_uinfo(){
        return $this->player_get_uinfo_sid($this->sid);
    }

    function player_get_uinfo_sid($sid){//获取玩家信息

        $sql="select * from game1 where sid= ? ";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($sid));
        $player = $stmt->fetch(\PDO::FETCH_OBJ);

        for ($i=1;$i<=6;$i++){

            $player = (array)$player;

            if ( $player["tool$i"]){

                $zhuangbei = $this->zb_get( $player["tool$i"] );

                $player = (object)$player;

                $player->ugj = $player->ugj + $zhuangbei->zbgj;
                $player->ufy = $player->ufy + $zhuangbei->zbfy;
                $player->ubj = $player->ubj + $zhuangbei->zbbj;
                $player->uxx = $player->uxx + $zhuangbei->zbxx;
                $player->umaxhp = $player->umaxhp + $zhuangbei->zbhp;
            }
        }
        $player = (object)$player;

        $ranges_lv = array(0, 30, 50, 70, 80, 90, 100, 110);
        $ranges_exp = array(2.5, 5, 7.5, 10, 12.5, 15, 17.5);
        $player_lv2 = $player->ulv + 1;

        $层次1 = $this->get_system_config("游戏","层次1");
        $层次2 = $this->get_system_config("游戏","层次2");
        $层次3 = $this->get_system_config("游戏","层次3");
        $层次4 = $this->get_system_config("游戏","层次4");
        $层次5 = $this->get_system_config("游戏","层次5");
        $层次6 = $this->get_system_config("游戏","层次6");
        $层次7 = $this->get_system_config("游戏","层次7");
        $层次8 = $this->get_system_config("游戏","层次8");

        $ranges_jj = array($层次1 , $层次2 , $层次3 , $层次4 , $层次5 , $层次6  , $层次7 , $层次8);
        $ranges_jd = array('一','二','三','四','五','六','七','八','九','十');

        for ($i=0;$i < count($ranges_lv);$i++){

            $lv = $ranges_lv[$i];
            $lv2 = $ranges_lv[$i+1];
            if ($player->ulv >= $lv && $player->ulv < $lv2){

                $djc = $player->ulv - $ranges_lv[$i];
                $jds = ($lv2 - $lv ) / 10;
                $num = (int) floor($djc/$jds);
                $jd = $ranges_jd[$num];

                $player->jingjie = $ranges_jj[$i];
                $player->cengci = $jd.'层';
                $player->umaxexp = $player_lv2 + round($player_lv2/2);
                $player->umaxexp = $player_lv2 * $player->umaxexp * 12 * $ranges_exp[$i] + $player_lv2;
                break;
            }

        }
        return $player;
    }

    function zb_get($zbnowid){//获取玩家装备信息

        $sql = "select * from playerzhuangbei where zbnowid = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($zbnowid));
        $zhuangbei = $stmt->fetch(\PDO::FETCH_OBJ);
        return $zhuangbei;
    }

    function gw_set_sid($gid){
        $sql = "update midguaiwu set sid = ? WHERE id= ?";
        $stmt = $this->dblj->prepare($sql);
        $exeres = $stmt->execute(array($this->sid , $gid));
        return $exeres;
    }

    function create_url_nowmid($type = 1){
        return $this->create_url("cmd=mid&cmd2=gonowmid","Trở lại trò chơi",$type);
    }

    function create_url_goremid(){
        return $this->create_url("cmd=mid&cmd2=goremid","Quay lại điểm phục sinh");
    }

    function mid_get_qy($qyid){
        $sql = "select * from `qy` WHERE qyid = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($qyid));
        $ret = $stmt->fetch(\PDO::FETCH_OBJ);
        return $ret;
    }

    function player_go_re(){
        return $this->player_go_re_sid($this->sid);

    }

    function player_go_re_uid($uid){
        $player = $this->player_get_uinfo_uid($uid);
        return $this->player_go_re_sid($player->sid);
    }

    function player_go_re_sid($sid){
        $player = $this->player_get_uinfo_sid($sid);
        $mid_info = $this->mid_get_info($player->nowmid );
        $mid_qy = $this->mid_get_qy($mid_info->mqy );
        $ret = $this->player_gomid_sid($mid_qy->mid , $sid);
        if ($ret){
            return $mid_qy->mid;
        }
        return $player->nowmid;
    }

    function zb_get_ye($yeshu ,$num ){
        $sql = "select * from playerzhuangbei  WHERE sid = ? ORDER BY zbid DESC LIMIT ?,?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($this->sid ,($yeshu - 1) * $num , $num));
        $exeres = $stmt->fetchAll(\PDO::FETCH_ASSOC);
        return $exeres;

    }

    function zb_get_num(){
        $sql = "select count(*) from playerzhuangbei where sid = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($this->sid));
        return $stmt->fetchColumn();
    }

    function zb_delete($zbid ){
        $sql = "delete from playerzhuangbei where zbnowid = ? AND sid= ?";//删除装备
        $stmt = $this->dblj->prepare($sql);
        $ret = $stmt->execute(array($zbid , $this->sid));
        return $ret;
    }

    function zb_sell_yxb($zbid ,$yxb){
        $ret = $this->zb_delete($zbid );
        if ($ret){
            return $this->yxb_change(1 ,$yxb );
        }
        return false;
    }

    function yxb_change($lx , $num){
        return $this->yxb_change_sid($lx , $num , $this->sid);
    }

    function yxb_change_uid($lx , $num , $uid){
        if (!$num){
            return false;
        }
        if ($lx == 1){
            $sql = 'update game1 set uyxb = uyxb + ? WHERE uid = ? ';
            $stmt = $this->dblj->prepare($sql);
            $ret = $stmt->execute( array($num , $uid) );
            return $ret;
        }else{
            $sql = 'update game1 set uyxb = uyxb - ? WHERE uid = ? AND uyxb >= ? ';
            $stmt = $this->dblj->prepare($sql);
            $ret = $stmt->execute( array($num , $uid , $num) );
            return $ret;
        }
    }

    function yxb_change_sid($lx , $num , $sid){

        if (!$num){
            return false;
        }
        if ($lx == 1){
            $sql = 'update game1 set uyxb = uyxb + ? WHERE sid = ? ';
            $stmt = $this->dblj->prepare($sql);
            $ret = $stmt->execute( array($num , $sid) );
            return $ret;
        }else{
            $sql = 'update game1 set uyxb = uyxb - ? WHERE sid = ? AND uyxb >= ? ';
            $stmt = $this->dblj->prepare($sql);
            $ret = $stmt->execute( array($num , $sid , $num) );
            return $ret;
        }
    }

    function czb_change($lx , $num ){

        if (!$num){
            return false;
        }
        if ($lx == 1){
            $sql = 'update game1 set uczb = uczb + ? WHERE sid = ? ';
            $stmt = $this->dblj->prepare($sql);
            $ret = $stmt->execute( array($num , $this->sid) );
            return $ret;
        }else{
            $sql = 'update game1 set uczb = uczb - ? WHERE sid = ? AND uczb >= ? ';
            $stmt = $this->dblj->prepare($sql);
            $ret = $stmt->execute( array($num , $this->sid , $num) );
            return $ret;
        }
    }

    function mid_get_guaiwu_all($mid ){
        $sql = "select * from midguaiwu where mid = ? AND sid = '' ";//获取当前地图怪物
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($mid));
        $ret = $stmt->fetchAll(\PDO::FETCH_ASSOC);
        return $ret;
    }

    function mid_get_guaiwu_all_and_wounded($mid ){
        $sql = "select * from midguaiwu where mid = ? AND ( sid = '' or sid = ?) ";//获取当前地图怪物，含受伤的//
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($mid , $this->sid));
        $ret = $stmt->fetchAll(\PDO::FETCH_ASSOC);
        return $ret;
    }

    function mid_get_guaiwu_sys_all($mid ){
        $sql = "select mgid from mid where mid = ? ";//获取当前地图怪物
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($mid));
        $ret = $stmt->fetch(\PDO::FETCH_OBJ);

        $gw_arr = [];
        if($ret){
            $i = 0;
            $arr1 = explode("," , $ret->mgid );
            foreach ($arr1 as $gstr){
                $arr2 = explode("|",$gstr);
                if ( count($arr2) == 2 ){
                    $gw_arr[$i] = $arr2[0];
                }
                $i++;
            }
            if ($gw_arr){
                return $gw_arr;
            }

        }
        return $ret;
    }

    function mid_add_gw($gid , $mid ){
        $gw = $this->gw_get_info_sys($gid );
        $sql = "insert into midguaiwu(gname, ghp, ggj, gfy, glv, mid, gyid, gexp , gmaxhp, gbj, gxx) VALUES (?,?,?,?,?,?,?,?,?,?,?) ";
        $stmt = $this->dblj->prepare($sql);
        $sjexp = mt_rand(6,8) + 0.5;
        $gexp = round($gw->glv * $sjexp,0);
        $arr = array($gw->gname , $gw->ghp , $gw->ggj , $gw->gfy , $gw->glv , $mid , $gw->id , $gexp , $gw->ghp , $gw->gbj , $gw->gxx);

        $stmt->execute($arr);
        return $stmt->rowCount();
    }


    function mid_update_gw_time($mid){
        $nowdate = $nowdate = date('Y-m-d H:i:s');
        $sql = "update mid set mgtime = ? WHERE mid = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($nowdate , $mid));
        return $stmt->rowCount();
    }

    function mid_get_guaiwu_sys_num($mid , $gid ){
        $sql = "select mgid from mid where mid = ? ";//获取当前地图怪物
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute( array($mid) );
        $ret = $stmt->fetch(\PDO::FETCH_OBJ);

        if($ret){

            $arr1 =explode("," , $ret->mgid );
            foreach ($arr1 as $gstr){
                $arr2 = explode("|",$gstr);
                if (!(count($arr2) == 2 )){
                    return false;
                }
                if ($arr2[0] == $gid){
                    return $arr2[1];
                }

            }


        }
        return $ret;
    }


    function player_gomid($mid ){
        return $this->player_update_game1('nowmid' , $mid );
    }

    function player_gomid_sid($mid , $sid){
        return $this->player_update_game1_sid('nowmid' , $mid , $sid);
    }

    function player_update_ypwz($ypwz , $ypid ){
        return $this->player_update_game1("yp{$ypwz}" , $ypid);
    }

    function yp_get_info($ypid ){
        $sql = "select * from playeryaopin WHERE ypid = ? AND sid= ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($ypid , $this->sid));
        $exeres = $stmt->fetch(\PDO::FETCH_OBJ);
        return $exeres;
    }

    function yp_get_info_all(){
        $sql = "select * from playeryaopin WHERE sid= ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($this->sid));
        $exeres = $stmt->fetchAll(\PDO::FETCH_OBJ);
        return $exeres;
    }


    function yp_get_info_all_sys( ){//获取系统药品信息

        $sql = "select * from yaopin";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute();
        $exeres = $stmt->fetchAll(\PDO::FETCH_OBJ);
        return $exeres;
    }

    function yp_get_info_sys($ypid ){//获取系统药品信息

        $sql = "select * from yaopin WHERE ypid = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($ypid));
        $exeres = $stmt->fetch(\PDO::FETCH_OBJ);
        return $exeres;
    }

    function yp_use($ypid , $sum ){

        $player = $this->player_get_uinfo();
        if ($player->uhp <= 0){
            return false;
        }
        $ret = $this->yp_delete( $ypid , $sum );

        if ($ret){

            $hpc = $player->umaxhp - $player->uhp;

            $yaopin = $this->yp_get_info_sys( $ypid  );

            if ( $yaopin->yphp >= $hpc ){
                $yaopin->yphp = $hpc;
            }

            $this->player_change_uhp( $yaopin->yphp , 1  );

            $this->player_change_ugj($yaopin->ypgj , 1  );
            $this->player_change_ufy($yaopin->ypfy , 1  );
            $this->player_change_ubj($yaopin->ypbj , 1  );
            $this->player_change_uxx($yaopin->ypxx , 1  );
        }
        return $ret;
    }

    function player_change_ugj($ugj , $lx ){
        return $this->player_change_game1('ugj' , $lx , $ugj );
    }

    function player_change_ufy($ufy , $lx ){
        return $this->player_change_game1('ufy' , $lx , $ufy );
    }

    function player_change_ubj($ugj , $lx ){
        return $this->player_change_game1('ubj' , $lx , $ugj  );
    }

    function player_change_uxx($ugj , $lx ){
        return $this->player_change_game1('uxx' , $lx , $ugj );
    }

    function player_change_uhp($uhp , $lx ){
        return $this->player_change_uhp_sid($uhp , $lx , $this->sid);
    }
    function player_change_umaxhp($umaxhp , $lx ){
        return $this->player_change_game1('umaxhp' , $lx , $umaxhp );
    }

    function player_change_uhp_uid($hp , $lx , $uid){
        $player = $this->player_get_uinfo_uid($uid);
        return $this->player_change_uhp_sid($hp , $lx , $player->sid);
    }

    function player_change_uhp_sid($hp , $lx ,$sid){
        $player = $this->player_get_uinfo_sid($sid);

        if ($lx == 1){

            if ( $player->uhp + $hp > $player->umaxhp){
                return $this->player_re_hp( );
            }

            $sql = "update game1 set uhp = uhp + ? WHERE sid = ? ";
            $data = array($hp ,$sid);

        }else{

            if ($player->uhp - $hp < 0 ){
                return $this->player_clean_hp_sid($sid);
            }

            $sql = "update game1 set uhp = uhp - ? WHERE sid = ? AND uhp >= ? ";
            $data = array($hp , $sid , $hp);
        }

        $stmt = $this->dblj->prepare($sql);
        $ret = $stmt->execute($data);
        return $ret;
    }

    function player_re_hp(){
        return $this->player_re_hp_sid($this->sid);
    }

    function player_re_hp_sid($sid){
        $player = $this->player_get_uinfo_sid($sid);
        return $this->player_update_game1_sid('uhp' , $player->umaxhp , $sid);
    }

    function player_clean_hp( ){
        return $this->player_clean_hp_sid($this->sid );
    }

    function player_clean_hp_sid($sid ){
        return $this->player_update_game1_sid('uhp' , 0 , $sid );
    }

    function player_clean_hp_uid($uid ){
        return $this->player_update_game1_uid('uhp' , 0 , $uid );
    }

    function yp_insert($ypid , $sum  ){

        $yaopin = $this->yp_get_info_sys($ypid );

        $sql = "insert into playeryaopin(ypname, ypid, yphp, ypgj, ypfy, ypxx, ypbj, sid, ypsum, ypjg) VALUES (?,?,?,?,?,?,?,?,?,?) ";

        $stmt = $this->dblj->prepare($sql);
        $data = array($yaopin->ypname , $yaopin->ypid ,$yaopin->yphp , $yaopin->ypgj , $yaopin->ypfy , $yaopin->ypxx, $yaopin->ypbj , $this->sid , $sum , $yaopin->ypjg);
        $ret = $stmt->execute($data);
        return $ret;
    }

    function yp_change($ypid ,$lx ,$sum ){
        $yaopin = $this->yp_get_info($ypid );
        if ($lx == 1){

            if (!$yaopin){
                return $this->yp_insert($ypid , $sum );
            }
            $sql = "update playeryaopin set ypsum = ypsum + ? WHERE ypid = ? AND sid = ?";

        }elseif($yaopin){

            if($yaopin->ypsum < $sum){
                return false;
            }

            $sql = "update playeryaopin set ypsum = ypsum - ? WHERE ypid = ? AND sid = ?";

        }else{
            return false;
        }

        $stmt = $this->dblj->prepare($sql);
        $exeres = $stmt->execute(array($sum , $ypid ,$this->sid));
        return $exeres;
    }

    function yp_delete($ypid,$ypsum){
        return  $this->yp_change($ypid , 2 , $ypsum );
    }

    function yp_add($ypid,$ypsum){
        return  $this->yp_change($ypid , 1 , $ypsum );
    }

    function gw_get_info($gid ){

        $sql = "select * from midguaiwu where id = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($gid));
        $guaiwu = $stmt->fetch(\PDO::FETCH_OBJ);



        if (!$guaiwu){
            return false;
        }
        $yguaiwu = $this->gw_get_info_sys($guaiwu->gyid);
        $guaiwu->gsex = $yguaiwu->gsex;
        $guaiwu->ginfo = $yguaiwu->ginfo;

        $udc_gw_ranges=$this->get_system_config("游戏","怪物层次分级");
        if(empty($udc_gw_ranges)){
            //default
            $ranges_lv = array(0, 30, 50, 70, 80, 90, 100, 110);
        }else{
            $ranges_lv=explode('|', $udc_gw_ranges);
            if(count($ranges_lv)<8){
                //默认30级一个层次
                for ($i=count($ranges_lv); $i < 8; $i++) { 
                    $ranges_lv[]=$ranges_lv[count($ranges_lv)-1]+30;
                }
            }
        }        

        $udc_gw_jj=$this->get_system_config("游戏","怪物层次定义");
        if(!empty($udc_gw_jj)){

            $tmpArr=explode('|', $udc_gw_jj);
            if(count($tmpArr)<8){
                for ($i=count($tmpArr); $i < 8; $i++) { 
                    $tmpArr[]='层次'.$i;
                }
            }
            $层次1 = $tmpArr[0];
            $层次2 = $tmpArr[1];
            $层次3 = $tmpArr[2];
            $层次4 = $tmpArr[3];
            $层次5 = $tmpArr[4];
            $层次6 = $tmpArr[5];
            $层次7 = $tmpArr[6];
            $层次8 = $tmpArr[7];

        }else{
            //default
            $层次1 = $this->get_system_config("游戏","层次1");
            $层次2 = $this->get_system_config("游戏","层次2");
            $层次3 = $this->get_system_config("游戏","层次3");
            $层次4 = $this->get_system_config("游戏","层次4");
            $层次5 = $this->get_system_config("游戏","层次5");
            $层次6 = $this->get_system_config("游戏","层次6");
            $层次7 = $this->get_system_config("游戏","层次7");
            $层次8 = $this->get_system_config("游戏","层次8");
        }        

        $ranges_jj = array($层次1 , $层次2 , $层次3 , $层次4 , $层次5 , $层次6  , $层次7 , $层次8);

        for ( $i=0 ; $i < count($ranges_lv) ; $i++){

            $lv = $ranges_lv[$i];
            $lv1 = $ranges_lv[$i+1];

            if ($guaiwu->glv >= $ranges_lv[$i] && $guaiwu->glv < $ranges_lv[$i+1]){

                $ranges_jd = array('一','二','三','四','五','六','七','八','九','十');
                $djc = $guaiwu->glv - $lv;
                $jds = ($lv1  - $lv )/10;
                $j = (int) floor($djc/$jds);

                $jd = $ranges_jd[$j];
                $guaiwu->jingjie = $ranges_jj[$i].$jd.'层';

                break;
            }
        }

        return $guaiwu;
    }

    function gw_update($ziduan , $change , $gid ){
        $sql = "update midguaiwu set $ziduan = ? WHERE id = ?";
        $stmt = $this->dblj->prepare($sql);
        return $stmt->execute(array($ziduan , $change , $gid));
    }


    function gw_change_hp($hp , $lx , $gid ){
        if ($lx == 1){
            $sql = "update midguaiwu set ghp = ghp + ? WHERE id = ?";
            $stmt = $this->dblj->prepare($sql);
            return $stmt->execute(array($hp , $gid));
        }else{
            $sql = "update midguaiwu set ghp = ghp - ? WHERE id = ? AND ghp > 0 ";
            $stmt = $this->dblj->prepare($sql);
            return $stmt->execute(array($hp , $gid));

        }


    }

    function gw_delete($gid ){;
        $sql = "delete from midguaiwu where id = ?";
        $stmt = $this->dblj->prepare($sql);
        $bool = $stmt->execute(array($gid));
        return $bool;
    }

    function gw_get_info_sys($gid  ){
        $sql = "select * from guaiwu WHERE id = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($gid));
        return $stmt->fetch(\PDO::FETCH_OBJ);

    }

    function gw_get_mid($gid  ){

        $sql = "select * from mid WHERE mgid LIKE ? ";

        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array("%$gid|%"));
        return $stmt->fetchAll(\PDO::FETCH_OBJ);

    }


    function create_pve_info($player , $guaiwu , $phurt , $ghurt ,  $baoji_player , $xx_player , $tishi ,$变量_系统){
        $pgjcmd = $this->create_url("cmd=pve_new&cmd2=ptgj&gid=$guaiwu->id","Tấn công bình thường");

        $pbuff = "";
        $gbuff = "";

        $使用药品1_按钮短 = "";
        $使用药品1_链接 = "";
        $使用药品1_块 = "";
        $使用药品1_按钮长 = "";

        $使用药品2_按钮短 = "";
        $使用药品2_链接 = "";
        $使用药品2_块 = "";
        $使用药品2_按钮长 = "";

        $使用药品3_按钮短 = "";
        $使用药品3_链接 = "";
        $使用药品3_块 = "";
        $使用药品3_按钮长 = "";

        if ($phurt){
            $pbuff = "(-$phurt)";
        }

        if ($ghurt){
            $gbuff = "(-$ghurt)";
        }

        if ($baoji_player){
            $gbuff = "$gbuff(暴击)";
        }

        if ($xx_player){
            $pbuff = "$pbuff(+$xx_player)";
        }

        if($player->yp1){
            $yp1 = $this->yp_get_info($player->yp1 );
            if ($yp1->ypsum > 0){
                $使用药品1_按钮短 = $this->create_url("cmd=pve_new&cmd2=useyp&ypid=$player->yp1&gid=$guaiwu->id","$yp1->ypname",1);
                $使用药品1_链接 = $this->create_url("cmd=pve_new&cmd2=useyp&ypid=$player->yp1&gid=$guaiwu->id","$yp1->ypname",2);
                $使用药品1_块 = $this->create_url("cmd=pve_new&cmd2=useyp&ypid=$player->yp1&gid=$guaiwu->id","$yp1->ypname",3);
                $使用药品1_按钮长 = $this->create_url("cmd=pve_new&cmd2=useyp&ypid=$player->yp1&gid=$guaiwu->id","$yp1->ypname",4);
            }

        }

        if($player->yp2){
            $yp2 = $this->yp_get_info($player->yp2 );
            if ($yp2->ypsum > 0){
                $使用药品2_按钮短 = $this->create_url("cmd=pve_new&cmd2=useyp&ypid=$player->yp2&gid=$guaiwu->id","$yp2->ypname",1);
                $使用药品2_链接 = $this->create_url("cmd=pve_new&cmd2=useyp&ypid=$player->yp2&gid=$guaiwu->id","$yp2->ypname",2);
                $使用药品2_块 = $this->create_url("cmd=pve_new&cmd2=useyp&ypid=$player->yp2&gid=$guaiwu->id","$yp2->ypname",3);
                $使用药品2_按钮长 = $this->create_url("cmd=pve_new&cmd2=useyp&ypid=$player->yp2&gid=$guaiwu->id","$yp2->ypname",4);
            }

        }

        if($player->yp3){
            $yp3 = $this->yp_get_info($player->yp3 );
            if ($yp3->ypsum > 0){
                $使用药品3_按钮短 = $this->create_url("cmd=pve_new&cmd2=useyp&ypid=$player->yp3&gid=$guaiwu->id","$yp3->ypname",1);
                $使用药品3_链接 = $this->create_url("cmd=pve_new&cmd2=useyp&ypid=$player->yp3&gid=$guaiwu->id","$yp3->ypname",2);
                $使用药品3_块 = $this->create_url("cmd=pve_new&cmd2=useyp&ypid=$player->yp3&gid=$guaiwu->id","$yp3->ypname",3);
                $使用药品3_按钮长 = $this->create_url("cmd=pve_new&cmd2=useyp&ypid=$player->yp3&gid=$guaiwu->id","$yp3->ypname",4);
            }

        }


        $变量_打怪界面 = (object)[

            "战斗提示" => $tishi,
            "链接_普通攻击" => $pgjcmd,
            "链接_使用药品1_块" => $使用药品1_块,
            "链接_使用药品1_链接" => $使用药品1_链接,
            "链接_使用药品1_按钮短" => $使用药品1_按钮短,
            "链接_使用药品1_按钮长" => $使用药品1_按钮长,

            "链接_使用药品2_块" => $使用药品2_块,
            "链接_使用药品2_链接" => $使用药品2_链接,
            "链接_使用药品2_按钮短" => $使用药品2_按钮短,
            "链接_使用药品2_按钮长" => $使用药品2_按钮长,

            "链接_使用药品3_块" => $使用药品3_块,
            "链接_使用药品3_链接" => $使用药品3_链接,
            "链接_使用药品3_按钮短" => $使用药品3_按钮短,
            "链接_使用药品3_按钮长" => $使用药品3_按钮长,

            "玩家状态" => $pbuff,
            "怪物状态" => $gbuff
        ];

        $out_html = "";
        $dis_mid = $this->dis_get('排版_打怪界面');
        eval("\$out_html = \"$dis_mid->dis_string\";");
        $out_html = str_replace("<br/><br/>", "<br/>",$out_html);
        $out_html = str_replace("<br/><br/>", "<br/>",$out_html);
        $out_html = str_replace("</div><br/>", "</div>",$out_html);
        $html = $out_html;
        return $html;
    }

    function create_pve_lose($guaiwu ,$变量_系统){
        $this->gw_delete($guaiwu->id );
        $this->player_go_re( );

        $dis_pve = $this->dis_get('排版_pve_失败');
        $out_html = '';
        eval("\$out_html = \"$dis_pve->dis_string\";");
        $out_html = str_replace("<br/><br/>", "<br/>",$out_html);
        $out_html = str_replace("<br/><br/>", "<br/>",$out_html);
        $out_html = str_replace("</div><br/>", "</div>",$out_html);


        return $out_html;
    }

    function create_pve_win($guaiwu ,$变量_系统 ){

        $this->gw_delete($guaiwu->id );
        $yguaiwu = $this->gw_get_info_sys($guaiwu->gyid );

        $yxb = round($guaiwu->glv * 3.9) + 1;
        $this->player_add_exp($guaiwu->gexp);
        $this->yxb_change(1 , $yxb  );

        $sjjv = mt_rand(1,120);
        $zb_all = $this->gw_get_zb_all($yguaiwu->gzb );
        $dl_zb = "" ;
        $dl_dj = "";
        $dl_yp = "";
        $rwts = '';

        if ($yguaiwu->dljv >= $sjjv && $zb_all){

            $sjdl = mt_rand(0,count($zb_all)-1);
            $zb = $zb_all[$sjdl];
            $add_gj = 0;
            $add_fy = 0;
            $add_hp = 0;

            $add_sx_sj = mt_rand(0,2);
            if ( !$add_sx_sj && $zb->zbgj > 0 ){
                $sxsj = mt_rand(1,100);
                if ($sxsj <= 70){
                    $add_gj = mt_rand(1,20);
                    $add_gj = ceil($zb->zbgj * ($add_gj / 100) );
                    $zb->zbname .= "[Tấn công thấp]";
                }elseif ($sxsj <= 95){
                    $add_gj = mt_rand(15,60);
                    $add_gj = ceil($zb->zbgj * ($add_gj / 100) );
                    $zb->zbname .= "[Tấn công]";
                }else{
                    $add_gj = mt_rand(30,100);
                    $add_gj = ceil($zb->zbgj * ($add_gj / 100) );
                    $zb->zbname .= "[Tấn công cao]";
                }
            }



            $add_sx_sj = mt_rand(0,2);
            if ( !$add_sx_sj && $zb->zbfy > 0){
                $sxsj = mt_rand(1,100);
                if ($sxsj <= 70){
                    $add_fy = mt_rand(1,20);
                    $add_fy = ceil($zb->zbfy * ($add_fy / 100) );
                    $zb->zbname .= "[Phòng thủ thấp]";
                }elseif ($sxsj <= 95){
                    $add_fy = mt_rand(15,60);
                    $add_fy = ceil($zb->zbfy * ($add_fy / 100) );
                    $zb->zbname .= "[Phòng thủ]";
                }else{
                    $add_fy = mt_rand(30,100);
                    $add_fy = ceil($zb->zbfy * ($add_fy / 100) );
                    $zb->zbname .= "[Phòng thủ cao]";
                }

            }




            $add_sx_sj = mt_rand(0,2);
            if ( !$add_sx_sj && $zb->zbhp > 0){
                $sxsj = mt_rand(1,100);
                if ($sxsj <= 70){
                    $add_hp = mt_rand(1,20);
                    $add_hp = ceil($zb->zbhp * ($add_hp / 100) );
                    $zb->zbname .= "[Khí huyết thấp]";
                }elseif ($sxsj <= 95){
                    $add_hp = mt_rand(15,60);
                    $add_hp = ceil($zb->zbhp * ($add_hp / 100) );
                    $zb->zbname .= "[Khí huyết]";
                }else{
                    $add_hp = mt_rand(30,100);
                    $add_hp = ceil($zb->zbhp * ($add_hp / 100) );
                    $zb->zbname .= "[Khí huyết cao]";
                }

            }



            $this->zb_add_zhuangbei_add($zb->zbid ,$zb->zbname , $add_gj , $add_fy , 0 , 0 ,$add_hp );
            $dl_zb = "Nhận được: <div class='zbys'>$zb->zbname</></div>";

        }


        $sjjv = mt_rand(1,95);
        $dj_all = $this->gw_get_dj_all($yguaiwu->gdj);

        if ($yguaiwu->djjv >= $sjjv && $dj_all) {

            $s = mt_rand(0, count($dj_all) - 1);
            $dj = $dj_all[$s];
            $djname = $dj->djname;
            $djid = $dj->djid;

            $djsum = mt_rand(1, 2);

            $this->dj_add( $djid , $djsum );
            $rw_dj_wwc_all = $this->rw_get_player_pve_wwc_dj($djid);
            $dl_dj = "Nhận được: <div class='djys'>{$djname}x{$djsum}</div>";
            foreach ($rw_dj_wwc_all as $renwu){
                $rwts .= "Nhiệm vụ: $renwu->rwname($renwu->rwnowcount/$renwu->rwcount)<br/>";
            }
        }

        $sjjv = mt_rand(1,95);
        $yp_all = $this->gw_get_yp_all($yguaiwu->gyp );
        if ($yguaiwu->ypjv >= $sjjv &&  $yp_all){

            $s = mt_rand(0, count($yp_all) - 1);
            $yp = $yp_all[$s];
            $ypsum = mt_rand(1, 2);
            $this->yp_add( $yp->ypid , $ypsum );
            $dl_yp = "Nhận được: <div class='ypys'>{$yp->ypname}x{$ypsum}</div>";
        }

        $ret = $this->rw_update_pve($guaiwu->gyid );
        if ($ret){
            $rw_pve_wwc = $this->rw_get_player_pve_wwc_gid($guaiwu->gyid );
            foreach ($rw_pve_wwc as $renwu){
                $rwts .= "Nhiệm vụ: $renwu->rwname($renwu->rwnowcount/$renwu->rwcount)<br/>";
            }
        }
        $player = $this->player_get_uinfo( );

        $变量_pve_胜利 = (object)[
            "掉落装备" => $dl_zb,
            "掉落道具" => $dl_dj,
            "掉落药品" => $dl_yp,
            "获得经验" => $guaiwu->gexp,
            "获得游戏币" =>$yxb,
            "任务进度" => $rwts
        ];

        $dis_pve = $this->dis_get('排版_pve_胜利');
        $out_html = '';
        eval("\$out_html = \"$dis_pve->dis_string\";");
        $out_html = str_replace("<br/><br/>", "<br/>",$out_html);
        $out_html = str_replace("<br/><br/>", "<br/>",$out_html);
        $out_html = str_replace("</div><br/>", "</div>",$out_html);

        return $out_html;
    }

    function create_pvp_info($player , $pvper  , $ghurt ,  $baoji_player , $xx_player , $tishi , $变量_系统){

        $pgjcmd = $this->create_url("cmd=pvp&cmd2=ptgj&uid=$pvper->uid","攻    击");

        $pbuff = "";
        $gbuff = "";
        $yp_html = "";


        if ($ghurt){
            $gbuff = "(-$ghurt)";
        }

        if ($baoji_player){
            $gbuff = "$gbuff(暴击)";
        }

        if ($xx_player){
            $pbuff = "$pbuff(+$xx_player)";
        }

        if($player->yp1){
            $yp = $this->yp_get_info($player->yp1  );
            $useyp = $this->create_url("cmd=pve_new&cmd2=useyp&ypid=$player->yp1&gid=$pvper->uid",$yp->ypname);
            $yp_html = $useyp;
        }

        if($player->yp2){
            $yp = $this->yp_get_info($player->yp2 );
            $useyp = $this->create_url("cmd=pve_new&cmd2=useyp&ypid=$player->yp2&gid=$pvper->uid",$yp->ypname);

            $yp_html .= $useyp;
        }


        if($player->yp3){
            $yp = $this->yp_get_info($player->yp3 );
            $useyp = $this->create_url("cmd=pve_new&cmd2=useyp&ypid=$player->yp3&uid=$pvper->uid",$yp->ypname);

            $yp_html .= "$useyp";
        }

        $html = "
        ==Chiến đấu==<br/>
        $pvper->uname [lv:$pvper->ulv]<br/>
        Khí huyết(<div class='hpys' style='display: inline'>$pvper->uhp</div>/<div class='hpys' style='display: inline'>$pvper->umaxhp</div>)$gbuff<br/>
        Công kích: ($pvper->ugj)<br/>
        Phòng ngự: :($pvper->ufy)<br/>
        ===================<br/>
        $player->uname [lv:$player->ulv]<br/>
        Khí huyết(<div class='hpys' style='display: inline'>$player->uhp</div>/<div class='hpys' style='display: inline'>$player->umaxhp</div>)$pbuff<br/>
        Công kích: ($player->ugj)<br/>
        Phòng ngự: :($player->ufy)<br/>
        $tishi
        <br/>
        {$pgjcmd}
        <br/>
        $yp_html
        <br/>
        {$变量_系统->链接_返回游戏_按钮短}<br/>";

        return $html;
    }

    function dj_add( $djid , $djsum ){
        return $this->dj_change_sid(1 , $djid , $djsum , $this->sid);
    }

    function dj_sub( $djid , $djsum ){
        return $this->dj_change_sid(2 , $djid , $djsum , $this->sid);
    }

    function dj_change_sid($lx , $djid , $count , $sid){
        $player = $this->player_get_uinfo_sid($sid);
        $dj = $this->dj_get_player_sid($djid , $sid);
        $ret = false;

        if ($dj){
            if ($lx == 1){
                $sql = "update playerdaoju set djsum = djsum + ? where sid = ? and djid = ?";
                $stmt = $this->dblj->prepare($sql);
                $stmt->execute(array($count , $this->sid ,$djid));
                $ret = $stmt->rowCount();
            }else{
                $sql = "update playerdaoju set djsum = djsum - ? where sid = ? and djid = ? AND djsum >= ?";
                $stmt = $this->dblj->prepare($sql);
                $stmt->execute(array($count , $this->sid ,$djid , $count));
                $ret = $stmt->rowCount();
            }


        }elseif($lx == 1){
            $dj = $this->dj_get_sys($djid);
            if ($dj){
                $sql = "insert into playerdaoju(djname,djinfo,djzl,djid,djsum,sid,uid) VALUES (?,?,?,?,?,?,?)";
                $stmt = $this->dblj->prepare($sql);
                $stmt->execute(array($dj->djname , $dj->djinfo , $dj->djzl , $dj->djid , $count , $this->sid , $player->uid));
                $ret = $stmt->rowCount();
            }
        }
        $this->rw_update_dj($djid , $count);
        return $ret;

    }

    function dj_get_sys($djid  ){
        $sql = "select * from daoju where djid = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array( $djid));
        $ret = $stmt->fetch(\PDO::FETCH_OBJ);
        return $ret;
    }

    function dj_get_all_player_sid($sid){
        $sql = "select * from playerdaoju where sid = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array( $sid));
        $ret = $stmt->fetchAll(\PDO::FETCH_OBJ);
        return $ret;
    }

    function dj_get_all_player(){
        return $this->dj_get_all_player_sid($this->sid);
    }

    function dj_get_player($djid ){
        return $this->dj_get_player_sid($djid , $this->sid);
    }

    function dj_get_player_sid($djid , $sid){
        $sql = "select * from playerdaoju where sid = ? and djid = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($sid , $djid));
        $ret = $stmt->fetch(\PDO::FETCH_OBJ);
        return $ret;
    }

    function dj_delete($djid ,$num){
        $sql = "update playerdaoju set djsum = djsum - ? where sid = ? and djid = ? AND djsum >= ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($num , $this->sid , $djid , $num));
        $ret = $stmt->rowCount();
        return $ret;
    }

    function gw_get_dj_all($gdj ){
        if (!$gdj){
            return false;
        }
        $sql = "select * from daoju WHERE djid in ($gdj)";
        $query = $this->dblj->query($sql);
        $ret = $query->fetchAll(\PDO::FETCH_OBJ);
        return $ret;
    }

    function gw_get_yp_all($gyp ){
        if (!$gyp){
            return false;
        }
        $sql = "select * from yaopin WHERE ypid in ($gyp)";
        $cxdljg = $this->dblj->query($sql);
        $ret = $cxdljg->fetchAll(\PDO::FETCH_OBJ);
        return $ret;
    }

    function create_pve_not($系统变量){

        $html = "
        Quái vật đã bị những người khác công kích!<br/>
        Mời Thiếu Hiệp luyện tập một cái tốc độ tay nha! !
        <br/>
        {$系统变量->链接_返回游戏_按钮短}";

        return $html;
    }

    function create_pve_cannot($系统变量){

        $this->player_go_re();

        $html = "
       <div class='tishi'>Trọng thương mời trị liệu!</div><br/>
        Hiệp Sĩ đã trọng thương
        <br/>
        {$系统变量->链接_返回游戏_按钮短}";

        return $html;
    }

    function gw_get_zb_all($gzb  ){
        if (!$gzb){
            return false;
        }
        $sql = "select * from zhuangbei WHERE zbid in ( $gzb )";
        $stmt = $this->dblj->query($sql);
        $zb_all = $stmt->fetchAll(\PDO::FETCH_OBJ);
        return $zb_all;
    }

    function zb_add_info($zbname , $zbinfo , $zbgj , $zbfy , $zbbj , $zbxx , $zbid , $zbhp , $qianghua , $zblv , $zbtool ){
        $sql = "insert into playerzhuangbei(zbname, zbinfo, zbgj, zbfy, zbbj, zbxx, zbid, uid, sid, zbhp, qianghua, zblv, zbtool) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
        $stmt = $this->dblj->prepare($sql);
        $data = array($zbname , $zbinfo , $zbgj , $zbfy , $zbbj , $zbxx ,$zbid , $this->uid , $this->sid , $zbhp , $qianghua , $zblv , $zbtool);
        return $stmt->execute($data);
    }

    function zb_add_zhuangbei($zbid ){
        $zb = $this->zb_get_info_sys($zbid);
        return $this->zb_add_info( $zb->zbname , $zb->zbinfo , $zb->zbgj , $zb->zbfy , $zb->zbbj , $zb->zbxx , $zbid , $zb->zbhp , 0 , $zb->zblv , $zb->zbtool  );
    }

    function zb_add_zhuangbei_add($zbid , $zbname , $zbgj, $zbfy , $zbbj , $zbxx , $zbhp ){
        $zb = $this->zb_get_info_sys($zbid );
        return $this->zb_add_info( $zbname , $zb->zbinfo , $zb->zbgj + $zbgj , $zb->zbfy + $zbfy , $zb->zbbj + $zbbj , $zb->zbxx + $zbxx , $zbid , $zb->zbhp + $zbhp , 0 , $zb->zblv , $zb->zbtool  );
    }
    function zb_sx_add($ziduan , $gaibian , $zbnowid){
        return $this->zb_sx_add_sid($ziduan , $gaibian , $zbnowid , $this->sid);
    }

    function zb_sx_add_sid($ziduan , $gaibian , $zbnowid , $sid){
        $sql = "update playerzhuangbei set $ziduan = $ziduan + ? WHERE zbnowid = ? AND sid = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($gaibian , $zbnowid , $sid));
        return $stmt->rowCount();
    }

    function zb_sx_up($zbnowid , $upsx){
        $zb = $this->zb_get_info_player($zbnowid );
        $djsum = $zb->qianghua * $zb->qianghua + $zb->qianghua +  1;

        $djid = (int)$this->get_system_config("游戏","强化道具");
        $ret = $this->dj_sub( $djid , $djsum );

        if ($ret){
            $upint = round( $zb->$upsx * 0.17 );
            if ($upint<1){
                $upint = 1;
            }

            $sjs = mt_rand(1,$zb->qianghua * 2 + 2 );
            if ($sjs <= $zb->qianghua){
                return 0;//失败
            }

            $sjs = mt_rand($zb->qianghua ,$zb->qianghua * $zb->qianghua);
            if ($sjs <= $zb->qianghua * 2){
                $this->zb_sx_add($upsx , $upint , $zbnowid);
                $this->zb_sx_add('qianghua' , 1 , $zbnowid);
                return 1;
            }else{
                return 0;//失败
            }
        }else{
            return -1;//不足
        }
    }

    function zb_get_info_sys($zbid ){
        $sql = "select * from zhuangbei WHERE zbid = ? ";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($zbid));
        return $stmt->fetch(\PDO::FETCH_OBJ);

    }

    function zb_get_info_player($zbid){
        return $this->zb_get_info_player_sid($zbid , $this->sid);
    }

    function zb_get_info_player_sid($zbid , $sid){
        $sql = "select * from playerzhuangbei WHERE zbnowid = ? AND sid = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($zbid , $sid));
        return $stmt->fetch(\PDO::FETCH_OBJ);
    }

    function zb_get_info($zbid ){
        $sql = "select * from playerzhuangbei WHERE zbnowid = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($zbid));
        return $stmt->fetch(\PDO::FETCH_OBJ);
    }

    function zb_get_info_rw_all($rwid ){
        $task = $this->rw_get_sys($rwid);
        $sql = "select * from zhuangbei where zbid IN (?)";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($task->rwzb));
        return $stmt->fetchAll(\PDO::FETCH_OBJ);

    }

    function zb_update_user($zbnowid){
        return $this->zb_update_user_sid($this->sid  , $this->uid , $zbnowid);
    }

    function zb_update_user_sid($sid , $uid , $zbnowid){
        $sql = "update `playerzhuangbei` set sid = ?,uid = ? WHERE zbnowid = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($sid , $uid , $zbnowid));
        return $stmt->rowCount();
    }

    function player_lv_add(){//强制升级 无视突破
        $player = $this->player_get_uinfo();

        $sql = "update game1 set uexp = uexp - ? where sid = ? AND uexp >= ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute( array( $player->umaxexp , $this->sid , $player->umaxexp) );

        $r_lv = array(1, 30, 50, 70, 80, 90, 100, 110);
        $r_gj = array(2.5, 5, 7.5, 10, 12.5, 15, 17.5);
        $r_fy = array(2.5, 5, 7.5, 10, 12.5, 15, 17.5);
        $r_hp = array(30, 50, 70, 90, 110, 130, 170);
        $playernextlv = $player->ulv + 1;

        for ( $i=0 ; $i<count($r_lv) - 1 ; $i++){
            $lv1 = $r_lv[$i];
            $lv2 = $r_lv[$i + 1];

            if ($playernextlv >= $lv1 && $playernextlv < $lv2 ){

                $sql = "update game1 set ulv = ulv + 1,
                                           umaxhp = umaxhp + $r_hp[$i],
                                           ugj = ugj + $r_gj[$i],
                                           ufy = ufy + $r_fy[$i]
                                           where sid = ?";
                $stmt = $this->dblj->prepare($sql);
                return $stmt->execute( array( $this->sid) );

            }
        }

        return false;
    }

    function plauer_lv_up(){

        $ret = $this->player_is_tupo();

        if ( $ret){
            return false;
        }
        return $this->player_lv_add();
    }

    function player_is_tupo(){
        $player = $this->player_get_uinfo();

        $r_lv = array(0, 30, 50, 70, 80, 90, 100, 110);
        $playernextlv = $player->ulv + 1;

        $层次1 = $this->get_system_config("游戏","层次1");
        $层次2 = $this->get_system_config("游戏","层次2");
        $层次3 = $this->get_system_config("游戏","层次3");
        $层次4 = $this->get_system_config("游戏","层次4");
        $层次5 = $this->get_system_config("游戏","层次5");
        $层次6 = $this->get_system_config("游戏","层次6");
        $层次7 = $this->get_system_config("游戏","层次7");
        $层次8 = $this->get_system_config("游戏","层次8");

        $r_jj = array($层次1 , $层次2 , $层次3 , $层次4 , $层次5 , $层次6  , $层次7 , $层次8);

        for ( $i=0 ; $i < count($r_lv) ; $i++){
            if ($playernextlv >= $r_lv[$i] && $playernextlv < $r_lv[$i+1]){

                if($player->jingjie !=  $r_jj[$i]){
                    return 1;//阶段突破
                }

                $rangesjd = array('一','二','三','四','五','六','七','八','九','十');
                $djc = $playernextlv - $r_lv[$i];
                $jds = ($r_lv[$i+1]-$r_lv[$i])/10;
                $jieduan = (int)floor($djc/$jds);
                $jd = $rangesjd[$jieduan];

                if($player->cengci != $jd.'层'){
                    return 2;//层次突破
                }
                return 0;
            }
        }

        return 0;
    }

    function rw_player_get_all(){
        $sql = "select * from playerrenwu WHERE sid = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($this->sid));
        $task = $stmt->fetchAll(\PDO::FETCH_OBJ);
        return $task;
    }

    function rw_player_date_get_all(){
        $sql = "select * from playerrenwu WHERE sid = ? AND rwlx = 2";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($this->sid));
        $task = $stmt->fetchAll(\PDO::FETCH_OBJ);
        return $task;
    }

    function rw_player_delete( $rwid ){
        $sql = "delete from playerrenwu WHERE sid = ? AND rwid = ?";
        $stmt = $this->dblj->prepare($sql);
        $bool = $stmt->execute(array($this->sid , $rwid));
        return $bool;
    }

    function rw_get_player_wwc(){
        $sql = "select * from playerrenwu WHERE sid = ? AND rwzt != 3";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($this->sid));
        $task = $stmt->fetchAll(\PDO::FETCH_OBJ);
        return $task;
    }

    function rw_get_player_pve_wwc_gid($gid ){
        $sql = "select * from playerrenwu WHERE sid = ? AND rwzl = 2 AND rwzt != 3 AND rwyq = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($this->sid , $gid));
        $task = $stmt->fetchAll(\PDO::FETCH_OBJ);
        return $task;
    }

    function rw_get_player_pve_wwc_dj($djid ){
        $sql = "select * from playerrenwu WHERE sid = ? AND rwzl = 1 AND rwzt != 3 AND rwyq = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($this->sid , $djid));
        $task = $stmt->fetchAll(\PDO::FETCH_OBJ);
        return $task;
    }

    function rw_player_get_info($rwid ){
        $sql = "select * from playerrenwu WHERE sid = ? AND rwid = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($this->sid , $rwid));
        $renwu = $stmt->fetch(\PDO::FETCH_OBJ);
        return $renwu;

    }

    function rw_update_pve($gid ){
        $bool = $this->rw_update_pve_sid($gid , $this->sid);
        return $bool;
    }

    function rw_update_pve_sid($gid , $sid){
        $bool = $this->rw_update_sid(2 ,$gid , 1 , $sid);
        return $bool;
    }

    function rw_update_dj($djid , $count){
        $bool = $this->rw_update_dj_sid($djid , $count , $this->sid);
        return $bool;
    }

    function rw_update_dj_sid($djid , $count , $sid){
        $bool = $this->rw_update_sid(1 , $djid , $count , $sid);
        return $bool;
    }

//    function rw_update($rwzl , $rwyq , $rwcount){
//        return $this->rw_update_sid($rwzl , $rwyq , $rwcount , $this->sid);
//    }

    function rw_update_sid($rwzl , $rwyq ,$rwcount , $sid){

        switch ($rwzl){
            case 2;
                $sql = "update playerrenwu set rwnowcount = rwnowcount + ? WHERE sid = ? AND rwyq = ? AND rwzl = ? AND rwzt = 1";
                $stmt = $this->dblj->prepare($sql);
                $bool = $stmt->execute(array($rwcount ,$sid , $rwyq , $rwzl));
                break;
            case 1:
                $sql = "update playerrenwu set rwnowcount = rwnowcount + ? WHERE sid = ? AND rwyq = ? AND rwzl = ? AND rwzt = 1";
                $stmt = $this->dblj->prepare($sql);
                $bool = $stmt->execute(array($rwcount ,$sid , $rwyq , $rwzl));
                break;
            default:
                $bool = false;
        }
        $this->rw_update_rwzt();
        return $bool;
    }

    function rw_update_rwzt(){
        $sql = "update playerrenwu set rwzt = 2 WHERE sid = ? AND rwnowcount >= rwcount AND rwzt = 1";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($this->sid ));
        $bool = $stmt->rowCount();
        return $bool;
    }

    function rw_update_rwzt_rwid($rwid , $rwzt){
        $sql = "update playerrenwu set rwzt = ? WHERE sid = ? AND rwnowcount >= rwcount AND rwid = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($rwzt , $this->sid , $rwid ));
        $bool = $stmt->rowCount();
        return $bool;
    }

    function rw_insert_player( $rwname , $rwzl , $rwdj , $rwzb , $rwexp , $rwyxb , $rwzt , $rwid , $rwyq , $rwcount ,$rwnowcount , $rwlx , $rwyp , $data , $chufa , $tijiao){

        $sql = "insert into playerrenwu(rwname , rwzl , rwdj , rwzb , rwexp , rwyxb , sid , rwzt , rwid , rwyq , rwcount ,rwnowcount , rwlx , rwyp , `data`,`chufa` , `tijiao`) 
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? , ? , ? ,? , ? ,?,?)";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($rwname, $rwzl, $rwdj, $rwzb, $rwexp, $rwyxb, $this->sid, $rwzt, $rwid, $rwyq, $rwcount ,$rwnowcount , $rwlx ,$rwyp , $data,$chufa , $tijiao));
        $ret = $stmt->rowCount();
        if ($rwzl == 1){
            $this->rw_update_dj($rwyp , $rwnowcount);
        }
        return $ret;
    }

    function rw_insert_player_rwid( $rwid){
        $task = $this->rw_get_sys($rwid);
        $day = date('d');
        $task->rwnowcount = 0;
        $task->rwzt = 1;
        if ($task->rwzl == 3 ){
            $task->rwnowcount = $task->rwcount;
            $task->rwzt = 2;
        }
        $bool = $this->rw_insert_player($task->rwname , $task->rwzl , $task->rwdj , $task->rwzb , $task->rwexp , $task->rwyxb , '1' , $task->rwid , $task->rwyq , $task->rwcount , $task->rwnowcount , $task->rwlx ,$task->rwyp, $day,$task->chufa,$task->tijiao);
        return $bool;
    }

    function rw_com( $rwid){
        $task  = $this->rw_player_get_info($rwid);
        if ($task->rwzl == 1){
            $daoju = $this->dj_get_player( $task->rwyq );
            if (!$daoju){
                $bool = false;

            }else{
                $ret = $this->dj_sub($daoju->djid , $task->rwcount);
                if ($ret){
                    $bool = $this->rw_update_rwzt_rwid($rwid , 3);
                }else{
                    $bool = false;
                }

            }

        }else{
            $bool = $this->rw_update_rwzt_rwid($rwid , 3);
        }

        return $bool;
    }

    function mid_get_npc($mnpc ){
        $sql = "select * from npc where id in ($mnpc)";//获取地图npc
        $cxjg = $this->dblj->query($sql);
        $cxnpcall = $cxjg->fetchAll(\PDO::FETCH_OBJ);
        return $cxnpcall;
    }

    function npc_get_info($nid){
        $sql = "select * from npc where id = ?";//获取npc
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($nid));
        $npc = $stmt->fetch(\PDO::FETCH_OBJ);
        return $npc;
    }

    function mid_get_out_mup($map,$type){//获取出口链接 上 1按钮短 ，2链接  3块  4按钮长
        $outhtml = "";
        if ($map->mup){
            $m_mid = $map->mup;
            $m_midinfo = $this->mid_get_info($m_mid);
            $murl = $this->create_url("cmd=mid&cmd2=gomid&gomid=$m_mid","{$m_midinfo->mname}↑",$type);
            $outhtml = $murl;
        }
        return $outhtml;
    }

    function mid_get_out_mdown($map,$type){//获取出口链接 下
        $outhtml = "";
        if ($map->mdown){
            $m_mid = $map->mdown;
            $m_midinfo = $this->mid_get_info($m_mid);
            $murl = $this->create_url("cmd=mid&cmd2=gomid&gomid=$m_mid","{$m_midinfo->mname}↓",$type);
            $outhtml = $murl;
        }
        return $outhtml;
    }

    function mid_get_out_mleft($map,$type){//获取出口链接 左
        $outhtml = "";
        if ($map->mleft){
            $m_mid = $map->mleft;
            $m_midinfo = $this->mid_get_info($m_mid);
            $murl = $this->create_url("cmd=mid&cmd2=gomid&gomid=$m_mid","{$m_midinfo->mname}←");
            $outhtml = $murl;
        }
        return $outhtml;
    }

    function mid_get_out_mright($map,$type){//获取出口链接 右
        $outhtml = "";
        if ($map->mright){
            $m_mid = $map->mright;
            $m_midinfo = $this->mid_get_info($m_mid);
            $murl = $this->create_url("cmd=mid&cmd2=gomid&gomid=$m_mid","{$m_midinfo->mname}→",$type);
            $outhtml = $murl;
        }
        return $outhtml;
    }


    function mid_get_out($map){//获取出口链接 集合
        $outhtml = '';

        if ($map->mup){
            $m_mid = $map->mup;
            $m_midinfo = $this->mid_get_info($m_mid);
            $murl = $this->create_url("cmd=mid&cmd2=gomid&gomid=$m_mid","{$m_midinfo->mname}↑");
            $outhtml .= "$murl<br/>";

        }

        if ($map->mleft){
            $m_mid = $map->mleft;
            $m_midinfo = $this->mid_get_info($m_mid);
            $murl = $this->create_url("cmd=mid&cmd2=gomid&gomid=$m_mid","{$m_midinfo->mname}←");
            $outhtml .= "$murl<br/>";
        }

        if ($map->mdown){
            $m_mid = $map->mdown;
            $m_midinfo = $this->mid_get_info($m_mid);
            $murl = $this->create_url("cmd=mid&cmd2=gomid&gomid=$m_mid","{$m_midinfo->mname}↓");
            $outhtml .= "$murl<br/>";

        }

        if ($map->mright){
            $m_mid = $map->mright;
            $m_midinfo = $this->mid_get_info($m_mid);
            $murl = $this->create_url("cmd=mid&cmd2=gomid&gomid=$m_mid","{$m_midinfo->mname}→");
            $outhtml .= "$murl<br/>";
        }

        return $outhtml;
    }

    function mid_get_qy_all(){//获取所以区域 中国 源 码 网 、、 ww w . zg y mw.com
        $sql = "select * from `qy`";
        $cxjg = $this->dblj->query($sql);
        $ret = $cxjg->fetchAll(\PDO::FETCH_OBJ);
        return $ret;
    }

    function player_tool_update($tool , $zbid){
        $ret = $this->player_update_game1("tool{$tool}" , $zbid);
        return $ret;
    }

    function player_tool_xzzb($tool){
        return $this->player_tool_update($tool , 0);
    }

    function player_tool_setzb($zbid , $tool){

        $player = $this->player_get_uinfo();
        $arr = array($player->tool1,$player->tool2,$player->tool3,$player->tool4,$player->tool5,$player->tool6);
        $ret = "Đã trang bị qua nên trang bị<br/>";
        if (!in_array($zbid,$arr)){
            $nowzb = $this->zb_get($zbid);

            if ($nowzb->uid != $player->uid){
                $ret = "Ngươi không có nên trang bị, không cách nào trang bị<br/>";

            }elseif($nowzb->zblv - $player->ulv > 5){
                $ret = "Trang bị lớn hơn người chơi đẳng cấp, không cách nào trang bị<br/>";

            }elseif($nowzb->zbtool != $tool && $nowzb->zbtool){
                $ret =  "Trang bị chủng loại không phù hợp, không cách nào trang bị<br/>";

            }else{
                $ret = $this->player_update_game1("tool{$tool}" , $zbid);

                if ($ret){
                    $ret =  "Trang bị thành công<br/>";
                }else{
                    $ret =  "Trang bị thất bại, không biết nguyên nhân<br/>";
                }
            }

        }
        return $ret;
    }

    function rw_get_sys($rwid){
        $sql = "select * from renwu WHERE rwid = ? ";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($rwid));
        $task = $stmt->fetch(\PDO::FETCH_OBJ);
        return $task;
    }

    function im_is($uid){
        $sql="select imuid from im WHERE imuid = ? AND sid = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($uid , $this->sid));
        $row = $stmt->rowCount();
        return $row;
    }

    function im_add($imuid){
        $sql = "insert into `im`(imuid, sid, uid) VALUES (?,?,?)";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($imuid ,$this->sid, $this->uid ));
        return $stmt->rowCount();
    }

    function dh_get_info($dhm){
        $sql = "select * from duihuan WHERE dhm = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($dhm));
        $ret = $stmt->fetch(\PDO::FETCH_OBJ);
        return $ret;
    }

    function dh_delete($dhm){
        $sql = "delete from duihuan WHERE dhm = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($dhm));
        $ret = $stmt->rowCount();
        return $ret;
    }

    function paihang_get(){
        $sql = 'SELECT * FROM game1 ORDER BY ulv DESC,uexp ASC LIMIT 10';//列表获取
        $stmt = $this->dblj->query($sql);
        return $stmt->fetchAll(\PDO::FETCH_OBJ);
    }

    function fangshi_add_zhuangbei_sid($zbnowid , $sid){
        $zb = $this->zb_get_info_player($zbnowid);
        $sql = 'insert into fangshi_zb(zbnowid, zbname, qianghua, pay, payid, zbinfo, zbgj, zbfy, zbbj, zbxx, zbid, uid, sid, zbhp, zblv) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)';
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($zb->zbnowid ,$zb->zbname , $zb->qianghua , $zb->payid ,  ));
    }

    function fangshi_get_daoju($payid){
        $sql = "select * from `fangshi_dj` WHERE payid = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($payid));
        $dj = $stmt->fetch(\PDO::FETCH_OBJ);
        return $dj;
    }

    function fangshi_get_zhuangbei($zbnowid){

        $sql = "select * from `fangshi_zb` WHERE zbnowid = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($zbnowid));
        $zb = $stmt->fetch(\PDO::FETCH_ASSOC);
        return $zb;
    }

    function fangshi_update_daoju( $payid , $buycount ){

        $sql = "update `fangshi_dj` set djcount = djcount - ? WHERE djcount >= ? and payid = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($buycount , $buycount , $payid));
        $row = $stmt->rowCount();
        return $row;
    }

    function fangshi_get_daoju_all(){
        $sql = "select * from `fangshi_dj`";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute();
        $dj = $stmt->fetchAll(\PDO::FETCH_OBJ);
        return $dj;
    }

    function fangshi_get_zhuangbei_all(){
        $sql = "select * from `fangshi_zb`";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute();
        $zb = $stmt->fetchAll(\PDO::FETCH_OBJ);
        return $zb;
    }

    function fangshi_delete_daoju_all(){
        $sql="delete from `fangshi_dj` where djcount = 0";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute();
        return $stmt->rowCount();
    }

    function fangshi_delete_zhuangbei($zbnowid){
        $sql = "delete from `fangshi_zb` WHERE zbnowid = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($zbnowid));
        return $stmt->rowCount();
    }

    function math_get($math_type,$math_name){
        $sql = "select * from `math` WHERE math_type = ? AND math_name = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($math_type,$math_name));
        $math = $stmt->fetch(\PDO::FETCH_OBJ);
        return $math;

    }

    function dis_get($dis_name){
        $sql = "select * from `dis` WHERE dis_name = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute(array($dis_name));
        $dis = $stmt->fetch(\PDO::FETCH_OBJ);
        return $dis;
    }

    function math_get_all(){
        $sql = "select * from `math`";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute();
        $math = $stmt->fetchAll(\PDO::FETCH_OBJ);
        return $math;

    }

    function dis_get_all(){
        $sql = "select * from `dis`";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute();
        $dis = $stmt->fetchAll(\PDO::FETCH_OBJ);
        return $dis;
    }

    function liandan_get_all(){
        $sql = "select * from `炼丹`";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute();
        $dis = $stmt->fetchAll(\PDO::FETCH_OBJ);
        return $dis;
    }

    function liandan_get_id($id){
        $sql = "select * from `炼丹` where id = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute([$id]);
        $dis = $stmt->fetch(\PDO::FETCH_OBJ);
        return $dis;
    }

    function jn_get_all(){
        $sql = "select * from jineng ";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute();
        $retjn = $stmt->fetchAll(\PDO::FETCH_OBJ);
        return $retjn;
    }

    function jn_get($jnid){
        $sql = "select * from jineng WHERE jnid = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute([$jnid]);
        $retjn = $stmt->fetch(\PDO::FETCH_OBJ);
        return $retjn;
    }

    function jn_get_all_player(){
        $sql = "select * from playerjineng WHERE sid = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute([$this->sid]);
        $retjn = $stmt->fetchAll(\PDO::FETCH_OBJ);
        return $retjn;
    }

    function jn_get_player($jnid){
        $retjn = $this->jn_get_player_sid($jnid , $this->sid);
        return $retjn;
    }

    function jn_get_player_sid($jnid , $sid){
        $sql = "select * from playerjineng WHERE sid = ? and jnid = ?";
        $stmt = $this->dblj->prepare($sql);
        $stmt->execute([$sid , $jnid]);
        $retjn = $stmt->fetch(\PDO::FETCH_OBJ);
        return $retjn;
    }

    function jn_add($jnid , $jncount){
        return $this->jn_add_sid($jnid , $jncount , $this->sid);
    }

    function jn_add_sid($jnid , $jncount , $sid){
        $jineng = $this->jn_get( $jnid );
        $ret = $this->jn_get_player_sid($jnid , $sid);

        if ($ret){
            $sql = "update `playerjineng` set jncount = jncount + ? WHERE jnid = ? AND sid= ?";
            $stmt = $this->dblj->prepare($sql);
            $stmt->execute([$jncount , $jnid , $sid]);
        }else{
            $sql = "insert into `playerjineng`(jnname,jnid,jngj,jnfy,jnbj,jnxx,sid,jncount) VALUES ( ? , ? , ? , ? , ? , ? , ? , ?)";
            $stmt = $this->dblj->prepare($sql);
            $stmt->execute([$jineng->jnname , $jineng->jnid , $jineng->jngj , $jineng->jnfy , $jineng->jnbj , $jineng->jnxx , $sid , $jncount]);
        }
        return $stmt->rowCount();

    }

}

