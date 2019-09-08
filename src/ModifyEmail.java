package com.ydssbbnc.prj.wobbs;
import javax.servlet.http.Cookie;
import com.ydssbbnc.prj.wobbs.ParseCookie;
import com.ydssbbnc.prj.wobbs.ModifyUser;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class ModifyEmail extends HttpServlet{
    public void doGet(HttpServletRequest req,HttpServletResponse rsp) throws ServletException,IOException{
	req.setCharacterEncoding("utf-8");//set encode to prevent garbled
	rsp.setCharacterEncoding("utf-8");//set encode to prevent garbled
	Cookie[] readCookie=req.getCookies();
	String OLD_NAME="";
	int i=0;boolean tag=true;
	if(readCookie!=null){
	    for(;i<readCookie.length;++i){
		Cookie t=readCookie[i];
		if(t.getName().equalsIgnoreCase("USER_ALL_IN_ONE")){
		    OLD_NAME=new ParseCookie().getName(t.getValue().toString());
		    tag=false;
		    break;
		}
	    }
	}
	if(tag){
	    rsp.setContentType("text/html;charset=utf-8");
	    PrintWriter out=rsp.getWriter();
	    out.print("<script language='javascript'>alert('没有Cookie(请登录或者打开Cookie)!');</script>");
	    rsp.sendRedirect("/prj/wobbs/page/personalCenter.jsp");	    
	    return;
	}
	final String EMAIL=req.getParameter("email");
	final String REPEAT_EMAIL=req.getParameter("repeatEmail");
	if(!EMAIL.equals(REPEAT_EMAIL)){
	    rsp.setContentType("text/html;charset=utf-8");
	    PrintWriter out=rsp.getWriter();
	    out.print("<script language='javascript'>alert('输入不一致，更改失败');window.location.href='/prj/wobbs/page/changeEmail.html';</script>");
	}else{
	    try{
		new ModifyUser(OLD_NAME,"",EMAIL,"");
		rsp.sendRedirect("/prj/wobbs/page/personalCenter.jsp");	    
	    }catch(SQLException e){}
	}
    }
    public void doPost(HttpServletRequest req,HttpServletResponse rsp) throws ServletException,IOException{
	doGet(req,rsp);
    }
}


