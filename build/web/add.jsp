
<%-- 
    Document   : add.jsp
    Created on : 2017-6-4, 9:00:00
    Author     : liwei
--%>

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
        <link rel="stylesheet" type="text/css" href="style.css" />
        <div id="log">
        </div> 
    
    <body>
        <center>
        <h5>
            <font color="red">
            <%="你好管理员："+session.getAttribute("user")%>，
            请添加教室及情况！
            </font>
        </h5>
        <h1>燕山大学教室管理系统</h1>       
        <hr color=white>
        <font size=5>
		<br><br>
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
	<form name="form2" action="add.jsp" method = "post" onSubmit="return check()">
          <table align="center" border="0">  
                <font  color="black">
                <tr><td>校区：<input type="radio" name="campus" value="东区">东区
                    <input type="radio" name="campus" value="西区">西区&nbsp</td></tr>
					<tr></tr>
               <tr><td>教学楼：<select name="building">
                  <option value="一教">一教</option>
                  <option value="二教">二教</option>
                  <option value="三教">三教</option>
                  <option value="四教">四教</option>
                 </selcet></td> <th>教室号:<input name="id" type="text"></th></tr>
                <tr><td>教室类型：<select name="type">
                  <option value="普通教室">普通教室</option>
                  <option value="多媒体教室">多媒体教室</option>
                  <option value="阶梯教室">阶梯教室</option>
                 </selcet></td></tr>
                <tr><td>星期：<select name="week">
                  <option value="周一">周一</option>
                  <option value="周二">周二</option>
                  <option value="周三">周三</option>
                  <option value="周四">周四</option>
                  <option value="周五">周五</option>
                  <option value="周六">周六</option>
                  <option value="周日">周日</option>                 
                  </selcet> </td> </tr>
                <tr><td>节数：<select name="jie">
                  <option value="一二节">一二节</option>
                  <option value="三四节">三四节</option>
                  <option value="五六节">五六节</option>
                  <option value="七八节">七八节</option>
                  <option value="九十节">九十节</option>
                  <option value="十一十二节">十一十二节</option>
                  </selcet> </td></tr> 
				  <tr><td>使用情况:<select name="condition">
                  <option value="空闲">空闲</option>
                  <option value="上课">上课</option>
                  <option value="考试">考试</option>
				  <option value="实验">实验</option>
                    </selcet> </td></tr>
            <tr><th colspan="2"><input type="submit"name="submit"value="确认"></th></tr>
                  </font>

            </table> 
			</form>
<%
response.setCharacterEncoding("UTF-8");
request.setCharacterEncoding("UTF-8");
String submit=request.getParameter("submit");
if(submit!=null&&!submit.equals(""))
{ 
	Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/crms?user=root&password=123&useUnicode=true&characterEncoding=UTF-8");
    Statement stmt=con.createStatement();       
	String campus=request.getParameter("campus");
    String building=request.getParameter("building");  
    String id=request.getParameter("id"); 
	String type=request.getParameter("type");
    String week=request.getParameter("week");  
    String jie=request.getParameter("jie"); 
    String condition=request.getParameter("condition");   
    String sql="select * from  shiyongqingkuang where xiaoqu='"+campus+"' and jiaoxuelou='"+building+"' and id="+id+" and xingqi='"+week+"'and jie='"+jie+"'" ;
	ResultSet rs=stmt.executeQuery(sql);
	 if(rs.next())
            {response.setHeader("refresh","1;url=error.jsp");
	}
	else{ 
		String m="insert into jiaoshi(xiaoqu,jiaoxuelou,id,leibie) values('"+campus+"','"+building+"',"+id+",'"+type+"')";    
	    int i=stmt.executeUpdate(m);
		String s="insert into shiyongqingkuang(xiaoqu,jiaoxuelou,id,xingqi,jie,shiyongqingkuang) values('"+campus+"','"+building+"',"+id+",'"+week+"','"+jie+"','"+condition+"')"; 
		int k=stmt.executeUpdate(s);
	   
	if(k==1&&i==1)//
	{
		out.println("<script language='javaScript'>alert('添加成功，单击确定返回！');</script>");
		response.setHeader("refresh","1;url=add.jsp");
	}
	}
	
	stmt.close();
	con.close();
}
%>
<br><br>
 <a href="manage.jsp">返回上一页</a>&nbsp&nbsp&nbsp <a href="home_admin.jsp">返回主页</a>
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