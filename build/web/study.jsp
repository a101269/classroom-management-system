<%@ page contentType="text/html;charset=GB2312"%>
<%@ page import="java.sql.*"%> 


<HTML>


<BODY>
<title>空教室查询</title>
<CENTER>
  <H1><FONT COLOR=RED>空教室查询
<BR>
  
  <FONT Size=4 COLOR=black>
  <FORM action="rs_free.jsp" method = post name = form>
    <table border=1 bordercolor = green width = 30%>
    <td>教学楼:
    <Select name = "classroom">
       <Option value="教学楼">教学楼</Option>
       <Option value="实验楼">实验楼</Option>
       <Option value="逸夫楼">逸夫楼</option>
    </Selcet> 
    </td>
    <td>
    星期:
    <Select name = "weekday">
       <Option value="星期一">星期一</Option>
       <Option value="星期二">星期二</Option>
       <Option value="星期三">星期三</Option>
       <Option value="星期四">星期四</Option>
       <Option value="星期五">星期五</Option>
       <Option value="星期六">星期六</Option>
       <Option value="星期日">星期日</Option>
    </Selcet>
    </td>
    <td>空闲时间段:
		  <select name="period">
		     <option value="一二节">一二节</option>
		     <option value="三四节">三四节</option>
		     <option value="五六节">五六节</option>
		     <option value="七八节">七八节</option>
		     <option value="九十节">九十节</option>
		  </select></td>
    <td>
    <INPUT type="submit" value="查看" name="submit">
    </td>
   </table>
  </FORM>
  
</CENTER>
</BODY>
<HTML>