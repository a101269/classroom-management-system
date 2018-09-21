<%-- 
    Document   : login
    Created on : 2017-6-1, 19:10:47
    Author     : a101269
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>系统登陆</title>
    </head>
    
    <body>
        <% 
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","123");
            Statement stmt=con.createStatement();
            String s;
            ResultSet rs;
            
            request.setCharacterEncoding("UTF-8");
            String user=request.getParameter("user");
            String password=request.getParameter("password");  
            String power=request.getParameter("power"); 
            if(power.equals("student"))
            {
                s="select * from student";
                rs=stmt.executeQuery(s);
                while(rs.next())
                {
                    String name=rs.getString("name");
                    String id=rs.getString("id");
                    String pwd=rs.getString("pwd");
                    if(id.equals(user)&&pwd.equals(password))
                    {
                        session.setAttribute("user",name);
                        response.sendRedirect("home.jsp");
                    } 
                    else
                    {
                        out.println("<font color='red'>用户名或密码错误，5秒钟回到登录页面，如果不想等待请点击此链接<a href='login.html'>返回登录页面</a></font>");
                        response.setHeader("refresh","5;url=index.html");
                    }                 
                }  
                stmt.close();
                con.close();
            }
            if(power.equals("teacher"))
            {
                s="select * from teacher";
                rs=stmt.executeQuery(s);
                while(rs.next())
                {
                    String name=rs.getString("name");
                    String id=rs.getString("id");
                    String pwd=rs.getString("pwd");
                    if(id.equals(user)&&pwd.equals(password))
                    {
                        session.setAttribute("user",name);
                        response.sendRedirect("home.jsp");
                    } 
                    else
                    {
                        out.println("<font color='red'>用户名或密码错误，5秒钟回到登录页面，如果不想等待请点击此链接<a href='login.html'>返回登录页面</a></font>");
                        response.setHeader("refresh","5;url=index.html");
                    }
                }  
                stmt.close();
                con.close();
            }        
            if(power.equals("admin"))
            {
                s="select * from admin";
                rs=stmt.executeQuery(s);
                while(rs.next())
                {
                    String name=rs.getString("name");
                    String id=rs.getString("id");
                    String pwd=rs.getString("pwd");
                    if(id.equals(user)&&pwd.equals(password))
                    {
                        session.setAttribute("user",name);
                        response.sendRedirect("home_admin.jsp");
                    }
                    else
                    {
                        out.println("<font color='red'>用户名或密码错误，5秒钟回到登录页面，如果不想等待请点击此链接<a href='login.html'>返回登录页面</a></font>");
                        response.setHeader("refresh","5;url=index.html");
                    }                 
                }  
                stmt.close();
                con.close();
            }                  
        %>
    </body>
</html>
