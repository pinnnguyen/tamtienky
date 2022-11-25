<?php

?>
<html lang="en">
<head>
    <meta charset="utf-8" content="width=device-width,user-scalable=no" name="viewport" />
    <title>寻仙纪修复日志</title>
    <link rel="stylesheet" href="css/gamecss.css">
</head>
<body>
<div class="main" style="max-width: 400px">
    <img src="images/11.jpg" width="300" height="200" style="width: 100%"><br/>
    <div id="mainfont">
        Nguyệt lãnh thiên sơn giang tự bích, băng nhai vạn trượng vô lưu ý.<br/>
        Tầm đạo chích ảnh liên hoa lạc, trúc âm liêu lạc thính tân khúc.<br/>
        Tiên nhân thính thùy túy minh nguyệt, đạp lãng đạp phong tùy yến khứ.<br/>
        Kỷ cương nhân luân tâm như tang, nhất túy hồng trần tiêu bách tự.<br/>
        Ma tiền khấu thủ tam thiên niên, hồi thủ hồng trần bất tố tiên.<br/>
    </div>
    <div class="fix">
        <h2>2020/1/1 nội dung cố định:</h2>
        <p>1.Kiểu trang được làm đẹp một chút</p>
        <p>2.Giới hạn trên của việc cường hóa trang bị là 50, 100% cường hóa</p>
        <p>3.Khắc phục sự cố khi thêm bạn bè và trò chuyện riêng tư</p>
        <p>4.Khắc phục sự cố shop không bán được đạo cụ</p>
        <p>5.Khắc phục sự cố Fangshi không thể mua thiết bị và đạo cụ</p>
        <p>6.Cải thiện tốc độ nổ của đá, cài đặt mặc định là cấp nhân vật cao hơn cấp quái vật. Lợn rừng giết cấp đầu tiên không nổ được đá cường hóa<br>Được sửa đổi để cấp độ nhân vật cao hơn quái vật 5 hoặc cao hơn trước khi đá tăng lực không phát nổ và nó có thể phát nổ trong các tình huống khác</p>
        <p>7.Sửa đổi thu phục linh thạch, thiết lập mặc định là cấp nhân vật cao hơn cấp quái vật 5, không nhận được linh thạch (vì hiện tại quái vật đã lên cấp 56, thêm một con nữa, cấp nhân vật&gt;=50Và cấp độ quái vật&gt;=45,Nhận đá tinh linh bình thường)</p>
        <p>8.Làm đẹp nút trò chuyện và đưa nó ra thị trường</p>
        <br>
        <button type="button" onclick="window.location.href='./'">Quay lại trang chủ</button>
    </div>
</div>
<div class="footer">
    <footer>
        <script type="text/javascript" src="js/jquery-1.6.2.min.js"></script>
        <script>
            function changetime(){
                var ary = Array("Chủ Nhật","Thứ Hai","Thứ Ba","Thứ Tư","Thứ Năm","Thứ Sáu","Thứ bảy");
                var Timehtml = document.getElementById('CurrentTime');
                var date = new Date();
                Timehtml.innerHTML = ''+date.toLocaleString()+' '+ary[date.getDay()];
            }
            window.onload = function(){
                changetime();
                setInterval(changetime,1000);
            }
        </script>
        <div id="CurrentTime"><?php echo date('Y-m-d H:i:s') ?></div>
    </footer>
</div>
</body>
</html>
