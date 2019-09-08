package com.ydssbbnc.prj.wobbs;
import com.ydssbbnc.prj.wobbs.FindUserAvatar;
import com.ydssbbnc.prj.wobbs.UpdateUSER_ALL_IN_ONECookie;
import com.ydssbbnc.prj.wobbs.RegisteWobbs;//import database operation api 
import javax.servlet.http.Cookie;
import java.io.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.http.*;
/*Function:handle registe request from registe web page
 *Note:this java class registed in web.xml(tomcat) as RegisteServlet
 *@author:ydssbbnc
 *email:ydssbbnc@gmail.com/ydssbbnc@163.com
 *Last update time:Wed Aug  7 21:21:52 2019 
 *TAG:UNFINISHED!!!
 */
public class RegisteServlet extends HttpServlet{
    public void doGet(HttpServletRequest req,HttpServletResponse rsp) throws ServletException,IOException{
	req.setCharacterEncoding("utf-8");//set encode to prevent garbled
	rsp.setCharacterEncoding("utf-8");//set encode to prevent garbled
	final String NAME=req.getParameter("name");
	final String PWD=req.getParameter("pwd");
	final String EMAIL=req.getParameter("email");
	try{
	    if(new RegisteWobbs().RegUser(NAME,PWD,EMAIL)){
		//Handle success logical,redirect to index page
		new UpdateUSER_ALL_IN_ONECookie(rsp,NAME);
		rsp.sendRedirect("/prj/wobbs/page/personalCenter.jsp");
	    }
	    else{
		//Handle failed logical,alert and redirect to registe
		rsp.setContentType("text/html;charset=utf-8");
		PrintWriter out=rsp.getWriter();
		out.print("<script language='javascript'>alert('注册失败，用户名已被占用，请重新注册');window.location.href='/prj/wobbs/page/registe.html';</script>");
	    }
	}catch(SQLException e){
	    
	}
    }
    public void doPost(HttpServletRequest req,HttpServletResponse rsp) throws ServletException,IOException{
	doGet(req,rsp);
    }
}
