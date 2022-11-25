<?php
$selfym = $_SERVER['PHP_SELF'];
$html = <<<HTML
    <form action=$selfym method="get">
        Tên nhân vật:
        <input type="hidden" name="cmd" value="cjplayer">
        <input type="hidden" name="token" value='$token'>
        <p><input type="text" name="username" maxlength="7"></p>
        <p><label>Nam:<input type="radio" name="sex" value="1" checked></label>
            <label>Nữ<input type="radio" name="sex" value="2"></label>
        </p>
        <button type="submit" value="Tạo">Tạo</button>
    </form>

HTML;
echo $html;






