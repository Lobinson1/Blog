<%--
  Created by IntelliJ IDEA.
  User: chenjunxu
  Date: 2017/8/9
  Time: 14:19
  登录出错页面
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/WEB-INF/include/include.jsp"%>
    <title>登录失败</title>
</head>
<body>
<div style="margin: 0 auto; width: 500px; height: 50px;">
    <span id="login-error-msg" style="font-size: 20px; font-weight: bold;">登录失败(${errorMsg})！5秒后自动<a href="${apps}/manager/login" style="color: #708090">跳转</a></span>
</div>
</body>
<script type="text/javascript">
    var count = 4;
    function timer() {
        console.log("${errorMsg}");
        $("#login-error-msg").html("登录失败(${errorMsg})！"+count+"秒后自动<a style=\"color:#708090\" href=\"${apps}/manager/login\">跳转</a>");
        count--;
        if (count === 0){
            location.href = "${apps}/manager/login";
        }
    }
    setInterval(timer, 1000);
</script>
</html>
