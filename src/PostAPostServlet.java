package com.ydssbbnc.prj.wobbs;
import com.ydssbbnc.prj.wobbs.UpdateUSER_ALL_IN_ONECookie;
import com.ydssbbnc.prj.wobbs.ModifyUser;
import com.ydssbbnc.prj.wobbs.ParseCookie;
import javax.servlet.http.Cookie;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class PostAPostServlet extends HttpServlet{
    public void doGet(HttpServletRequest req,HttpServletResponse rsp) throws ServletException,IOException{
	req.setCharacterEncoding("utf-8");//set encode to prevent garbled
	rsp.setCharacterEncoding("utf-8");//set encode to prevent garbled
	final String TITLE=req.getParameter("title");
	final String PARAGRAPH=req.getParameter("paragraph");
	String NAME="Anonymous";
	final String POST_FILE=req.getParameter("postFile");
	String CATEGORY=req.getParameter("category");
	if(req.getParameter("anonymous")==null){
	    //Get user name from cookie
	    Cookie getUser=null;
	    Cookie[] cookies=null;
	    cookies=req.getCookies();
	    if(cookies!=null){
		for(int i=0;i<cookies.length;++i){
		    getUser=cookies[i];
		    if(getUser.getName().equalsIgnoreCase("USER_ALL_IN_ONE")){
			NAME=new ParseCookie().getName(getUser.getValue().toString());
			break;
		    }
		}
	    }
	}
	//Starting post...(parameters order: 1. owner(NAME) 2.title 3.paragraph 4.category)
	try{
	    new PostAPost(NAME,TITLE,PARAGRAPH,CATEGORY);
	    //After posting,update user's postNum
	    new ModifyUser(NAME,0,1,0,0);//1.likeNum 2.postNum 3.visitNum 4.replyNum
	    //Update cookie
	    new UpdateUSER_ALL_IN_ONECookie(rsp,NAME);
	}catch(SQLException e){}
	rsp.sendRedirect("/prj/wobbs/page/show.jsp");
    }
    public void doPost(HttpServletRequest req,HttpServletResponse rsp)throws ServletException,IOException{
	doGet(req,rsp);
    }
}
