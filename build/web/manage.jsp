
<%-- 
    Document   : manage.jsp
    Created on : 2017-6-3, 15:00:00
    Author     : liwei
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>燕山大学教室管理系统</title>
    </head>  
        <style type="text/css">
            body{background-image:url(img/2a.jpg);}
        </style>
        <link rel="stylesheet" type="text/css" href="style.css" />
        <div id="log">
        </div> 
    
    <body>
        <center>
        <h5>
            <font color="red">
            <%="你好管理员："+session.getAttribute("user")%>，
            您可以管理教室情况！
            </font>
        </h5>
        <h1>燕山大学教室管理系统</h1>       
        <hr color=white>
        <font size=5>
		<br><br>
		<a href="home_admin.jsp">返回主页</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="allclass.jsp">查看全部教室及使用情况</a>&nbsp
		<br><br>
		<table aglin="center" width="50%" border="1">
		<tr><th colspan="3">请选择管理类型（共三类）</th></tr>
		<tr><td>第一类</td><td>第二类</td><td>第三类</td></tr>
		<tr><td width="40"><a href="change.jsp">更改教室使用情况</a>&nbsp</td><td width="30%"><a href='add.jsp?num="+num+"'>增加教室</a>&nbsp</td><td width="30"> <a href='del.jsp?num="+num+"'>删减教室</a></td></tr>
		
		
	
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
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        燕山大学14计算机科学与技术1班第5组 
        <center>