
<%@page import="java.sql.*" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Check</title>
  </head>  
  <body>
<% 
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/login?user=root&password=123&useUnicode=true&characterEncoding=UTF-8");
            Statement stmt=con.createStatement();

            request.setCharacterEncoding("UTF-8");

              String username=request.getParameter("username");
              String sql="select * from student where id='"+username+"'";
              ResultSet rs=stmt.executeQuery(sql);
              if(rs!=null && rs.next())
                out.println("该用户名已经被占用!");
              else
                out.print("该用户名可用！");

                stmt.close();
                con.close();
 
%>
  </body>
</html>
