<%-- 
    Document   : score
    Created on : 2017-6-7, 11:01:30
    Author     : a101269
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>成绩查询</title>
    </head>
    <body>
       <center>
        <%
            out.print(session.getAttribute("number")+" "+session.getAttribute("name"));
            out.print("您的成绩是：86分");
        %>
       </center>
    </body>
</html>
