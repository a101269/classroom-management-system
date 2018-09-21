package servlet_bean;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class loginfilter implements Filter 
{
    protected FilterConfig filterConfig;
	
	public void destroy()
        {
            filterConfig=null;
	}

	public void doFilter(ServletRequest request, ServletResponse response,FilterChain chain) throws IOException, ServletException 
        {
            HttpServletRequest req=(HttpServletRequest)request;
            HttpServletResponse resp=(HttpServletResponse)response;
            HttpSession session=req.getSession();
            String reqURL=req.getServletPath();
            //对于登录页面login.html和出错提示页面loginError.html不需要过滤
            if(!(reqURL.equals("/index.html") || reqURL.equals("/loginerror1.html") || reqURL.equals("/loginerror2.html")
                || reqURL.equals("/register.html") || reqURL.equals("/register.jsp") || reqURL.equals("/checkname.jsp")||reqURL.equals("/login")))
            {
		if(session.getAttribute("login")==null ||!session.getAttribute("login").equals("true"))//假定session存储的正确登录信息为（"login","true"）
                {
                    resp.sendRedirect("loginerror1.html");
                    return;
		}
            }
            chain.doFilter(request, response);
	}

	public void init(FilterConfig filterConfig) throws ServletException
        {
             this.filterConfig=filterConfig;
	}

}
