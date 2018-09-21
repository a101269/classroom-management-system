

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>燕山大学教室管理系统</title>
    </head>  
    <style type="text/css">
        body{background-image:url(img/2a.jpg);}
    </style>
    
    <body>
        <center>
        
        <h1>燕山大学教室管理系统</h1>       
        <hr color=white>
        <font size=5>
  </head>
    
    <body>
    <%  
	request.setCharacterEncoding("UTF-8");
    Class.forName("com.mysql.jdbc.Driver");
    //Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crms","root","1234"); 
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/crms?user=root&password=123&useUnicode=true&characterEncoding=UTF-8"); 
    Statement stmt=con.createStatement();
    String num=request.getParameter("num");
    ResultSet rs=stmt.executeQuery("select * from shiyongqingkuang where  num="+num);
    rs.next(); 
     %>
    
        <h5>
            <font color="red">
            <%="你好："+session.getAttribute("user")%>请修改相关教室信息！<p>
            
            </font>
        </h5>
 <h4 align="left"><a href="index_admin.jsp">返回主页</a><h4>
            <table align="center">   
        <form action=update.jsp method=post >
                <h4 align="center"> 教室信息修改</h4>
                <tr><td>校区&nbsp;<input type="text" name="campus" value="<%=rs.getString(1)%>">
                   </td></tr>
                <tr><td>教学楼&nbsp;<input type="text" name="building" value="<%=rs.getString(2)%>">
                   </td></tr>
				<tr><td>教室号&nbsp;<input type="text" name="id" value="<%=rs.getString(3)%>">
            </table>  
            <table align="center">
                <tr><td>时间&nbsp;&nbsp;&nbsp;<input type="text" name="week" value="<%=rs.getString(4)%>">
                   </td> 
                <td><input type="text" name="jie" value="<%=rs.getString(5)%>">
                  </td></tr>  
                  <tr><td>教室状态&nbsp;<input type="text" name="condition" value="<%=rs.getString(6)%>">
                   </td></tr>
				  <input type="hidden" name="num" value="<%=num%>">
                  <td align="center"><input type="submit" name="submit" value="修改"></td></tr>
            </table> 
 			<br><br><br>
 
</body>
       </form>       

        <% 
            rs.close();
            stmt.close();
            con.close();
        %>
        </table> 
    
    </body>
</html>
