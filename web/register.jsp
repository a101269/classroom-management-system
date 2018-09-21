<%-- 
    Document   : register
    Created on : 2017-6-5, 18:29:49
    Author     : a101269
--%>
<%@ page contentType="text/html; charset=UTF-8" import="java.sql.*"%>
<html>
  <head>
    <title>注册信息处理</title>
        <style type="text/css">
            body{background-image:url(img/2a.jpg);}
        </style>
        <link rel="stylesheet" type="text/css" href="style.css" />
        <div id="log">
        </div>
  </head>
  <body>
    <%

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/login?user=root&password=123&useUnicode=true&characterEncoding=UTF-8");
            Statement stmt=con.createStatement();

            request.setCharacterEncoding("UTF-8");

              String username=request.getParameter("username");
              String truename=request.getParameter("truename");
              String password=request.getParameter("password");
              String sqll="insert into student(id,name,pwd) values('"+username+"','"+truename+"','"+password+"')";

              String sql="select * from student where id='"+username+"'";
              ResultSet rs=stmt.executeQuery(sql);
              if(rs!=null && rs.next())

                {
    %>
          <center><h3>该学号已经被注册，请<a href="register.html">返回</a>！</h3></center>
    <%   


                }
        else{

        int result=stmt.executeUpdate(sqll);

         if(result==1)
         {
 %>
            <center>
            <h2>注册成功!</h2>
            <h3><a href="index.jsp">请点击到登陆界面登陆</a></h3>
            </center>
                <%
         }
         else
         {
    %>

                <center><h3>注册失败！请重新注册<a href="register.html">注册</a>！</h3></center>
    <%
         }
                stmt.close();
                con.close();
      }
    %>
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

