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
    <link rel="stylesheet" href="${apps}/static/css/login.css">
</head>
<body>
<div class="container">
    <div class="login-form">
        <h1>Login</h1>
        <form id="uForm" action="${apps}/login/login" method="post" class="layui-form">
            <div class="form-group log-status">
                <input type="text" class="form-control" placeholder="Username " id="UserName" name="username" lay-verify="username">
                <i class="fa fa-user"></i>
            </div>
            <span class="alert">用户名不存在</span>
            <div class="form-group">
                <input type="password" class="form-control" placeholder="Password" id="Passwod" name="password">
                <i class="fa fa-lock"></i>
            </div>
            <a class="link" href="#">Lost your password?</a>
            <button type="button" class="log-btn" lay-submit lay-filter="username">Log in</button>
        </form>
    </div>
</div><!-- /container -->
<script type="application/javascript">

    layui.use('form', function(){
        var form = layui.form();

        form.verify({
            username: function (value, item) {
                return false;
            }
        });

        form.on("submit(username)", function (data) {
            var username = data.field.username;
            var valid = false;
            $.ajax({
                url: "${apps}/login/checkUsername",
                type: "get",
                data: {
                    username: username
                },
                success: function (data) {
                    console.log(data);
                    if (data === 'false'){
                        valid = true;
                        console.log(data);
                    }else {
                        valid = false;
                        $('.log-status').addClass('wrong-entry');
                        $('.alert').fadeIn(500);
                        setTimeout( "$('.alert').fadeOut(1500);",3000 );
                    }
                }
            });
            if (!valid){
                return valid;
            }
        })
    });

</script>
</body>
</html>
