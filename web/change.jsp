<%@ page contentType="text/html"  import="java.sql.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>教室修改情况</title>
        <style type="text/css">
            body{background-image:url(img/2a.jpg);}
        </style>
        <link rel="stylesheet" type="text/css" href="style.css" />
        <div id="log">
        </div> 
  </head>
  
  <body>
  	<center>修改教室信息</center><p>
  	<table align="center" width="50%" border="1">
  	<tr><th align="center">校区</th><th align="center">教学楼</th><th align="center">教室号</th><th align="center">星期</th><th align="center">节数</th><th align="center">使用情况</th><th align="center">管理</th>
  	<%
  	Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/crms?user=root&password=123&useUnicode=true&characterEncoding=UTF-8");
  	Statement stmt=con.createStatement();
  	String s="select * from shiyongqingkuang";
  	ResultSet rs=stmt.executeQuery(s);
  	while(rs.next())
  	{   
		int num=rs.getInt(7);
  		out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td><a href='changecheck.jsp?num="+num+"'>修改</a></td></tr>");
  	}
  	rs.close();
  	stmt.close();
  	con.close();
  	 %>
  	</table>
  </body>
</html>
