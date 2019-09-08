package com.ydssbbnc.prj.wobbs;
import com.ydssbbnc.prj.wobbs.GetUserNumbers;
import com.ydssbbnc.prj.wobbs.UpdateUSER_ALL_IN_ONECookie;
import com.ydssbbnc.prj.wobbs.FindUserAvatar;
import com.ydssbbnc.prj.wobbs.LoginDetect;//import database operation api 
import javax.servlet.http.Cookie;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*handle user's login request from login page
 *jump to login_success page after correct login,or refresh login page and hint something
 *@author:ydssbbnc
 *email:ydssbbnc@gmail.com/ydssbbnc@163.com
 *last update time:Thu Aug  8 10:11:54 2019
 *TAG:NEED_TO_EXPAND
 */

public class LoginServlet extends HttpServlet{
    public void doGet(HttpServletRequest req,HttpServletResponse rsp) throws ServletException,IOException{
	req.setCharacterEncoding("utf-8");//set encode to prevent garbledg
	rsp.setCharacterEncoding("utf-8");//set encode to prevent garbled
	String NAME=req.getParameter("name");
	final String PWD=req.getParameter("pwd");
	try{
	    if(new LoginDetect().Login(NAME,PWD)){
		//Handle login success logic,redirect to index page
		new UpdateUSER_ALL_IN_ONECookie(rsp,NAME);
		rsp.sendRedirect("/prj/wobbs/page/personalCenter.jsp");
	    }
	    else{
		//Handle login failed logic,redirect to login page
		rsp.setContentType("text/html;charset=utf-8");
		PrintWriter out=rsp.getWriter();
		out.print("<script language='javascript'>alert('登录失败，用户名或者密码错误');window.location.href='/prj/wobbs/page/login.html';</script>");
	    }
	}catch(SQLException e){
	}finally{
	}
    }
    public void doPost(HttpServletRequest req,HttpServletResponse rsp) throws ServletException,IOException{
	doGet(req,rsp);
    }
}
