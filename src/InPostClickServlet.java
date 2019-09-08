package com.ydssbbnc.prj.wobbs;
import com.ydssbbnc.prj.wobbs.UpdateUSER_ALL_IN_ONECookie;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.Cookie;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class InPostClickServlet extends HttpServlet{
    public void doPost(HttpServletRequest req,HttpServletResponse rsp)throws ServletException,IOException{
	req.setCharacterEncoding("utf-8");//set encode to prevent garbledg
	rsp.setCharacterEncoding("utf-8");//set encode to prevent garbled
	int postId=Integer.parseInt(req.getParameter("POSTID"));
	int like=Integer.parseInt(req.getParameter("like"));
	int diss=Integer.parseInt(req.getParameter("diss"));
	int share=Integer.parseInt(req.getParameter("share"));
	int favorite=Integer.parseInt(req.getParameter("favorite"));
	int report=Integer.parseInt(req.getParameter("report"));
	String clickingUser="Anonymous";
	Cookie[] cookies=req.getCookies();
	Cookie cookie=null;
	PrintWriter out=rsp.getWriter();
	if(cookies!=null){
	    for(int i=0;i<cookies.length;++i){
		cookie=cookies[i];
		if(cookie.getName().equalsIgnoreCase("USER_ALL_IN_ONE")){
		    clickingUser=new ParseCookie().getName(cookie.getValue().toString());
		}
	    }
	}
	try{
	    new UserClickInPostModify(clickingUser,postId,like,diss,share,favorite,report,0,0);

	    new ModifyPost(postId,report,0,0,share,favorite,like,diss);
	}catch(SQLException e){}
	out.print("<script language=javascript>window.close();");
	out.print("</script>");
    }
}
