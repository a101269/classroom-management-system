<%-- 
    Document   : newjsp
    Created on : 2017-6-7, 10:48:42
    Author     : a101269
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>注册成功</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            String number=request.getParameter("number");
            String password=request.getParameter("password");  
            String name=request.getParameter("name"); 
            session.setAttribute("name",name);
            session.setAttribute("number",number);
            out.println("恭喜您注册成功");
            out.println("您的学号是"+number);
            out.println("您的姓名是"+name);
        %>
         <a href="score.jsp">查看成绩</a>
    </body>
</html>
