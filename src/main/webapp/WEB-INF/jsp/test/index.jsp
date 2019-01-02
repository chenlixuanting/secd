<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>并发测试</title>
</head>
<body>
</body>
<script src="js/user/jquery-3.3.1.js"></script>
<script>
    while(true){
        $.ajax({
            url:"thread/test",
            dataType:"json",
            contentType:"application/json"
        });
    }
</script>
</html>
