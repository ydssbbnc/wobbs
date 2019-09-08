package com.ydssbbnc.prj.wobbs;
import com.ydssbbnc.prj.wobbs.ModifyPost;
import com.ydssbbnc.prj.wobbs.Reply;
import com.ydssbbnc.prj.wobbs.ParseCookie;
import java.sql.SQLException;
import com.ydssbbnc.prj.wobbs.UpdateUSER_ALL_IN_ONECookie;
import com.ydssbbnc.prj.wobbs.ModifyUser;
import com.ydssbbnc.prj.wobbs.ParseCookie;
import javax.servlet.http.Cookie;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class ReplyServlet extends HttpServlet{
    public void doPost(HttpServletRequest req,HttpServletResponse rsp)throws ServletException,IOException{
	req.setCharacterEncoding("utf-8");
	rsp.setCharacterEncoding("utf-8");
	final String CONTENTS=req.getParameter("contents");
	String OWNER="Anonymous";//represent  comment's owner,get from cookie
	final String like=req.getParameter("like");
	final String diss=req.getParameter("diss");
	final String report=req.getParameter("report");
	final String share=req.getParameter("share");
	final String favorite=req.getParameter("favorite");
	final String type=req.getParameter("type");
	final String comment=req.getParameter("comment");
	final int POSTID=Integer.parseInt(req.getParameter("POSTID"));//used in reply() constructor
	Cookie getUser=null;
	Cookie[] cookies=null;
	cookies=req.getCookies();
	if(cookies!=null){
	    for(int i=0;i<cookies.length;++i){
		getUser=cookies[i];
		if(getUser.getName().equals("USER_ALL_IN_ONE")){
		    OWNER=new ParseCookie().getName(getUser.getValue().toString());
		    break;
		}
	    }
	}
    }
}
