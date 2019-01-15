//为a标签注册onclick事件
//按秒计算
var maxtime = 6;
var sum = document.getElementById('sum').value;
var id = document.getElementById('id').value;
var Difficulty = document.getElementById('Difficulty').value;
var tid = document.getElementById('tid').value;

function CountDown() {
    if (maxtime >= 0) {
        msg = "距离结束还有" + maxtime + "秒";
        document.all["timer"].innerHTML = msg;
        --maxtime;
    } else {
        window.location.href = 'playServlet?type=judge&&id=' + id + '&&fid=0&&tid=' + tid + '&&sum=' + sum + '&&Difficulty=' + Difficulty;
    }
    timer = setTimeout("CountDown()", 1000);
}