window.onload = function () {
    var nameElement = document.getElementsByName("name")[0];
    //为昵称选项注册onblur事件
    nameElement.onblur = function () {
        var name = this.value;

        //1.获取XMLHttpRequest对象
        var req = getXMLHttpRequest();

        //4.处理响应结果
        req.onreadystatechange = function () {
            if (req.readyState == 4) {//XMLHttpRequest对象读取成功
                if (req.status == 200) {//服务器相应正常
                    var msg = document.getElementById("msg");
                    //根据返回的结果显示不同的信息
                    if (req.responseText == "true") {
                        msg.innerHTML = " <p style='color:red'>该昵称已注册</p>";
                    } else {
                        msg.innerHTML = "<p style='color:greenyellow'>该昵称未注册</p>";
                    }
                }
            }
        }

        //2.建立一个连接
        req.open("get", "ajaxServlet?name=" + name);
        //${pageContext.request.contextPath}/

        //3.发送get请求
        req.send(null);
    }
}

function getXMLHttpRequest() {
    var xmlhttp;
    if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
    } else {// code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    return xmlhttp;
}