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
        <title>空教室查询</title>
        <style type="text/css">
        body{background-image:url(img/2a.jpg);}
        </style>
        <link rel="stylesheet" type="text/css" href="style.css" />
        <div id="log">
        </div>
        <script>
            function check() 
            {
                if (form2.campus.value == "")
                {
                    alert("校区不能为空");
                    return false;
                }
                else
                {
                    return true;
                }
            }
        </script> 
    </head>
    
    <body>
        <font size=3>
        <a href="home.jsp">返回主页</a>
        </font>     
    <center>
        <h5>
            <font color="red">
            <%="你好："+session.getAttribute("user")%>，
            注意：您只能查询本学期的教室
            </font>
        </h5>

        <form name="form2" action=emptyquery.jsp method = post onSubmit="return check()">
            <table border="0">  
                <font color="black">
                <tr><td>校区:<input type="radio" name="campus" value="东区">东区
                    <input type="radio" name="campus" value="西区">西区&nbsp</td>
                <td>教学楼<select name="building">
                  <option value="全部">全部</option>                   
                  <option value="一教">一教</option>
                  <option value="二教">二教</option>
                  <option value="三教">三教</option>
                  <option value="四教">四教</option>
                </selcet> /td>
                <td>教室类别<select name="roomtype">
                  <option value="全部">全部</option>
                  <option value="普通教室">普通教室</option>
                  <option value="多媒体教室">多媒体教室</option>
                  <option value="阶梯教室">阶梯教室</option>
                    </selcet> </td></tr>
            </table>   
            <table>
                <td><select name="week">
                  <option value="周一">周一</option>
                  <option value="周二">周二</option>
                  <option value="周三">周三</option>
                  <option value="周四">周四</option>
                  <option value="周五">周五</option>
                  <option value="周六">周六</option>
                  <option value="周日">周日</option>                 
                  </selcet> </td> 
                </td>
                <td><select name="jie">
                  <option value="一二节">一二节</option>
                  <option value="三四节">三四节</option>
                  <option value="五六节">五六节</option>
                  <option value="七八节">七八节</option>
                  <option value="九十节">九十节</option>
                  <option value="十一十二节">十一十二节</option>
                  </selcet> </td>
                  <td><input type="submit" name="sub" value="空教室查询"</td></tr>
                  </font>
            </table>   
       </form>
    </center>
    <hr>
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
