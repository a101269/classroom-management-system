<%@page import="java.sql.*" pageEncoding="UTF-8"%>


<html>
  <head>   
    <title>教室状态更新</title>
  </head>
  
  <body>
  <%
   request.setCharacterEncoding("UTF-8");
   String num=request.getParameter("num");
   String xiaoqu=request.getParameter("campus");
   String jiaoxuelou=request.getParameter("building");
   String id=request.getParameter("id");
   String xingqi=request.getParameter("week");
   String jie=request.getParameter("jie");
   String shiyongqingkuang=request.getParameter("condition");
   Class.forName("com.mysql.jdbc.Driver");
  // Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crms","root","1234");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/crms?user=root&password=123&useUnicode=true&characterEncoding=UTF-8");
    Statement stmt=con.createStatement();
    
    String sql="update shiyongqingkuang set xiaoqu='"+xiaoqu+"',jiaoxuelou='"+jiaoxuelou+"',id="+id+",xingqi='"+xingqi+"',jie='"+jie+"',shiyongqingkuang='"+shiyongqingkuang+"' where num="+num ;
     int i=stmt.executeUpdate(sql);
     if(i==1){
     	out.println("<script language='javaScript'> alert('修改成功，单击确定返回管理界面。');</script>");
     	response.setHeader("refresh","1;url=manage.jsp");
		}
     	else {
			out.println("修改失败");
			}
     stmt.close();
     con.close();
   %>

  </body>
</html>
