package servlet_bean;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*; 

/**
 *
 * @author a101269
 */
public class login extends HttpServlet
{   
      
    public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
    {
        doPost(request,response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
    {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String user=request.getParameter("user");
        String password=request.getParameter("password");  
        String power=request.getParameter("power");            
        RequestDispatcher rd=null;  
        System.out.println(user+";"+password+";"+power);
            
        if(power.equals("student"))
        {
            DBBean dbbean=new DBBean();
            String s="select * from student";
            ResultSet rs=dbbean.executeQuery(s);
            try{
            while(rs.next())
            {
                String name=rs.getString("name");
                String id=rs.getString("id");
                String pwd=rs.getString("pwd");
                if(id.equals(user)&&pwd.equals(password))
                { 
                    dbbean.close();
                    request.getSession().setAttribute("login","true");
                    request.getSession().setAttribute("user",name);
                    rd=request.getRequestDispatcher("home.jsp");
                    rd.forward(request, response);
                } 
            }
            }catch(Exception e){}
            response.sendRedirect("loginerror2.html");         
        }
     
        if(power.equals("teacher"))
        {
            DBBean dbbean=new DBBean();
            String s="select * from teacher";
            ResultSet rs=dbbean.executeQuery(s);
            try{
            while(rs.next())
            {
                String name=rs.getString("name");
                String id=rs.getString("id");
                String pwd=rs.getString("pwd");
                if(id.equals(user)&&pwd.equals(password))
                { 
                    dbbean.close();
                    request.getSession().setAttribute("login","true");
                    request.getSession().setAttribute("user",name);
                    rd=request.getRequestDispatcher("home.jsp");
                    rd.forward(request, response);
                } 
            }
            }catch(Exception e){}
            response.sendRedirect("loginerror2.html");         
        }  
        
        if(power.equals("admin"))
        {
            DBBean dbbean=new DBBean();
            String s="select * from admin";
            ResultSet rs=dbbean.executeQuery(s);
            try{
            while(rs.next())
            {
                String name=rs.getString("name");
                String id=rs.getString("id");
                String pwd=rs.getString("pwd");
                if(id.equals(user)&&pwd.equals(password))
                { 
                    dbbean.close();
                    request.getSession().setAttribute("login","true");
                    request.getSession().setAttribute("user",name);
                    rd=request.getRequestDispatcher("home.jsp");
                    rd.forward(request, response);
                } 
            }
            }catch(Exception e){}
            response.sendRedirect("loginerror2.html");         
        }      
    }

}
