<?php
namespace player;
require_once $_SERVER['DOCUMENT_ROOT'] . "/rules/upgrade.php";
require_once $_SERVER['DOCUMENT_ROOT'] . "/figure/constant.php";

class player
{
    var $uname;//nick
    var $uid;
    var $sid;//sid
    var $ulv;//lv
    var $uyxb;//tiền tệ trò chơi
    var $uczb;// nap tien tệ
    var $uexp;//exp
    var $umaxexp;//giới hạn kinh nghiệm
    var $uhp;//hp
    var $umaxhp;// gioi han hp
    var $ugj;//tấn công
    var $ufy;//phòng thủ
    var $ubj;//chí mạng
    var $uxx;//hút máu
    var $uwx;//năm yêu tô
    var $usex;//giới tính
    var $vip;//vip
    var $nowmid;//当前地图
    var $endtime;
    var $tool1;
    var $tool2;
    var $tool3;
    var $tool4;
    var $tool5;
    var $tool6;
    var $jingjie;
    var $sfxl;
    var $sfzx;
    var $xiuliantime;
    var $yp1;
    var $yp2;
    var $yp3;
    var $cw;
    var $jn1;
    var $jn2;
    var $jn3;
    var $ispvp;
    var $cengci;
    var $class;
    var $className;
    var $perViolentDamage;
    var $take_resource_time;
    var $take_resource_mid;
}

function getplayer($sid, $dblj)
{
    $player = new player();
    $sql = "select * from game1 where sid='$sid'";
    $cxjg = $dblj->query($sql);
    $cxjg->bindColumn('uname', $player->uname);
    $cxjg->bindColumn('sid', $player->sid);
    $cxjg->bindColumn('uid', $player->uid);
    $cxjg->bindColumn('ulv', $player->ulv);
    $cxjg->bindColumn('uyxb', $player->uyxb);
    $cxjg->bindColumn('uczb', $player->uczb);
    $cxjg->bindColumn('uexp', $player->uexp);
    $cxjg->bindColumn('uhp', $player->uhp);
    $cxjg->bindColumn('umaxhp', $player->umaxhp);
    $cxjg->bindColumn('ugj', $player->ugj);
    $cxjg->bindColumn('ufy', $player->ufy);
    $cxjg->bindColumn('ubj', $player->ubj);
    $cxjg->bindColumn('uxx', $player->uxx);
    $cxjg->bindColumn('uwx', $player->uwx);
    $cxjg->bindColumn('usex', $player->usex);
    $cxjg->bindColumn('vip', $player->vip);
    $cxjg->bindColumn('nowmid', $player->nowmid);
    $cxjg->bindColumn('endtime', $player->endtime);
    $cxjg->bindColumn('tool1', $player->tool1);
    $cxjg->bindColumn('tool2', $player->tool2);
    $cxjg->bindColumn('tool3', $player->tool3);
    $cxjg->bindColumn('tool4', $player->tool4);
    $cxjg->bindColumn('tool5', $player->tool5);
    $cxjg->bindColumn('tool6', $player->tool6);
    $cxjg->bindColumn('sfxl', $player->sfxl);
    $cxjg->bindColumn('xiuliantime', $player->xiuliantime);
    $cxjg->bindColumn('yp1', $player->yp1);
    $cxjg->bindColumn('yp2', $player->yp2);
    $cxjg->bindColumn('yp3', $player->yp3);
    $cxjg->bindColumn('jn1', $player->jn1);
    $cxjg->bindColumn('jn2', $player->jn2);
    $cxjg->bindColumn('jn3', $player->jn3);
    $cxjg->bindColumn('cw', $player->cw);
    $cxjg->bindColumn('sfzx', $player->sfzx);
    $cxjg->bindColumn('ispvp', $player->ispvp);
    $cxjg->bindColumn('class', $player->class);
    $cxjg->bindColumn('take_resource_time', $player->take_resource_time);
    $cxjg->bindColumn('take_resource_mid', $player->take_resource_mid);
    $cxjg->fetch(\PDO::FETCH_ASSOC);

//    'perDamage' => 5,
//        'perViolentDamage' => 0,
//        'perVitality' => 5,
//        'perDefense' => 5
//
//        ugj -> damage
//        ufy -> defense
//        ubj -> bao kich
//        Umaxhp -> hp
//        uxx -> hut mau

    if ($player->class == \figure_constant\constant::$TU_MA) {
        $perDamage = \figure_constant\constant::$TU_MA_ATTRIBUTE['perDamage'];
        $perViolentDamage = \figure_constant\constant::$TU_MA_ATTRIBUTE['perViolentDamage'];
        $perVitality = \figure_constant\constant::$TU_MA_ATTRIBUTE['perVitality'];
        $perDefense = \figure_constant\constant::$TU_MA_ATTRIBUTE['perDefense'];

        $damagePlus = ($player->ugj * $perDamage) / 100;
        $player->ugj = $player->ugj + $damagePlus;

        $defensePlus = ($player->ufy * $perDefense) / 100;
        $player->ufy = $player->ufy + $defensePlus;

        $vitalityPlus = ($player->umaxhp * $perVitality) / 100;
        $player->umaxhp = $player->umaxhp + $vitalityPlus;

        $player->perViolentDamage = \figure_constant\constant::$PER_VIOLENT_DAMAGE_DEFAULT + $perViolentDamage;
        $player->className = 'Tu ma';
    }

    if ($player->class == \figure_constant\constant::$NHAN_TOC) {
        $perDamage = \figure_constant\constant::$TU_NHAN_TOC_ATTRIBUTE['perDamage'];
        $perViolentDamage = \figure_constant\constant::$TU_NHAN_TOC_ATTRIBUTE['perViolentDamage'];
        $perVitality = \figure_constant\constant::$TU_NHAN_TOC_ATTRIBUTE['perVitality'];
        $perDefense = \figure_constant\constant::$TU_NHAN_TOC_ATTRIBUTE['perDefense'];

        $damagePlus = ($player->ugj * $perDamage) / 100;
        $player->ugj = $player->ugj + $damagePlus;

        $defensePlus = ($player->ufy * $perDefense) / 100;
        $player->ufy = $player->ufy + $defensePlus;

        $vitalityPlus = ($player->ufumaxhpy * $perVitality) / 100;
        $player->umaxhp = $player->umaxhp + $vitalityPlus;

        $player->perViolentDamage = \figure_constant\constant::$PER_VIOLENT_DAMAGE_DEFAULT + $perViolentDamage;
        $player->className = 'Nhân tộc';
    }

    if ($player->class == \figure_constant\constant::$TU_TIEN) {
        $perDamage = \figure_constant\constant::$TU_TIEN_ATTRIBUTE['perDamage'];
        $perViolentDamage = \figure_constant\constant::$TU_TIEN_ATTRIBUTE['perViolentDamage'];
        $perVitality = \figure_constant\constant::$TU_TIEN_ATTRIBUTE['perVitality'];
        $perDefense = \figure_constant\constant::$TU_TIEN_ATTRIBUTE['perDefense'];

        $damagePlus = ($player->ugj * $perDamage) / 100;
        $player->ugj = $player->ugj + $damagePlus;

        $defensePlus = ($player->ufy * $perDefense) / 100;
        $player->ufy = $player->ufy + $defensePlus;

        $vitalityPlus = ($player->umaxhp * $perVitality) / 100;
        $player->umaxhp = $player->umaxhp + $vitalityPlus;

        $player->perViolentDamage = \figure_constant\constant::$PER_VIOLENT_DAMAGE_DEFAULT + $perViolentDamage;
        $player->className = 'Tu tiên';
    }

    if ($player->class == \figure_constant\constant::$TU_YEU) {
        $perDamage = \figure_constant\constant::$TU_YEU_ATTRIBUTE['perDamage'];
        $perViolentDamage = \figure_constant\constant::$TU_YEU_ATTRIBUTE['perViolentDamage'];
        $perVitality = \figure_constant\constant::$TU_YEU_ATTRIBUTE['perVitality'];
        $perDefense = \figure_constant\constant::$TU_YEU_ATTRIBUTE['perDefense'];

        $damagePlus = ($player->ugj * $perDamage) / 100;
        $player->ugj = $player->ugj + $damagePlus;

        $defensePlus = ($player->ufy * $perDefense) / 100;
        $player->ufy = $player->ufy + $defensePlus;

        $vitalityPlus = ($player->umaxhp * $perVitality) / 100;
        $player->umaxhp = $player->umaxhp + $vitalityPlus;

        $player->perViolentDamage = \figure_constant\constant::$PER_VIOLENT_DAMAGE_DEFAULT + $perViolentDamage;
        $player->className = 'Tu yêu';
    }

    if ($player->tool1 != 0) {
        $zhuangbei = getzb($player->tool1, $dblj);
        $player->ugj = $player->ugj + $zhuangbei->zbgj;
        $player->ufy = $player->ufy + $zhuangbei->zbfy;
        $player->ubj = $player->ubj + $zhuangbei->zbbj;
        $player->uxx = $player->uxx + $zhuangbei->zbxx;
        $player->umaxhp = $player->umaxhp + $zhuangbei->zbhp;
    }

    if ($player->tool2 != 0) {
        $zhuangbei = getzb($player->tool2, $dblj);
        $player->ugj = $player->ugj + $zhuangbei->zbgj;
        $player->ufy = $player->ufy + $zhuangbei->zbfy;
        $player->ubj = $player->ubj + $zhuangbei->zbbj;
        $player->uxx = $player->uxx + $zhuangbei->zbxx;
        $player->umaxhp = $player->umaxhp + $zhuangbei->zbhp;
    }

    if ($player->tool3 != 0) {
        $zhuangbei = getzb($player->tool3, $dblj);
        $player->ugj = $player->ugj + $zhuangbei->zbgj;
        $player->ufy = $player->ufy + $zhuangbei->zbfy;
        $player->ubj = $player->ubj + $zhuangbei->zbbj;
        $player->uxx = $player->uxx + $zhuangbei->zbxx;
        $player->umaxhp = $player->umaxhp + $zhuangbei->zbhp;
    }

    if ($player->tool4 != 0) {
        $zhuangbei = getzb($player->tool4, $dblj);
        $player->ugj = $player->ugj + $zhuangbei->zbgj;
        $player->ufy = $player->ufy + $zhuangbei->zbfy;
        $player->ubj = $player->ubj + $zhuangbei->zbbj;
        $player->uxx = $player->uxx + $zhuangbei->zbxx;
        $player->umaxhp = $player->umaxhp + $zhuangbei->zbhp;
    }

    if ($player->tool5 != 0) {
        $zhuangbei = getzb($player->tool5, $dblj);
        $player->ugj = $player->ugj + $zhuangbei->zbgj;
        $player->ufy = $player->ufy + $zhuangbei->zbfy;
        $player->ubj = $player->ubj + $zhuangbei->zbbj;
        $player->uxx = $player->uxx + $zhuangbei->zbxx;
        $player->umaxhp = $player->umaxhp + $zhuangbei->zbhp;
    }

    if ($player->tool6 != 0) {
        $zhuangbei = getzb($player->tool6, $dblj);
        $player->ugj = $player->ugj + $zhuangbei->zbgj;
        $player->ufy = $player->ufy + $zhuangbei->zbfy;
        $player->ubj = $player->ubj + $zhuangbei->zbbj;
        $player->uxx = $player->uxx + $zhuangbei->zbxx;
        $player->umaxhp = $player->umaxhp + $zhuangbei->zbhp;
    }

    if ($player->cw != 0) {
        #cwmaxhp khi huyet
        #cwgj cong kich
        #cwfy phong ngu
        #cwbj bao kich
        # hut mau
        $chongwu = \player\getchongwu($player->cw, $dblj);
        $player->ugj = $player->ugj + $chongwu->cwgj;
        $player->ufy = $player->ufy + $chongwu->cwfy;
        $player->ubj = $player->ubj + $chongwu->cwbj;
        $player->uxx = $player->uxx + $chongwu->cwxx;
        $player->umaxhp = $player->umaxhp + $chongwu->cwmaxhp;
    }

    $rangeslv = \upgrade_rule\Rule::getRangesLevel();
    $rangesexp = \upgrade_rule\Rule::getRangesExp();
    $playernextlv = $player->ulv + 1;
    $rangesjj = \upgrade_rule\Rule::getLevel();

    for ($i = 0; $i < count($rangeslv); $i++) {
        if ($player->ulv >= $rangeslv[$i] && $player->ulv < $rangeslv[$i + 1]) {
            $rangesjd = \upgrade_rule\Rule::getRangesId();
            $djc = $player->ulv - $rangeslv[$i];
            $jds = ($rangeslv[$i + 1] - $rangeslv[$i]) / 10;
            $jieduan = floor($djc / $jds);
            $jd = $rangesjd[$jieduan];

            $player->jingjie = $rangesjj[$i];
            $player->cengci = ' Tầng ' . $jd;
            $player->umaxexp = $playernextlv * ($playernextlv + round($playernextlv / 5)) * 12 * $rangesexp[$i] + $playernextlv;
            break;
        }

    }

    return $player;
}

function getplayer1($uid, $dblj)
{
    $player = new player();
    $sql = "select * from game1 where uid='$uid'";
    $cxjg = $dblj->query($sql);
    $cxjg->bindColumn('sid', $player->sid);
    $cxjg->fetch(\PDO::FETCH_ASSOC);
    $player = getplayer($player->sid, $dblj);
    return $player;
}

class guaiwu
{
    var $gname;//tên nick
    var $ginfo;
    var $gsex;
    var $gzb;//Trang thiết bị
    var $dljv;//cơ hội thiết bị
    var $gdj;//đạo cụ
    var $djjv;//cơ hội vật phẩm
    var $gyp;//các loại thuốc
    var $ypjv;//tỷ lệ ma túy
    var $gid;
    var $sid;
    var $glv;
    var $gexp;//exp
    var $ghp;//hp
    var $gmaxhp;
    var $ggj;//tấn công
    var $gfy;//phòng thủ
    var $gbj;//chí mạng
    var $gxx;//hút máu
    var $gyid;
    var $jingjie;
}

function getguaiwu($gid, $dblj)
{
    //lấy quái vật
    $guaiwu = new guaiwu();

    $sql = "select * from midguaiwu where id = $gid";
    $cxjg = $dblj->query($sql);

    $cxjg->bindColumn('gname', $guaiwu->gname);
    $cxjg->bindColumn('id', $guaiwu->gid);
    $cxjg->bindColumn('sid', $guaiwu->sid);
    $cxjg->bindColumn('glv', $guaiwu->glv);
    $cxjg->bindColumn('gexp', $guaiwu->gexp); //kinh nghiệm quái vật
    $cxjg->bindColumn('ghp', $guaiwu->ghp);
    $cxjg->bindColumn('gmaxhp', $guaiwu->gmaxhp);
    $cxjg->bindColumn('ggj', $guaiwu->ggj);
    $cxjg->bindColumn('gfy', $guaiwu->gfy);
    $cxjg->bindColumn('gbj', $guaiwu->gbj);
    $cxjg->bindColumn('gxx', $guaiwu->gxx);
    $cxjg->bindColumn('gyid', $guaiwu->gyid);
    $cxjg->fetch(\PDO::FETCH_ASSOC);

    $rangeslv = \upgrade_rule\Rule::getRangesLevel();
    $rangesjj = \upgrade_rule\Rule::getLevel();

    for ($i = 0; $i < count($rangeslv); $i++) {
        if ($guaiwu->glv >= $rangeslv[$i] && $guaiwu->glv < $rangeslv[$i + 1]) {
//            Cấp độ quái vật từ 0-30 thuộc về luyện Khí
            $rangesjd = \upgrade_rule\Rule::getRangesId();
            $djc = $guaiwu->glv - $rangeslv[$i]; //Cấp quái vật trừ số, ví dụ quái vật cấp 20 trừ 0
            $jds = ($rangeslv[$i + 1] - $rangeslv[$i]) / 10; //Ví dụ: lần đầu tiên (30-0)/10 là 3
            $jieduan = floor($djc / $jds); //Tính xem quái vật thuộc lớp nào, 20/3 xấp xỉ bằng 7 lớp
            $jd = $rangesjd[$jieduan];
            $guaiwu->jingjie = $rangesjj[$i] . $jd . 'Tầng'; //Giai đoạn luyện khí tầng 7
            break;
        }
    }

    return $guaiwu;
}

function getyguaiwu($gyid, $dblj)
{//获取怪物库怪物
    $guaiwu = new guaiwu();
    $sql = "select * from guaiwu where id=$gyid";
    $cxjg = $dblj->query($sql);
    if ($cxjg) {
        $cxjg->bindColumn('gname', $guaiwu->gname);
        $cxjg->bindColumn('ginfo', $guaiwu->ginfo);
        $cxjg->bindColumn('gsex', $guaiwu->gsex);
        $cxjg->bindColumn('glv', $guaiwu->glv);
        $cxjg->bindColumn('gzb', $guaiwu->gzb);
        $cxjg->bindColumn('gdj', $guaiwu->gdj);
        $cxjg->bindColumn('ghp', $guaiwu->ghp);
        $cxjg->bindColumn('ggj', $guaiwu->ggj);
        $cxjg->bindColumn('gfy', $guaiwu->gfy);
        $cxjg->bindColumn('gbj', $guaiwu->gbj);
        $cxjg->bindColumn('gxx', $guaiwu->gxx);
        $cxjg->bindColumn('gyp', $guaiwu->gyp);
        $cxjg->bindColumn('dljv', $guaiwu->dljv);
        $cxjg->bindColumn('ypjv', $guaiwu->ypjv);
        $cxjg->bindColumn('djjv', $guaiwu->djjv);
        $cxjg->fetch(\PDO::FETCH_ASSOC);
    }
    return $guaiwu;
}


class clmid
{
    var $mname;//
    var $mgid;
    var $mid;//
    var $mnpc;//经验
    var $upmid;
    var $downmid;
    var $leftmid;
    var $rightmid;
    var $mgtime;
    var $midboss;
    var $ms;
    var $midinfo;
    var $mqy;
    var $playerinfo;
    var $ispvp;
    var $afk_rate_exp;
    var $afk_rate_resource;
}

function getMid($mid, $dblj)
{
    $clmid = new clmid();
    $sql = "select * from mid where mid='$mid'";
    $cxjg = $dblj->query($sql);
    $cxjg->bindColumn('mname', $clmid->mname);
    $cxjg->bindColumn('mgid', $clmid->mgid);
    $cxjg->bindColumn('mid', $clmid->mid);
    $cxjg->bindColumn('mup', $clmid->upmid);
    $cxjg->bindColumn('mdown', $clmid->downmid);
    $cxjg->bindColumn('mleft', $clmid->leftmid);
    $cxjg->bindColumn('mright', $clmid->rightmid);
    $cxjg->bindColumn('mnpc', $clmid->mnpc);
    $cxjg->bindColumn('mgtime', $clmid->mgtime);
    $cxjg->bindColumn('midboss', $clmid->midboss);
    $cxjg->bindColumn('ms', $clmid->ms);
    $cxjg->bindColumn('midinfo', $clmid->midinfo);
    $cxjg->bindColumn('mqy', $clmid->mqy);
    $cxjg->bindColumn('playerinfo', $clmid->playerinfo);
    $cxjg->bindColumn('ispvp', $clmid->ispvp);
    $cxjg->bindColumn('afk_rate_exp', $clmid->afk_rate_exp);
    $cxjg->bindColumn('afk_rate_resource', $clmid->afk_rate_resource);
    $cxjg->fetch(\PDO::FETCH_ASSOC);
    return $clmid;
}

function istupo($sid, $dblj)
{
    $player = getplayer($sid, $dblj);
    $rangeslv = \upgrade_rule\Rule::getRangesLevel();
    $playernextlv = $player->ulv + 1;
    $rangesjj = \upgrade_rule\Rule::getLevel();

    for ($i = 0; $i < count($rangeslv); $i++) {
        if ($playernextlv >= $rangeslv[$i] && $playernextlv < $rangeslv[$i + 1]) {
            if ($player->jingjie != $rangesjj[$i]) {
                #bước đột phá
                return 1;
            }

            $rangesjd = \upgrade_rule\Rule::getRangesId();
            $djc = $playernextlv - $rangeslv[$i];
            $jds = ($rangeslv[$i + 1] - $rangeslv[$i]) / 10;
            $jieduan = floor($djc / $jds);
            $jd = $rangesjd[$jieduan];
            if ($player->cengci != $jd . 'Tầng') {
                return 2;//đột phá cấp độ
            }

            return 0;
        }
    }
}

function changeexp($sid, $dblj, $exp)
{
    if (istupo($sid, $dblj) != 0) {
        $player = getplayer($sid, $dblj);
        if ($player->uexp >= $player->umaxexp) {
            return;
        }
    }
    $sql = "update game1 set uexp = uexp + $exp where sid='$sid'";
    $ret = $dblj->exec($sql);

    if (istupo($sid, $dblj) == 0) {
        upplayerlv($sid, $dblj);
    }
}

function changetakeresource($sid, $dblj)
{
    $nowdate = date('Y-m-d H:i:s');
    $sql = "update game1 set take_resource_time='$nowdate' WHERE sid='$sid'";
    $dblj->exec($sql);
}

function changemidresource($sid, $nowmid, $dblj)
{
    $sql = "update game1 set take_resource_mid ='$nowmid' WHERE sid='$sid'";
    $dblj->exec($sql);
}

function upplayerlv($sid, $dblj)
{
    $player = getplayer($sid, $dblj);
    if ($player->uexp >= $player->umaxexp) {
        $sql = "update game1 set uexp = uexp - $player->umaxexp where sid='$sid'";
        $dblj->exec($sql);

        $rangeslv = \upgrade_rule\Rule::getRangesLevel();
        $rangesgj = \upgrade_rule\Rule::$rangesAttach;
        $rangesfy = \upgrade_rule\Rule::$rangesDef;
        $rangeshp = \upgrade_rule\Rule::$rangesHp;
        $rangeswx = \upgrade_rule\Rule::$rangesSwx;

        $playernextlv = $player->ulv + 1;

        for ($i = 0; $i < count($rangeslv) - 1; $i++) {
            if ($playernextlv >= $rangeslv[$i] && $playernextlv < $rangeslv[$i + 1]) {
                $sql = "update game1 set ulv = ulv + 1,
                                           umaxhp = umaxhp + $rangeshp[$i],
                                           ugj = ugj + $rangesgj[$i],
                                           ufy = ufy + $rangesfy[$i],
                                           uwx = uwx + $rangeswx[$i]
                                           where sid='$sid'";
                break;
            }
        }
        $dblj->exec($sql);
    }
}

class npc
{
    var $nid;
    var $nname;
    var $nsex;
    var $ninfo;
    var $taskid;
    var $muban;
}

function getnpc($nid, $dblj)
{
    $npc = new npc();
    $sql = "select * from npc where id = $nid";
    $cxjg = $dblj->query($sql);
    $cxjg->bindColumn('nname', $npc->nname);
    $cxjg->bindColumn('id', $npc->nid);
    $cxjg->bindColumn('nsex', $npc->nsex);
    $cxjg->bindColumn('ninfo', $npc->ninfo);
    $cxjg->bindColumn('taskid', $npc->taskid);
    $cxjg->bindColumn('muban', $npc->muban);
    $cxjg->fetch(\PDO::FETCH_ASSOC);
    return $npc;
}

class zhuangbei
{
    var $zbname;
    var $zbinfo;
    var $zbgj;
    var $zbfy;
    var $zbbj;
    var $zbxx;
    var $zbid;
    var $uid;
    var $zbnowid;
    var $qianghua;
    var $zbhp;
    var $zblv;
    var $tool;
    var $preview_url;
}

function getzb($zbnowid, $dblj)
{
    $zhuangbei = new zhuangbei();
    $sql = "select * from playerzhuangbei where zbnowid = $zbnowid";
    $cxjg = $dblj->query($sql);
    $cxjg->bindColumn('zbname', $zhuangbei->zbname);
    $cxjg->bindColumn('zbinfo', $zhuangbei->zbinfo);
    $cxjg->bindColumn('zbgj', $zhuangbei->zbgj);
    $cxjg->bindColumn('zbfy', $zhuangbei->zbfy);
    $cxjg->bindColumn('zbhp', $zhuangbei->zbhp);
    $cxjg->bindColumn('zbbj', $zhuangbei->zbbj);
    $cxjg->bindColumn('zbxx', $zhuangbei->zbxx);
    $cxjg->bindColumn('zbid', $zhuangbei->zbid);
    $cxjg->bindColumn('uid', $zhuangbei->uid);
    $cxjg->bindColumn('zbnowid', $zhuangbei->zbnowid);
    $cxjg->bindColumn('qianghua', $zhuangbei->qianghua);
    $cxjg->bindColumn('zblv', $zhuangbei->zblv);
    $cxjg->bindColumn('zbtool', $zhuangbei->tool);
    $cxjg->bindColumn('preview_url', $zhuangbei->preview_url);
    $cxjg->fetch(\PDO::FETCH_ASSOC);
    return $zhuangbei;
}

function getzbkzb($zbid, $dblj)
{
    $zb = new zhuangbei();
    $sql = "select * from zhuangbei WHERE zbid = $zbid";
    $cxjg = $dblj->query($sql);
    $cxjg->bindColumn('zbname', $zb->zbname);
    $cxjg->bindColumn('zbinfo', $zb->zbinfo);
    $cxjg->bindColumn('zbgj', $zb->zbgj);
    $cxjg->bindColumn('zbfy', $zb->zbfy);
    $cxjg->bindColumn('zbhp', $zb->zbhp);
    $cxjg->bindColumn('zbbj', $zb->zbbj);
    $cxjg->bindColumn('zbxx', $zb->zbxx);
    $cxjg->bindColumn('zbid', $zb->zbid);
    $cxjg->bindColumn('zbtool', $zb->tool);
    $cxjg->bindColumn('preview_url', $zb->preview_url);
    $cxjg->fetch(\PDO::FETCH_ASSOC);
    return $zb;
}

function addzb($sid, $zbid, $dblj)
{
    $player = getplayer($sid, $dblj);
    $zb = getzbkzb($zbid, $dblj);
    $sql = "insert into playerzhuangbei(zbname,zbinfo,zbgj,zbfy,zbhp,zbbj,zbxx,zbid,uid,sid,zbtool,preview_url) VALUES ('$zb->zbname','$zb->zbinfo','$zb->zbgj','$zb->zbfy','$zb->zbhp','$zb->zbbj','$zb->zbxx','$zb->zbid','$player->uid','$sid',$zb->tool,$zb->preview_url);";
    //echo "xxx: $sql";
    $dblj->exec($sql);
    $ret = $dblj->lastInsertId();
    return $ret;
}


class daoju
{
    var $djname;
    var $djzl;
    var $djinfo;
    var $djid;
    var $djsum;//playerdaoju
    var $djyxb;
}

function adddj($sid, $djid, $djsum, $dblj)
{
    $player = getplayer($sid, $dblj);
    $sql = "select * from playerdaoju where sid='$sid' and djid = $djid";
    $cxjg = $dblj->query($sql);
    $ret = $cxjg->fetch(\PDO::FETCH_ASSOC);
    if ($ret) {
        // echo "Chạy vào update";
        $sql = "update playerdaoju set djsum = djsum + $djsum where sid='$sid' and djid = $djid";
        $dblj->exec($sql);
    } else {

        $daoju = getdaoju($djid, $dblj);
        if ($daoju) {
            $sql = "insert into playerdaoju(djname,djinfo,djzl,djid,djsum,sid,uid) VALUES ('$daoju->djname','$daoju->djinfo',null,'$daoju->djid',$djsum,'$sid','$player->uid')";
            // echo "Chạy vào insert mới sql: $sql";
            $dblj->exec($sql);;
        }
    }
    changerwyq1(1, $djid, $djsum, $sid, $dblj);
}

function changerwyq1($rwzl, $rwyq, $gaibian, $sid, $dblj)
{
    if ($rwzl == 1) {
        $daoju = getplayerdaoju($sid, $rwyq, $dblj);
        $sql = "update playerrenwu set rwnowcount = $daoju->djsum WHERE sid='$sid' AND rwyq = '$rwyq' AND rwzl = '$rwzl' AND rwzt = 1";
        $rwt = $dblj->exec($sql);
    } elseif ($rwzl == 2) {
        $sql = "update playerrenwu set rwnowcount = rwnowcount + $gaibian WHERE sid = '$sid' AND rwyq = '$rwyq' AND rwzl = '$rwzl' AND rwzt = 1";
        $rwt = $dblj->exec($sql);
    }

    $sql = "update playerrenwu set rwzt = 2 WHERE sid = '$sid' AND rwyq = '$rwyq' AND rwzl= '$rwzl' AND rwnowcount >= rwcount AND rwzt = 1";
    $dblj->exec($sql);
}


function getplayerdaoju($sid, $djid, $dblj)
{
    $daoju = new daoju();
    $sql = "select * from playerdaoju where djid = $djid AND sid='$sid'";
    $cxjg = $dblj->query($sql);
    $cxjg->bindColumn('djname', $daoju->djname);
    $cxjg->bindColumn('djzl', $daoju->djzl);
    $cxjg->bindColumn('djinfo', $daoju->djinfo);
    $cxjg->bindColumn('djid', $daoju->djid);
    $cxjg->bindColumn('djsum', $daoju->djsum);
    $ret = $cxjg->fetch(\PDO::FETCH_ASSOC);

    if ($ret) {
        return $daoju;
    } else {
        return false;
    }

}

function deledjsum($djid, $djsum, $sid, $dblj)
{ //强化后删除强化石数量
    $daoju = \player\getplayerdaoju($sid, $djid, $dblj);

    if ($daoju) {
        if ($daoju->djsum >= $djsum) {
            $sql = "update playerdaoju set djsum = djsum - $djsum where sid='$sid' and djid = $djid";
            $dblj->exec($sql);
            return true;
        } else {
            return false;
        }
    } else {
        return false;
    }
}

function getdaoju($djid, $dblj)
{
    $daoju = new daoju();
    $sql = "select * from daoju where djid = $djid";
    $cxjg = $dblj->query($sql);
    $cxjg->bindColumn('djname', $daoju->djname);
    $cxjg->bindColumn('djzl', $daoju->djzl);
    $cxjg->bindColumn('djinfo', $daoju->djinfo);
    $cxjg->bindColumn('djid', $daoju->djid);
    $cxjg->bindColumn('djyxb', $daoju->djyxb);
    $ret = $cxjg->fetch(\PDO::FETCH_ASSOC);
    if ($ret) {
        return $daoju;
    } else {
        return false;
    }
}

function changezbsx($upsx, $changeint, $zbnowid, $dblj)
{
    $sql = "update playerzhuangbei set $upsx= $upsx + $changeint WHERE zbnowid=$zbnowid";
    $dblj->exec($sql);
}

function upzbsx($zbnowid, $upsx, $sid, $dblj)
{
    $zbsx = '';
    $zbqh = '';
    $sql = "select * from playerzhuangbei WHERE zbnowid=$zbnowid AND sid='$sid'";
    $cxjg = $dblj->query($sql);
    $cxjg->bindColumn("$upsx", $zbsx);
    $cxjg->bindColumn("qianghua", $zbqh);
    $cxjg->fetch(\PDO::FETCH_ASSOC);
    $djsum = $zbqh * 4 + 1;  // Cấp cường hóa trang bị*4+1 Tiêu hao đá cường hóa

    $ret = \player\deledjsum(1, $djsum, $sid, $dblj);
    if ($ret) {
        $upint = round($zbsx * 0.05); //Cường hóa tăng 5% làm mới trang bị, ít quá thì tăng 1 điểm làm mới
        if ($zbqh >= 50) {
            return 2; //Cường hóa trang bị đã đạt đến giới hạn trên
        }

//        # Cuong hoa tan cong
//        if ($upsx === "zbgj") {
//            $upint = round($zbsx * 0.08);
//        }

        if ($upint < 1) {
            $upint = 1;
        }

        \player\changezbsx($upsx, $upint, $zbnowid, $dblj);
        changezbsx('qianghua', 1, $zbnowid, $dblj);
        return 1;

        //----下面一堆计算强化成功与失败结果的代码，现在改为100%成功
        // $sjs = mt_rand(1,35);
        // if ($sjs <= $zbqh){  //1到35随机数，小于装备强化等级，就失败。也就是0级装备，成功率为34/35
        // return 0;//失败
        // }
        // $sjs = mt_rand(1,30);  //假如第一个随机数没失败，再取第二个随机数
        // if ($zbqh <= $sjs){ //跟刚才一样会有概率失败
        // \player\changezbsx($upsx,$upint,$zbnowid,$dblj);
        // changezbsx('qianghua',1,$zbnowid,$dblj);
        // return 1;
        // }else{
        // return 0;//失败
        // }
        //----
    } else {
        return -1;//不足
    }
}

class yaopin
{
    var $ypname;
    var $ypid;
    var $yphp;
    var $ypgj;
    var $ypfy;
    var $ypjg;
    var $ypbj;
    var $ypxx;
    var $ypsum;
}

function getyaopin($dblj)
{
    $sql = "select * from yaopin";
    $cxjg = $dblj->query($sql);
    $yaopin = $cxjg->fetchAll(\PDO::FETCH_ASSOC);
    return $yaopin;
//    $cxjg->bindColumn('ypname',$yaopin->ypname);
//    $cxjg->bindColumn('yphp',$yaopin->yphp);
//    $cxjg->bindColumn('ypgj',$yaopin->ypgj);
//    $cxjg->bindColumn('ypfy',$yaopin->ypfy);
//    $cxjg->bindColumn('ypjg',$yaopin->ypjg);
//    $cxjg->bindColumn('ypbj',$yaopin->ypbj);
//    $cxjg->bindColumn('ypxx',$yaopin->ypxx);
}

function getyaopinonce($ypid, $dblj)
{
    $yaopin = new yaopin();
    $sql = "select * from yaopin WHERE ypid=$ypid";
    $cxjg = $dblj->query($sql);
    $cxjg->bindColumn('ypname', $yaopin->ypname);
    $cxjg->bindColumn('yphp', $yaopin->yphp);
    $cxjg->bindColumn('ypgj', $yaopin->ypgj);
    $cxjg->bindColumn('ypfy', $yaopin->ypfy);
    $cxjg->bindColumn('ypjg', $yaopin->ypjg);
    $cxjg->bindColumn('ypbj', $yaopin->ypbj);
    $cxjg->bindColumn('ypid', $yaopin->ypid);
    $cxjg->fetch(\PDO::FETCH_ASSOC);
    return $yaopin;
}

function getplayeryaopin($ypid, $sid, $dblj)
{
    $yaopin = new yaopin();
    $sql = "select * from playeryaopin WHERE ypid=$ypid AND sid='$sid'";
    $cxjg = $dblj->query($sql);
    $cxjg->bindColumn('ypname', $yaopin->ypname);
    $cxjg->bindColumn('yphp', $yaopin->yphp);
    $cxjg->bindColumn('ypgj', $yaopin->ypgj);
    $cxjg->bindColumn('ypfy', $yaopin->ypfy);
    $cxjg->bindColumn('ypjg', $yaopin->ypjg);
    $cxjg->bindColumn('ypbj', $yaopin->ypbj);
    $cxjg->bindColumn('ypxx', $yaopin->ypxx);
    $cxjg->bindColumn('ypsum', $yaopin->ypsum);
    $ret = $cxjg->fetch(\PDO::FETCH_ASSOC);
    if ($ret) {
        return $yaopin;
    } else {
        return false;
    }
}

function getplayeryaopinall($sid, $dblj)
{
    $sql = "select * from playeryaopin WHERE sid='$sid'";
    $cxjg = $dblj->query($sql);
    if ($cxjg) {
        $ret = $cxjg->fetchAll(\PDO::FETCH_ASSOC);
        return $ret;
    } else {
        return false;
    }

}

// Add Thuốc
function addyaopin($sid, $ypid, $ypsum, $dblj)
{
    $yaopin = getplayeryaopin($ypid, $sid, $dblj);
    if ($yaopin) {
        $sql = "update playeryaopin set ypsum = ypsum + $ypsum WHERE ypid=$ypid AND sid='$sid'";
        $dblj->exec($sql);
    } else {
        $yaopin = getyaopinonce($ypid, $dblj);
        $sql = "insert into playeryaopin(ypname,yphp,ypgj,ypfy,ypbj,ypxx,ypid,ypjg,ypsum,sid) VALUES('$yaopin->ypname','$yaopin->yphp','$yaopin->ypgj','$yaopin->ypfy','$yaopin->ypbj','$yaopin->ypxx',$ypid,'$yaopin->ypjg','$ypsum','$sid')";
        $ret = $dblj->exec($sql);
    }
}

function deleyaopin($sid, $ypid, $ypsum, $dblj)
{
    $yaopin = getplayeryaopin($ypid, $sid, $dblj);
    if ($yaopin) {
        if ($yaopin->ypsum >= $ypsum) {
            $sql = "update playeryaopin set ypsum = ypsum - $ypsum WHERE ypid=$ypid AND sid='$sid'";
            $dblj->exec($sql);
            return true;
        } else {
            return false;
        }
    } else {
        return false;
    }
}

function changeplayersx($sx, $gaibian, $sid, $dblj)
{
    $sql = "update game1 set $sx = '$gaibian' WHERE sid='$sid'";//Thay đổi thuộc tính người chơi
    $ret = $dblj->exec($sql);
}

function changeplayerusepet($cwid, $sid, $dblj)
{
    $chongwu = \player\getchongwu($cwid, $dblj);
    #cwmaxhp khi huyet
    #cwgj cong kich
    #cwfy phong ngu
    #cwbj bao kich
    # hut mau
    $sql = "update game1 set $sx = '$gaibian' WHERE sid='$sid'";//Thay đổi thuộc tính người chơi
    $ret = $dblj->exec($sql);
}

function changecwsx($sx, $gaibian, $cwid, $dblj)
{
    $sql = "update playerchongwu set $sx = '$gaibian' WHERE cwid='$cwid'";//Thay đổi thuộc tính thú cưng
    $ret = $dblj->exec($sql);
}

function addplayersx($sx, $gaibian, $sid, $dblj)
{
    $sql = "update game1 set $sx = $sx + '$gaibian' WHERE sid='$sid'";//Tăng thuộc tính người chơi
    $ret = $dblj->exec($sql);
}

function addcwsx($sx, $gaibian, $cwid, $dblj)
{
    $sql = "update playerchongwu set $sx = $sx + '$gaibian' WHERE cwid='$cwid'";//Thêm thuộc tính cw
    $ret = $dblj->exec($sql);
}

function changeyxb($lx, $gaibian, $sid, $dblj)
{//thay đổi tiền tệ
    $player = getplayer($sid, $dblj);
    if ($lx == 1) {
        $sql = "update game1 set uyxb = uyxb + $gaibian WHERE sid='$sid'";
        $dblj->exec($sql);
        return true;
    } elseif ($lx == 2) {
        if ($player->uyxb - $gaibian >= 0) {
            $sql = "update game1 set uyxb = uyxb - $gaibian WHERE sid='$sid'";
            $dblj->exec($sql);
            return true;
        } else {
            return false;
        }

    }
}

//thay đổi tiền tệ
function change_cuc_pham_nguyen_thach($lx, $gaibian, $sid, $dblj)
{
    $player = getplayer($sid, $dblj);
    if ($lx == 1) {
        $sql = "update game1 set uczb = uczb + $gaibian WHERE sid='$sid'";
        $dblj->exec($sql);
        return true;
    } elseif ($lx == 2) {
        if ($player->uczb - $gaibian >= 0) {
            $sql = "update game1 set uczb = uczb - $gaibian WHERE sid='$sid'";
            $dblj->exec($sql);
            return true;
        } else {
            return false;
        }

    }
}

class task
{
    var $rwname;
    var $rwinfo;
    var $rwid;
    var $rwzl;
    var $rwyq;
    var $rwdj;
    var $rwzb;
    var $rwexp;
    var $rwyxb;
    var $sid;
    var $rwzt;//tiểu bang
    var $rwcount;
    var $rwyp;
    var $rwlx;
    var $rwnowcount;
    var $lastrwid;
}

function getplayerrenwu($sid, $dblj)
{
    $sql = "select * from playerrenwu WHERE sid='$sid'";
    $cxjg = $dblj->query($sql);
//    $cxjg->bindColumn("rwname",$task->rwname);
//    $cxjg->bindColumn("rwinfo",$task->rwinfo);
//    $cxjg->bindColumn("rwid",$task->rwid);
//    $cxjg->bindColumn("rwzl",$task->rwzl);
//    $cxjg->bindColumn("rwyq",$task->rwyq);
//    $cxjg->bindColumn("rwdj",$task->rwdj);
//    $cxjg->bindColumn("rwzb",$task->rwzb);
//    $cxjg->bindColumn("rwexp",$task->rwexp);
//    $cxjg->bindColumn("rwyxb",$task->rwyxb);
//    $cxjg->bindColumn("rwzt",$task->rwzt);
//    $cxjg->bindColumn("rwcount",$task->rwcount);
    $task = $cxjg->fetchAll(\PDO::FETCH_ASSOC);
    return $task;
}

function gettask($rwid, $dblj)
{
    $task = new task();
    $sql = "select * from renwu WHERE rwid='$rwid'";
    $cxjg = $dblj->query($sql);
    $cxjg->bindColumn("rwname", $task->rwname);
    $cxjg->bindColumn("rwinfo", $task->rwinfo);
    $cxjg->bindColumn("rwzl", $task->rwzl);
    $cxjg->bindColumn("rwid", $task->rwid);
    $cxjg->bindColumn("rwyq", $task->rwyq);
    $cxjg->bindColumn("rwdj", $task->rwdj);
    $cxjg->bindColumn("rwzb", $task->rwzb);
    $cxjg->bindColumn("rwexp", $task->rwexp);
    $cxjg->bindColumn("rwyxb", $task->rwyxb);
    $cxjg->bindColumn("rwcount", $task->rwcount);
    $cxjg->bindColumn("rwlx", $task->rwlx);
    $cxjg->bindColumn("rwyp", $task->rwyp);
    $cxjg->bindColumn("lastrwid", $task->lastrwid);
    $cxjg->fetchAll(\PDO::FETCH_ASSOC);
    return $task;
}

function getplayerrenwuonce($sid, $rwid, $dblj)
{
    $task = new task();
    $sql = "select * from playerrenwu WHERE sid='$sid' AND rwid=$rwid";
    $cxjg = $dblj->query($sql);

    $cxjg->bindColumn("rwname", $task->rwname);
    $cxjg->bindColumn("rwid", $task->rwid);
    $cxjg->bindColumn("rwzl", $task->rwzl);
    $cxjg->bindColumn("rwyq", $task->rwyq);
    $cxjg->bindColumn("rwdj", $task->rwdj);
    $cxjg->bindColumn("rwzb", $task->rwzb);
    $cxjg->bindColumn("rwexp", $task->rwexp);
    $cxjg->bindColumn("rwyxb", $task->rwyxb);
    $cxjg->bindColumn("rwzt", $task->rwzt);
    $cxjg->bindColumn("rwcount", $task->rwcount);
    $cxjg->bindColumn("rwnowcount", $task->rwnowcount);
    $cxjg->bindColumn("rwlx", $task->rwlx);
    $cxjg->bindColumn("rwyp", $task->rwyp);
    $ret = $cxjg->fetch(\PDO::FETCH_ASSOC);
    if (!$ret) {
        return false;
    }
    return $task;
}

class boss
{
    var $bossname;
    var $bosslv;
    var $bossid;
    var $bosstime;
    var $bs;
    var $bossinfo;
    var $bosshp;
    var $bossmaxhp;
    var $bossgj;
    var $bossfy;
    var $bossbj;
    var $bossxx;
    var $bossdj;
    var $bosszb;
}

function getboss($bossid, $dblj)
{
    $boss = new boss();
    $sql = "select * from boss WHERE bossid=$bossid";
    $cxjg = $dblj->query($sql);
    $cxjg->bindColumn('bossname', $boss->bossname);
    $cxjg->bindColumn('bossid', $boss->bossid);
    $cxjg->bindColumn('bosstime', $boss->bosstime);
    $cxjg->bindColumn('bs', $boss->bs);
    $cxjg->bindColumn('bossinfo', $boss->bossinfo);
    $cxjg->bindColumn('bosshp', $boss->bosshp);
    $cxjg->bindColumn('bosslv', $boss->bosslv);
    $cxjg->bindColumn('bossgj', $boss->bossgj);
    $cxjg->bindColumn('bossfy', $boss->bossfy);
    $cxjg->bindColumn('bossbj', $boss->bossbj);
    $cxjg->bindColumn('bossxx', $boss->bossxx);
    $cxjg->bindColumn('bossdj', $boss->bossdj);
    $cxjg->bindColumn('bosszb', $boss->bosszb);
    $cxjg->fetch(\PDO::FETCH_ASSOC);
    return $boss;
}

function useyaopin($ypid, $ypsum, $sid, $dblj)
{
    $player = getplayer($sid, $dblj);
    if ($player->uhp < 0) {
        addplayersx('uhp', 1, $sid, $dblj);
        return false;
    }
    $ret = deleyaopin($sid, $ypid, $ypsum, $dblj);
    if ($ret) {

        $hpc = $player->umaxhp - $player->uhp;
        $yaopin = getyaopinonce($ypid, $dblj);
        if ($yaopin->yphp >= $hpc) {
            addplayersx('uhp', $hpc, $sid, $dblj);
        } else {
            addplayersx('uhp', $yaopin->yphp, $sid, $dblj);
        }
        addplayersx('ugj', $yaopin->ypgj, $sid, $dblj);
        addplayersx('ufy', $yaopin->ypfy, $sid, $dblj);
        addplayersx('ugj', $yaopin->ypbj, $sid, $dblj);
        addplayersx('ugj', $yaopin->ypxx, $sid, $dblj);
    }
    return $ret;
}

class chongwu
{
    var $cwname;
    var $cwlv;
    var $cwexp;
    var $cwmaxexp;
    var $cwhp;
    var $cwmaxhp;
    var $cwgj;
    var $cwfy;
    var $cwbj;
    var $cwxx;
    var $uphp;
    var $upgj;
    var $upfy;
    var $cwpz;
    var $tool1;
    var $tool2;
    var $tool3;
    var $tool4;
    var $tool5;
    var $tool6;
}

/**
 * @param $cwid
 * @param $dblj
 * @return chongwu
 */
function getchongwu($cwid, $dblj)
{
    $chongwu = new chongwu();
    $rangeslv = array(0, 30, 50, 70, 80, 90, 100, 110);
    $rangesgj = array(2.5, 5, 7.5, 10, 12.5, 15, 17.5);
    $rangesfy = array(2.5, 5, 7.5, 10, 12.5, 15, 17.5);
    $rangeshp = array(30, 50, 70, 90, 110, 130, 170);
    $rangesexp = array(2, 4, 6, 9, 12.5, 15, 17.5);

    $sql = "select * from playerchongwu WHERE cwid = $cwid ";
    $cxjg = $dblj->query($sql);
    $cxjg->bindColumn("cwname", $chongwu->cwname);
    $cxjg->bindColumn("cwlv", $chongwu->cwlv);
    $cxjg->bindColumn("cwexp", $chongwu->cwexp);
    $cxjg->bindColumn("cwhp", $chongwu->cwhp);
    $cxjg->bindColumn("cwmaxhp", $chongwu->cwmaxhp);
    $cxjg->bindColumn("cwgj", $chongwu->cwgj);
    $cxjg->bindColumn("cwfy", $chongwu->cwfy);
    $cxjg->bindColumn("cwbj", $chongwu->cwbj);
    $cxjg->bindColumn("cwxx", $chongwu->cwxx);
    $cxjg->bindColumn("uphp", $chongwu->uphp);
    $cxjg->bindColumn("upgj", $chongwu->upgj);
    $cxjg->bindColumn("upfy", $chongwu->upfy);
    $cxjg->bindColumn("cwpz", $chongwu->cwpz);
    $cxjg->bindColumn("tool1", $chongwu->tool1);
    $cxjg->bindColumn("tool2", $chongwu->tool2);
    $cxjg->bindColumn("tool3", $chongwu->tool3);
    $cxjg->bindColumn("tool4", $chongwu->tool4);
    $cxjg->bindColumn("tool5", $chongwu->tool5);
    $cxjg->bindColumn("tool6", $chongwu->tool6);


    if ($chongwu->tool1 != 0) {
        $zhuangbei = getzb($chongwu->tool1, $dblj);
        $chongwu->ugj = $chongwu->cwgj + $zhuangbei->zbgj;
        $chongwu->ufy = $chongwu->cwfy + $zhuangbei->zbfy;
        $chongwu->ubj = $chongwu->cwbj + $zhuangbei->zbbj;
        $chongwu->uxx = $chongwu->cwxx + $zhuangbei->zbxx;
        $chongwu->umaxhp = $chongwu->cwmaxhp + $zhuangbei->zbhp;
    }

    if ($chongwu->tool2 != 0) {
        $zhuangbei = getzb($chongwu->tool2, $dblj);
        $chongwu->ugj = $chongwu->cwgj + $zhuangbei->zbgj;
        $chongwu->ufy = $chongwu->cwfy + $zhuangbei->zbfy;
        $chongwu->ubj = $chongwu->cwbj + $zhuangbei->zbbj;
        $chongwu->uxx = $chongwu->cwxx + $zhuangbei->zbxx;
        $chongwu->umaxhp = $chongwu->cwmaxhp + $zhuangbei->zbhp;
    }

    if ($chongwu->tool3 != 0) {
        $zhuangbei = getzb($chongwu->tool3, $dblj);
        $chongwu->ugj = $chongwu->cwgj + $zhuangbei->zbgj;
        $chongwu->ufy = $chongwu->cwfy + $zhuangbei->zbfy;
        $chongwu->ubj = $chongwu->cwbj + $zhuangbei->zbbj;
        $chongwu->uxx = $chongwu->cwxx + $zhuangbei->zbxx;
        $chongwu->umaxhp = $chongwu->cwmaxhp + $zhuangbei->zbhp;
    }

    if ($chongwu->tool4 != 0) {
        $zhuangbei = getzb($chongwu->tool4, $dblj);
        $chongwu->ugj = $chongwu->cwgj + $zhuangbei->zbgj;
        $chongwu->ufy = $chongwu->cwfy + $zhuangbei->zbfy;
        $chongwu->ubj = $chongwu->cwbj + $zhuangbei->zbbj;
        $chongwu->uxx = $chongwu->cwxx + $zhuangbei->zbxx;
        $chongwu->umaxhp = $chongwu->cwmaxhp + $zhuangbei->zbhp;
    }

    if ($chongwu->tool5 != 0) {
        $zhuangbei = getzb($chongwu->tool5, $dblj);
        $chongwu->ugj = $chongwu->cwgj + $zhuangbei->zbgj;
        $chongwu->ufy = $chongwu->cwfy + $zhuangbei->zbfy;
        $chongwu->ubj = $chongwu->cwbj + $zhuangbei->zbbj;
        $chongwu->uxx = $chongwu->cwxx + $zhuangbei->zbxx;
        $chongwu->umaxhp = $chongwu->cwmaxhp + $zhuangbei->zbhp;
    }

    if ($chongwu->tool6 != 0) {
        $zhuangbei = getzb($chongwu->tool6, $dblj);
        $chongwu->ugj = $chongwu->cwgj + $zhuangbei->zbgj;
        $chongwu->ufy = $chongwu->cwfy + $zhuangbei->zbfy;
        $chongwu->ubj = $chongwu->cwbj + $zhuangbei->zbbj;
        $chongwu->uxx = $chongwu->cwxx + $zhuangbei->zbxx;
        $chongwu->umaxhp = $chongwu->cwmaxhp + $zhuangbei->zbhp;
    }

    $ret = $cxjg->fetch(\PDO::FETCH_ASSOC);
    for ($i = 0; $i < $rangeslv; $i++) {
        if ($chongwu->cwlv >= $rangeslv[$i] && $chongwu->cwlv < $rangeslv[$i + 1]) {
            $cwnextlv = $chongwu->cwlv + 1;
            $chongwu->cwmaxexp = $cwnextlv * ($cwnextlv + round($cwnextlv / 2)) * 10 * $rangesexp[$i] + $cwnextlv;
            break;
        }
    }
    return $chongwu;
}

function getchongwuall($sid, $dblj)
{
    $sql = "select * from playerchongwu WHERE sid = '$sid'";
    $cxjg = $dblj->query($sql);
    if ($cxjg) {
        $ret = $cxjg->fetchAll(\PDO::FETCH_ASSOC);
        return $ret;
    } else {
        return false;
    }
}

function addchongwu($sid, $dblj)
{
    $cw4 = array('Linh-Đế Kim Phi Thử',
        'Linh Hư Uyển Thuỷ Hư',
        'Yêu Hồ Lực Đại Tiên',
        'Đản đản kê',
        'Quỷ-Lực Lộc Đại Tiên',
        'Yêu Đà Ngột',
        'Linh-Hư Yền Minh',
        'Yêu Ngưu Ma Vương',
        'Quỷ Liệt Giới Minh Lang',
        'Linh Ma Băng Cực Địa',
        'Yêu Chấn Hôi Ưng Liên');

    $uphp = mt_rand(8, 25);
    $upgj = mt_rand(2, 5);
    $upfy = mt_rand(3, 8);
    $cwpz = mt_rand(0, 500);

    if ($cwpz < 200) {
        $cwpz = 0;
    } elseif ($cwpz < 350) {
        $cwpz = 1;
    } elseif ($cwpz < 430) {
        $cwpz = 2;
    } elseif ($cwpz < 470) {
        $cwpz = 3;
    } elseif ($cwpz < 495) {
        $cwpz = 4;
    } elseif ($cwpz < 500) {
        $cwpz = 5;
    }

    $cwlv = 1;
    $cwmaxhp = 100;
    $cwhp = 100;
    $cwgj = 6;
    $cwfy = 4;
    $sjs = mt_rand(0, 11);
    $sql = "insert into playerchongwu(cwname,cwlv,cwhp,cwmaxhp,cwgj,cwfy,uphp,upgj,upfy,cwpz,sid) VALUES ('$cw4[$sjs]','$cwlv','$cwhp','$cwmaxhp','$cwgj','$cwfy','$uphp','$upgj','$upfy','$cwpz','$sid')";
    $dblj->exec($sql);
}

function delechongwu($cwid, $sid, $dblj)
{
    $sql = "delete from `playerchongwu` WHERE cwid=$cwid AND sid='$sid'";
    $dblj->exec($sql);
}

function changecwexp($cwid, $exp, $dblj)
{
    $sql = "update playerchongwu set cwexp = cwexp + $exp where cwid='$cwid'";
    $ret = $dblj->exec($sql);
    $cw = getchongwu($cwid, $dblj);
    if ($cw->cwexp >= $cw->cwmaxexp) {
        $sql = "update playerchongwu set cwexp = cwexp - $cw->cwmaxexp where cwid='$cwid'";
        $dblj->exec($sql);

        $rangeslv = array(1, 30, 50, 70, 80, 90, 100, 110);
        $playernextlv = $cw->cwlv + 1;

        for ($i = 0; $i < count($rangeslv) - 1; $i++) {
            if ($playernextlv >= $rangeslv[$i] && $playernextlv < $rangeslv[$i + 1]) {
                $rangeshp = array(20, 30, 50, 70, 90, 110, 140);
                $rangesgj = array(2.5, 5, 7.5, 10, 12.5, 15, 17.5);
                $rangesfy = array(2.5, 5, 7.5, 10, 12.5, 15, 17.5);

                $uphp = $cw->uphp * (1 + ($cw->cwpz / 10));
                $upgj = $cw->upgj * (1 + ($cw->cwpz / 10));
                $upfy = $cw->upfy * (1 + ($cw->cwpz / 10));
                $sql = "update playerchongwu set cwlv = cwlv + 1,
                                           cwmaxhp = cwmaxhp + $uphp,
                                           cwgj = cwgj + $upgj,  
                                           cwfy = cwfy + $upfy
                                           where cwid = '$cwid'";
                $ret = $dblj->exec($sql);
                break;
            }
        }
    }
}

class jineng
{
    var $jnname;
    var $jnid;
    var $jngj;
    var $jnfy;
    var $jnbj;
    var $jnxx;
    var $jndj;
    var $djcount;
    var $jncount;
}

function getjineng_all($dblj)
{
    $sql = "select * from jineng";
    $cxjg = $dblj->query($sql);
    $retjn = $cxjg->fetchAll(\PDO::FETCH_ASSOC);
    return $retjn;
}

function getplayerjineng_all($sid, $dblj)
{
    $sql = "select * from playerjineng WHERE sid='$sid'";
    $cxjg = $dblj->query($sql);
    $retjn = $cxjg->fetchAll(\PDO::FETCH_ASSOC);
    return $retjn;
}

function getjineng_once($jnid, $dblj)
{
    $jineng = new jineng();
    $sql = "select * from jineng WHERE jnid=$jnid";
    $cxjg = $dblj->query($sql);
    $cxjg->bindColumn("jnname", $jineng->jnname);
    $cxjg->bindColumn("jnid", $jineng->jnid);
    $cxjg->bindColumn("jngj", $jineng->jngj);
    $cxjg->bindColumn("jnfy", $jineng->jnfy);
    $cxjg->bindColumn("jnbj", $jineng->jnbj);
    $cxjg->bindColumn("jnxx", $jineng->jnxx);
    $cxjg->bindColumn("jndj", $jineng->jndj);
    $cxjg->bindColumn("djcount", $jineng->djcount);
    $cxjg->fetch(\PDO::FETCH_ASSOC);
    return $jineng;
}

function getplayerjineng($jnid, $sid, $dblj)
{
    $jineng = new jineng();
    $sql = "select * from playerjineng WHERE jnid=$jnid and sid='$sid'";
    $cxjg = $dblj->query($sql);

    $cxjg->bindColumn("jnname", $jineng->jnname);
    $cxjg->bindColumn("jnid", $jineng->jnid);
    $cxjg->bindColumn("jngj", $jineng->jngj);
    $cxjg->bindColumn("jnfy", $jineng->jnfy);
    $cxjg->bindColumn("jnbj", $jineng->jnbj);
    $cxjg->bindColumn("jnxx", $jineng->jnxx);
    $cxjg->bindColumn("jncount", $jineng->jncount);
    $ret = $cxjg->fetch(\PDO::FETCH_ASSOC);

    if ($ret) {
        return $jineng;
    }
    return $ret;
}

function addjineng($jnid, $jncount, $sid, $dblj)
{
    $jineng = getjineng_once($jnid, $dblj);
    $ret = getplayerjineng($jnid, $sid, $dblj);
    if ($ret) {
        $sql = "update `playerjineng` set jncount= jncount + $jncount WHERE jnid = $jnid AND sid='$sid'";
    } else {
        $sql = "insert into `playerjineng`(jnname,jnid,jngj,jnfy,jnbj,jnxx,sid,jncount) VALUES ('$jineng->jnname','$jineng->jnid','$jineng->jngj','$jineng->jnfy','$jineng->jnbj','$jineng->jnxx','$sid','$jncount')";
    }
    $ret = $dblj->exec($sql);
}

function delejnsum($jnid, $jnsum, $sid, $dblj)
{
    $jnneng = getplayerjineng($jnid, $sid, $dblj);
    if ($jnneng) {
        if ($jnneng->jncount >= $jnsum && $jnsum > 0) {
            $sql = "update playerjineng set jncount = jncount - $jnsum where sid='$sid' and jnid = $jnid";
            $dblj->exec($sql);
            return true;
        } else {
            return false;
        }
    } else {
        return false;
    }
}

class mqy
{
    var $qyname;
    var $qyid;
    var $mid;
}

function getqy($qyid, $dblj)
{
    $qy = new mqy();
    $sql = "select * from `qy` WHERE qyid=$qyid";
    $cxjg = $dblj->query($sql);
    $cxjg->bindColumn('qyname', $qy->qyname);
    $cxjg->bindColumn('qyid', $qy->qyid);
    $cxjg->bindColumn('mid', $qy->mid);
    $cxjg->fetch(\PDO::FETCH_ASSOC);
    return $qy;
}

function getqy_all($dblj)
{
    $sql = "select * from `qy`";
    $cxjg = $dblj->query($sql);
    $ret = $cxjg->fetchAll(\PDO::FETCH_ASSOC);
    return $ret;
}

class gameconfig
{
    var $firstmid;
}

function getgameconfig($dblj)
{
    $gameconfig = new gameconfig();
    $sql = "select * from `gameconfig`";
    $cxjg = $dblj->query($sql);
    $cxjg->bindColumn('firstmid', $gameconfig->firstmid);
    $ret = $cxjg->fetch(\PDO::FETCH_ASSOC);
    return $gameconfig;
}

class fangshi_dj
{
    var $djid;
    var $djname;
    var $pay;
    var $uid;
    var $djcount;
    var $payid;
    var $djinfo;
}

/**
 * @property  djid
 */
class fangshi_zb
{
    var $zbnowid;
    var $pay;
    var $payid;
    var $uid;
}

function getfangshi_once($lx, $payid, $dblj)
{
    switch ($lx) {
        case "daoju":
            $fsdj = new fangshi_dj();
            $sql = "select * from `fangshi_dj` WHERE payid = $payid";
            $redj = $dblj->query($sql);
            $redj->bindColumn('djid', $fsdj->djid);
            $redj->bindColumn('djname', $fsdj->djname);
            $redj->bindColumn('pay', $fsdj->pay);
            $redj->bindColumn('uid', $fsdj->uid);
            $redj->bindColumn('djcount', $fsdj->djcount);
            $redj->bindColumn('payid', $fsdj->payid);
            $redj->bindColumn('djinfo', $fsdj->djinfo);
            $dj = $redj->fetch(\PDO::FETCH_ASSOC);
            if ($dj) {
                return $fsdj;
            }

            return $dj;
        case "zhuangbei":
            $fszb = new fangshi_zb();
            $sql = "select * from `fangshi_zb` WHERE payid = $payid";
            $redj = $dblj->query($sql);
            $redj->bindColumn('zbnowid', $fszb->zbnowid);
            $redj->bindColumn('payid', $fszb->payid);
            $redj->bindColumn('uid', $fszb->uid);
            $redj->bindColumn("pay", $fszb->pay);
            $zb = $redj->fetch(\PDO::FETCH_ASSOC);
            if ($zb) {
                return $fszb;
            }
            return $zb;
    }

}

/**
 * @param $lx
 * @param $dblj
 * @return mixed
 */
function gettrangbi_in_market($lx, $dblj)
{
    switch ($lx) {
        case "daoju":
            $sql = "select * from `fangshi_dj`";
            $redj = $dblj->query($sql);
            $dj = $redj->fetchAll(\PDO::FETCH_ASSOC);
            return $dj;
        case "zhuangbei":
            $sql = "select * from `fangshi_zb`";
            $redj = $dblj->query($sql);
            $dj = $redj->fetchAll(\PDO::FETCH_ASSOC);
            return $dj;
    }

}

class club
{
    var $clubname;
    var $clubid;
    var $clublv;
    var $clubexp;
    var $clubno1;
    var $clubinfo;
    var $clubyxb;
    var $clubczb;
}

function getclub($clubid, $dblj)
{
    $club = new club();
    $sql = "select * from `club` WHERE clubid = $clubid ";
    $retc = $dblj->query($sql);
    $retc->bindColumn("clubname", $club->clubname);
    $retc->bindColumn("clubinfo", $club->clubinfo);
    $retc->bindColumn("clublv", $club->clublv);
    $retc->bindColumn("clubexp", $club->clubexp);
    $retc->bindColumn("clubid", $club->clubid);
    $retc->bindColumn("clubno1", $club->clubno1);
    $retc->bindColumn("clubyxb", $club->clubyxb);
    $retc->bindColumn("clubczb", $club->clubczb);
    $retc->fetch(\PDO::FETCH_ASSOC);
    return $club;
}

function getclub_all($dblj)
{
    $sql = "select * from `club`";
    $retc = $dblj->query($sql);
    $club = $retc->fetchAll(\PDO::FETCH_ASSOC);
    return $club;
}

class clubplayer
{
    var $clubid;
    var $uid;
    var $sid;
    var $uclv;
}

class bugcollect
{
    var $uname;
    var $title;
    var $content;
    var $uptime;
    var $uid;
}

/**
 * @param $sid
 * @param $dblj
 * @return clubplayer
 * 中国 源码网：z g y m w .com
 */
function getclubplayer_once($sid, $dblj)
{
    $clubplayer = new clubplayer();
    $sql = "select * from `clubplayer` WHERE sid = '$sid'";
    $retc = $dblj->query($sql);
    $retc->bindColumn('clubid', $clubplayer->clubid);
    $retc->bindColumn('uid', $clubplayer->uid);
    $retc->bindColumn('uid', $clubplayer->uid);
    $retc->bindColumn('uclv', $clubplayer->uclv);
    $ret = $retc->fetch(\PDO::FETCH_ASSOC);
    if (!$ret) {
        return $ret;
    }
    return $clubplayer;
}

function getbug_once($dblj)
{ //读取已收集的bug
    $bugcollect = new bugcollect();
    $sql = "select * from `bugcollect`";
    $retc = $dblj->query($sql);
    $retc->bindColumn('uname', $bugcollect->uname);
    $retc->bindColumn('title', $bugcollect->title);
    $retc->bindColumn('content', $bugcollect->content);
    $retc->bindColumn('uptime', $bugcollect->uptime);
    $retc->bindColumn('uid', $bugcollect->uid);
    $ret = $retc->fetch(\PDO::FETCH_ASSOC);
    if (!$ret) {
        return $ret;
    }
    return $bugcollect;
}

class duihuan
{
    var $dhid;
    var $dhm;
    var $dhzb;
    var $dhdj;
    var $dhyp;
    var $dhyxb;
    var $dhczb;
    var $dhname;
    var $dhexp;
}

class playerUseCode
{
    var $sid;
    var $code;
}

function getPlayerUseCode($sid, $code, $dblj) {
    $playCode = new playerUseCode();
    $sql = "select * from player_use_code WHERE sid = '$sid' AND code = '$code'";
    $ret = $dblj->query($sql);

    $ret->bindColumn('sid', $playCode->sid);
    $ret->bindColumn('code', $playCode->code);

    $ret = $ret->fetch(\PDO::FETCH_ASSOC);
    if ($ret) {
        return $playCode;
    }
    return $ret;
}

function addPlayerCode($sid, $code, $dblj)
{
    $sql = "insert into player_use_code(sid, code) VALUES ('$sid','$code')";
    $dblj->exec($sql);
}

function getduihuan($dhm, $dblj)
{
    $duihuan = new duihuan();
    $sql = "select * from duihuan WHERE dhm = '$dhm'";
    $ret = $dblj->query($sql);
    $ret->bindColumn('dhid', $duihuan->dhid);
    $ret->bindColumn('dhm', $duihuan->dhm);
    $ret->bindColumn('dhzb', $duihuan->dhzb);
    $ret->bindColumn('dhdj', $duihuan->dhdj);
    $ret->bindColumn('dhyp', $duihuan->dhyp);
    $ret->bindColumn('dhyxb', $duihuan->dhyxb);
    $ret->bindColumn('dhczb', $duihuan->dhczb);
    $ret->bindColumn('dhname', $duihuan->dhname);
    $ret->bindColumn('dhexp', $duihuan->dhexp);
    $ret = $ret->fetch(\PDO::FETCH_ASSOC);
    if ($ret) {
        return $duihuan;
    }
    return $ret;
}

class im
{
    var $imuid;
    var $uid;
    var $sid;
}

function isim($uid, $sid, $dblj)
{
    $sql = "select imuid from im WHERE imuid = $uid AND sid = '$sid'";
    $ret = $dblj->query($sql);
    $row = $ret->rowCount();
    return $row;
}

function addim($imuid, $sid, $dblj)
{
    $player = getplayer($sid, $dblj);
    $sql = "insert into `im`(imuid, sid, uid) VALUES ($imuid,'$sid',$player->uid)";
    $dblj->exec($sql);
}

function updateMidBoss($mid, $midBoss, $dblj)
{
        $sql = "update mid set midboss = $midBoss  WHERE mid = '$mid'";
        $dblj->exec($sql);
}