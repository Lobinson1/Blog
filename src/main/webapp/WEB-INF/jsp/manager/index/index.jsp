<%--
  Created by IntelliJ IDEA.
  User: chenjunxu
  Date: 2017/10/17
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>index</title>
    <%@include file="/WEB-INF/include/include.jsp"%>
    <link rel="stylesheet" href="${apps}/static/manager/index/css/clock.css">

</head>
<body>
    <div>
        <div id="clock" class="light" style="float: right">
            <div class="display">
                <div class="weekdays"></div>
                <div class="ampm"></div>
                <div class="alarm"></div>
                <div class="digits"></div>
            </div>
            <%--<%@include file="/WEB-INF/include/weather.jsp"%>--%>
        </div>



    </div>

    <script src="${apps}/static/manager/index/js/moment.min.js"></script>
    <script src="${apps}/static/manager/index/js/clock.js"></script>


</body>
</html>
