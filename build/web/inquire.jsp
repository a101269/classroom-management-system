<%-- 
    Document   : emptyquery
    Created on : 2017-6-3, 8:49:42
    Author     : a101269
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>教室使用情况管理</title>
        <style type="text/css">
        body{background-image:url(img/2a.jpg);}
        </style>
    </head>
    
    <body>

    <center>
        <h5>
            <font color="red">
            <%="你好："+session.getAttribute("user")%><p>
            注意：您只能本学期的教室进行管理
            </font>
        </h5>

        <form action=up.jsp method = post >
            <table border="0">  
                <font color="black">
                <tr><td>校区&nbsp;<input type="radio" name="campus" value="东区">东区
                    <input type="radio" name="campus" value="西区">西区&nbsp;</td></tr>
                <tr><td>教学楼&nbsp;<select name="building">
                  <option value="一教">一教</option>
                  <option value="二教">二教</option>
                  <option value="三教">三教</option>
                  <option value="四教">四教</option>
                </selcet> </td></tr>
                <tr><td>教室类别&nbsp;<select name="roomtype">
                  <option value="普通教室">普通教室</option>
                  <option value="多媒体教室">多媒体教室</option>
                  <option value="阶梯教室">阶梯教室</option>
                    </selcet> </td></tr>
				<tr><td>教室号&nbsp;<input type="text" name="id"></td></tr>
            </table>  
            <table>
                <tr><td>时间&nbsp;&nbsp;&nbsp;<select name="week">
                  <option value="周一">周一</option>
                  <option value="周二">周二</option>
                  <option value="周三">周三</option>
                  <option value="周四">周四</option>
                  <option value="周五">周五</option>
                  <option value="周六">周六</option>
                  <option value="周日">周日</option>                 
                  </selcet> </td> 
                <td><select name="jie">
                  <option value="一二节">一二节</option>
                  <option value="三四节">三四节</option>
                  <option value="五六节">五六节</option>
                  <option value="七八节">七八节</option>
                  <option value="九十节">九十节</option>
                  <option value="十一十二节">十一十二节</option>
                  </selcet> </td></tr>
                  <tr><td>教室状态&nbsp;&nbsp;<select name="state">
                  <option value="空闲">空闲</option>
                  <option value="考试">考试</option>
                  <option value="上课">上课</option>
                  <option value="实验">实验</option>
                  <option value="借用">借用</option>                
                  </selcet> </td> </tr>
                </tr>
                  <td align="center"><input type="submit" name="submit" value="修改"></td></tr>
                  </font>
            </table>   
       </form>       


    <%
    /* 
    request.setCharacterEncoding("UTF-8");
    Class.forName("com.mysql.jdbc.Driver");
    //Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crms","root","123");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/crms?user=root&password=123&useUnicode=true&characterEncoding=UTF-8");
    Statement stmt=con.createStatement();
    String xiaoqu=request.getParameter("xiaoqu");
    String jiaoxuelou=request.getParameter("jiaoxuelou");
    String id=request.getParameter("id");
    ResultSet rs=stmt.executeQuery("select * from shiyongqingkuang where xiaoqu='"+xiaoqu+"' and jiaoxuelou='"+jiaoxuelou+"' and id="+id);

    rs.next();
    rs.close();
    stmt.close();
    con.close();
*/
        %>
        </table> 
      </center>
    </body>
</html>
