<?php
require_once($_SERVER['DOCUMENT_ROOT'] . "/pdo.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/class/encode.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/class/player.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/pet/rule.php");


$sid = $_GET['sid'];
$canshu = $_GET['canshu'];
$cwid = $_GET['cwid'];

$encode = new \encode\encode();
$player = \player\getplayer($sid, $dblj);
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$cwhtml = '';
$cwnamehtml = '';
$chouqucmd = $encode->encode("cmd=chongwu&canshu=chouqu&sid=$sid");

$current_pet_info = "";

if (isset($canshu)) {
    switch ($canshu) {
        case 'chouqu':
            #Trieu hoi
            if (\player\change_cuc_pham_nguyen_thach(2, 50, $sid, $dblj)) {
                \player\addchongwu($sid, $dblj);
            } else {
                echo "Không đủ Cực phẩm linh thạch<br/>";
            }
            break;
        case 'chuzhan':
//            # Ra tran
//            \player\changeplayerusepet($cwid, $sid, $dblj);
            \player\changeplayersx('cw', $cwid, $sid, $dblj);
            $player = \player\getplayer($sid, $dblj);
            break;
        case 'shouhui':
            \player\changeplayersx('cw', 0, $sid, $dblj);
            $player = \player\getplayer($sid, $dblj);
            break;
        case 'fangsheng':
            # Phong thich
            \player\delechongwu($cwid, $sid, $dblj);
            break;
        case 'cwinfo':
            $chongwu = \player\getchongwu($cwid, $dblj);
            $cwpz = $pzarr[$chongwu->cwpz];
            $chongwu->cwpz = $chongwu->cwpz * 10;

            $cwhtml = <<<HTML
<div class="p-4 leading-6">
            <div>
            Tên: [$chongwu->cwname]
</div>
            <div>
            Class: $chongwu->cwlv
</div>
            <div>
            Phẩm: $cwpz
</div>
            <div>
            K.nghiệm: $chongwu->cwexp/$chongwu->cwmaxexp
</div>
           <div>
            K.huyết: ($chongwu->cwhp/$chongwu->cwmaxhp)
</div>
           <div>
            C.kích: $chongwu->cwgj
</div>
           <div>
            P.ngự: $chongwu->cwfy
</div>
            <div>
            B.kích: $chongwu->cwbj
</div>
            <div>
            H.máu: $chongwu->cwxx
</div>
            <div>
            K.huyết trưởng thành: $chongwu->uphp
</div>
           <div>
            C.kích trưởng thành: $chongwu->upgj
</div>
           <div>
            P.ngự trưởng thành: $chongwu->upfy
</div>
            <div>
            Phẩm chất [$cwpz] thưởng khi nâng cấp $chongwu->cwpz%
</div>
</div>

HTML;
            echo $cwhtml;
            exit();
            break;
    }
}

$allcw = \player\getchongwuall($sid, $dblj);
if ($allcw) {
    foreach ($allcw as $cw) {
        $cwid = $cw['cwid'];
        if ($cwid != 0) {
            $chongwu = \player\getchongwu($cwid, $dblj);
            $cwpz = $pzarr[$chongwu->cwpz];

            $current_pet_info = <<<HTML
            <div class="p-2">
            
                       <div>
                        K.huyết trưởng thành: $chongwu->uphp
            </div>
                       <div>
                        C.kích trưởng thành: $chongwu->upgj
            </div>
                       <div>
                        P.ngự trưởng thành: $chongwu->upfy
            </div>
                        <div>
                        Phẩm chất [$cwpz] thưởng khi nâng cấp $chongwu->cwpz%
            </div>
            </div>

HTML;

        }

        $czcmd = '';
        if ($cwid != $player->cw) {
            $czcmd = $encode->encode("cmd=chongwu&canshu=chuzhan&cwid=$cwid&sid=$sid");
            $fscmd = $encode->encode("cmd=chongwu&canshu=fangsheng&cwid=$cwid&sid=$sid");
            $czcmd = <<<HTML
            <a class="flex items-center pet-handle mr-2 h-[22px] bg-[#cf3917] text-xs"
            onclick="handlePet('$sid', 'chuzhan', '$cwid')">
                Ra trận
            </a>
HTML;
            $fscmd = <<<HTML
            <a class="bg-[#333333] flex items-center h-[22px] text-xs" onclick="handlePet('$sid', 'fangsheng', '$cwid')">Phóng thích</a>
HTML;
            $gncmd = $czcmd . $fscmd;
        } else {
            $shcmd = $encode->encode("cmd=chongwu&canshu=shouhui&cwid=$cwid&sid=$sid");
            $shcmd = <<<HTML
                <a class="h-[30px] bg-[#333333] flex items-center pet-handle mr-2 h-[22px] bg-[#cf3917] text-xs" onclick="handlePet('$sid', 'shouhui', '$cwid')">Triệu hồi</a>
HTML;
            $gncmd = '<span class="mr-4">(Đã xuất chiến)</span>' . $shcmd;
        }

        $cwinfo = $encode->encode("cmd=chongwu&cwid=$cwid&canshu=cwinfo&sid=$sid");
        $petname = $cw['cwname'];
        $cwnamehtml .= <<<HTML
            <div class='p-4 flex border border-2 m-5 rounded-sm relative flex-col' onclick="handlePet('$sid', 'cwinfo', '$cwid')">
            <div class='flex items-center mt-3'>
            <img src='images/gif/pet.gif' class='w-[120px]' />
            $current_pet_info
            <div class='absolute top-[6px] right-[6px] flex'>$gncmd</div>
            </div>
            <a>$petname</a>
            </div>
HTML;
    }
} else {
    $cwnamehtml = <<<HTML
<div class="h-[100px] text-center mt-10">
Bạn hiện không có vật nuôi
</div>
HTML;
}


$cwhtml = <<<HTML
<div>
    $cwnamehtml
    <div class="flex items-center justify-center mb-4" onclick="handlePet('$sid', 'chouqu', '')"><span class="flex items-center pet-handle mr-2 h-[22px] bg-[#cf3917] text-xs">Triệu hồi</span>[50 Cực phẩm linh thạch]</div>
</div>
<script>
function handlePet(_sid, _canshu, _cwid) {
    const url = 'pet/pet.php?sid=' + _sid + '&canshu=' + _canshu + '&cwid=' + _cwid
      $.get(url, (response) => {
         $('.teleport').html(response)
     })
}
</script>
HTML;
echo $cwhtml;