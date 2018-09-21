<%-- 
    Document   : index.jsp
    Created on : 2017-6-1, 16:07:42
    Author     : a101269
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <div>
        <h5>
            <font color="red">
            <%="你好："+session.getAttribute("user")%>，
            </font>
        </h5>
        <center>
        <h1>燕山大学教室管理系统</h1>       
        <hr color=white>
        <font size=5>
        <input type="button" value="空闲教室查询"  onclick="window.open('empty.jsp')">
        <input type="button" value="教室使用情况查询"  onclick="window.open('use.jsp')"> 
        </font>   
        </center>
        <center>
        <p>
        </div>
            
        <div>
        <p>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>          
        <center>
        友情链接：<a href="http://ysu.edu.cn">燕山大学官网</a>&nbsp
        <a href="http://ise.ysu.edu.cn">燕山大学信息科学与技术学院</a>&nbsp
        <a href="http://library.ysu.edu.cn">燕山大学图书馆</a>&nbsp
        <a href="http://jwc.ysu.edu.cn">燕山大学教务系统</a>&nbsp   
        </center> 
        </div>
            
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
