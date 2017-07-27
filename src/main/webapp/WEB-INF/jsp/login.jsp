<%--
  Created by IntelliJ IDEA.
  User: chenjunxu
  Date: 2017/7/26
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <%@include file="/WEB-INF/include/include.jsp"%>
    <title>login</title>
    <link rel="stylesheet" type="text/css" href="${apps}/static/css/component.css" />
    <script src="${apps}/static/js/html5.js"></script>
</head>
<body>
<div class="container demo-1">
    <div class="content">
        <div id="large-header" class="large-header">
            <canvas id="demo-canvas"></canvas>
            <div class="logo_box">
                <h3>欢迎你</h3>
                <form action="#" name="f" method="post" autocomplete="off">
                    <div class="input_outer">
                        <span class="u_user"></span>
                        <input name="logname" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入账户">
                    </div>
                    <div class="input_outer">
                        <span class="us_uer"></span>
                        <input name="password" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;" value="" type="text" placeholder="请输入密码">
                    </div>
                    <div class="mb2"><a class="act-but submit" href="javascript:void(0);" style="color: #FFFFFF">登录</a></div>
                </form>
            </div>
        </div>
    </div>
</div><!-- /container -->
<script type="application/javascript">
    $(function () {
        $("input[name='password']").focus(function () {
            $(this).attr("type", "password");
        })
    })
</script>
<script src="${apps}/static/js/TweenLite.min.js"></script>
<script src="${apps}/static/js/EasePack.min.js"></script>
<script src="${apps}/static/js/rAF.js"></script>
<script src="${apps}/static/js/login.js"></script>
</body>
</html>
