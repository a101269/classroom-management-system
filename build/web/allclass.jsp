<%-- 
    Document   : del.jsp
    Created on : 2017-6-5, 8:00:00
    Author     : liwei
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>燕山大学教室管理系统</title>
        <style type="text/css">
            body{background-image:url(img/2a.jpg);}
        </style>
        <link rel="stylesheet" type="text/css" href="style.css" />
        <div id="log">
        </div>  
    </head>  
    
    <body>
        <center>
        <h5>
            <font color="red">
            <%="你好管理员："+session.getAttribute("user")%>，
            请删除教室及情况！
            </font>
        </h5>
        <h1>燕山大学教室管理系统</h1>       
        <hr color=black>
        <font size=5>
		 <a href="manage.jsp">返回上一页</a>&nbsp&nbsp&nbsp
         <a href="home_admin.jsp">返回主页</a>
		 <br>
	<table align="center"width="70%"border=1>
    <tr><th colspan="6"><center>当前全部教室及其使用情况</th></tr>
        <tr><th>校区</th><th>教学楼</th><th>教室号</th><th>星期</th><th>节数</th><th>使用情况</th></tr>
           <%
           Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/crms?user=root&password=123&useUnicode=true&characterEncoding=UTF-8");
           Statement stmt=con.createStatement();
           String s="select * from shiyongqingkuang";
           ResultSet rs =stmt.executeQuery(s);
           while(rs.next())
           {
           out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getInt(3)+"</td><td>"+rs.getString(4)+"</td>><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td></tr>");
        }
        rs.close();
        stmt.close();
        con.close();
        %>
    </table>
    <div id="footer">
      <div id="foot">
        <ul>
          <li>
            <img class="copyrightimg" height="36" width="140" src="./f2.gif">
            <img height="36" width="1" src="./f3.gif">
          </li>
          <li style="margin-top:5px;margin-left:10px">
            河北省秦皇岛市河北大街西段438号  TEL:+86-335-8057100  邮编：066004<br>Copyright
            <font face="Times New Roman,Arial,Helvetica,sans-serif;">©</font>2010 技术服务与支持：燕山大学信息技术中心 冀ICP备05023975号-1 
          </li>
        </ul>
      </div>
    </div>
    </body>
</html>