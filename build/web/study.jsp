<%@ page contentType="text/html;charset=GB2312"%>
<%@ page import="java.sql.*"%> 


<HTML>


<BODY>
<title>�ս��Ҳ�ѯ</title>
<CENTER>
  <H1><FONT COLOR=RED>�ս��Ҳ�ѯ
<BR>
  
  <FONT Size=4 COLOR=black>
  <FORM action="rs_free.jsp" method = post name = form>
    <table border=1 bordercolor = green width = 30%>
    <td>��ѧ¥:
    <Select name = "classroom">
       <Option value="��ѧ¥">��ѧ¥</Option>
       <Option value="ʵ��¥">ʵ��¥</Option>
       <Option value="�ݷ�¥">�ݷ�¥</option>
    </Selcet> 
    </td>
    <td>
    ����:
    <Select name = "weekday">
       <Option value="����һ">����һ</Option>
       <Option value="���ڶ�">���ڶ�</Option>
       <Option value="������">������</Option>
       <Option value="������">������</Option>
       <Option value="������">������</Option>
       <Option value="������">������</Option>
       <Option value="������">������</Option>
    </Selcet>
    </td>
    <td>����ʱ���:
		  <select name="period">
		     <option value="һ����">һ����</option>
		     <option value="���Ľ�">���Ľ�</option>
		     <option value="������">������</option>
		     <option value="�߰˽�">�߰˽�</option>
		     <option value="��ʮ��">��ʮ��</option>
		  </select></td>
    <td>
    <INPUT type="submit" value="�鿴" name="submit">
    </td>
   </table>
  </FORM>
  
</CENTER>
</BODY>
<HTML>