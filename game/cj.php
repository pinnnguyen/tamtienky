<?php
$selfym = $_SERVER['PHP_SELF'];
$html = <<<HTML
<div class="text-white p-2">
    <form action=$selfym method="get">
        <div>
        Tên nhân vật:
     </div>
        <input type="hidden" name="cmd" value="cjplayer">
        <input type="hidden" name="token" value='$token'>
        <p><input type="text" name="username" maxlength="12"></p>
        <p><label>Nam:<input type="radio" name="sex" value="1" checked></label>
            <label>Nữ<input type="radio" name="sex" value="2"></label>
        </p>
        <button class="text-white bg-gradient-to-r from-cyan-500 to-blue-500 hover:bg-gradient-to-bl focus:ring-4 focus:outline-none focus:ring-cyan-300 dark:focus:ring-cyan-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center mr-2 mb-2" type="submit" value="Tạo">Tạo</button>
    </form>
</div>

HTML;
echo $html;






