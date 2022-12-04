<?php
$selfym = $_SERVER['PHP_SELF'];
$html = <<<HTML
<div class="text-white p-2 h-full">
    <form class="h-full bg-[#6ca4bc75] p-2 relative" action="$selfym" method="get">
        <div>
            <p class="text-center text-xl font-bold uppercase mb-1">Hệ phái</p>
            <div class="flex items-start justify-between grid grid-cols-2">
                <div class="mb-4 m-1 bg-[#00000059] p-2 h-[245px] overflow-scroll">
                    <p class="text-center font-semibold">Tu tiên</p>
                    <img class="w-full h-[90px] object-cover" src="/figure/images/fs_007_1.png" alt="" />
                    <p class="font-10 mt-1">Khắc chế: Gây thêm <strong class="text-red">10%</strong> sát thương gây lên người chơi hệ tu ma</p>
                    <span class="font-10 font-normal">Huyết mạch: </span><span class="font-10">Tăng <strong class="text-red">10%</strong> tấn công, <strong>5%</strong> sát thương bạo kích cơ bản (Không bao gồm trang bị)</span>
                     <p class="text-center"><input type="radio" name="class" value="1" checked /></p>
                </div>
                <div class="mb-4 m-1 bg-[#00000059] p-2 h-[245px] overflow-scroll">
                    <p class="text-center font-semibold">Tu yêu</p>
                    <img class="w-full h-[90px] object-cover" src="/figure/images/fs_007_2.png" alt="" />
                    <p class="font-10 mt-1">Khắc chế: Gây thêm <strong class="text-red">10%</strong> sát thương gây lên người chơi hệ tu tiên</p>
                    <span class="font-10 font-normal">Huyết mạch: </span><span class="font-10">Tăng <strong class="text-[#03a9f4]">10%</strong> sinh lực, <strong class="text-green">5%</strong> phòng thủ cơ bản (Không bao gồm trang bị)</span>
                     <p class="text-center"><input type="radio" name="class" value="2" checked /></p>
                </div>
                <div class="mb-4 m-1 bg-[#00000059] p-2 h-[245px] overflow-scroll">
                    <p class="text-center font-semibold">Nhân tộc</p>
                    <img class="w-full h-[90px] object-cover" src="/figure/images/fs_007_3.png" alt="" />
                    <p class="font-10 mt-1">Khắc chế: Gây thêm <strong class="text-red">10%</strong> sát thương gây lên người chơi hệ tu yêu</p>
                    <span class="font-10 font-normal">Huyết mạch: </span><span class="font-10">Tăng <strong class="text-red">5%</strong> Tấn công, <strong class="text-[#03a9f4]">5%</strong> sinh lực, <strong class="text-green">5%</strong> phòng thủ (Không bao gồm trang bị)</span>
                     <p class="text-center"><input type="radio" name="class" value="3" checked /></p>
                </div>
                <div class="mb-4 m-1 bg-[#00000059] p-2 h-[245px] overflow-scroll">
                    <p class="text-center font-semibold">Tu ma</p>
                    <img class="w-full h-[90px] object-cover" src="/figure/images/fs_007_4.png" alt="" />
                    <p class="font-10 mt-1">Khắc chế: Gây thêm <strong class="text-red">10%</strong> sát thương gây lên người chơi nhân tộc</p>
                    <span class="font-10 font-normal">Huyết mạch: </span><span class="font-10">Tăng <strong class="text-red">5%</strong> Tấn công, <strong>10%</strong> sát thương bạo kích (Không bao gồm trang bị)</span>
                    <p class="text-center"><input type="radio" name="class" value="4" checked /></p>
                </div>
            </div>
        </div>
        <div class="absolute bottom-0 left-0 mb-4 flex w-full justify-center items-center">
            <div class="p-2">
                <label class="p-1">Nam:<input type="radio" name="sex" value="1" checked /></label>
                <label class="p-1">Nữ<input type="radio" name="sex" value="2" /></label>
            </div>
            <div class="">
                <input type="hidden" name="cmd" value="cjplayer" />
                <input type="hidden" name="token" value="$token" />
                <p><input placeholder="Tên nhân vật" class="w-[160px] border border-[#dcc18d] bg-[#2d251d] rounded h-[35px] leading-[35px] text-center flex items-center justify-center" type="text" name="username" maxlength="16" /></p>
            </div>

            <div class="ml-2">
                <button class="button_yes !w-[70px] !m-0 !rounded" type="submit" value="Tạo">Tạo</button>
            </div>
        </div>
    </form>
</div>

HTML;
echo $html;






