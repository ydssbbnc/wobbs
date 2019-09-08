package com.ydssbbnc.prj.wobbs;
import com.ydssbbnc.prj.wobbs.UpdateUSER_ALL_IN_ONECookie;
import com.ydssbbnc.prj.wobbs.ModifyUser;
import com.ydssbbnc.prj.wobbs.Reply;
import com.ydssbbnc.prj.wobbs.ParseCookie;
import javax.servlet.http.Cookie;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class ReplyPostServlet extends HttpServlet{
    public void doPost(HttpServletRequest req,HttpServletResponse rsp)throws ServletException,IOException{
	req.setCharacterEncoding("utf-8");
	rsp.setCharacterEncoding("utf-8");
	final String reply=req.getParameter("reply");
	rsp.setContentType("text/html;charset=utf-8");
	int postId=Integer.parseInt(req.getParameter("POSTID_COPY"));
	String replingUser="Anonymous";
	if(reply!=null&&reply.length()>0){
	    Cookie[] cookies=req.getCookies();
	    Cookie cookie=null;
	    if(cookies!=null){
		for(int i=0;i<cookies.length;++i){
		    cookie=cookies[i];
		    if(cookie.getName().equalsIgnoreCase("USER_ALL_IN_ONE")){
			replingUser=new ParseCookie().getName(cookie.getValue().toString());
			break;
		    }
		}
	    }
	    try{
		new Reply(postId,reply,replingUser);
	    }catch(SQLException e){}
	}
	PrintWriter out=rsp.getWriter();
	out.print("<script language=javascript>window.close();");
	out.print("</script>");
    }
    public void doGet(HttpServletRequest req,HttpServletResponse rsp)throws ServletException,IOException{
	doGet(req,rsp);
    }
}
