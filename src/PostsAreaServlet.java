package com.ydssbbnc.prj.wobbs;
import com.ydssbbnc.prj.wobbs.StaticData;
import com.ydssbbnc.prj.wobbs.PostsArea;
import javax.servlet.http.Cookie;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class PostsAreaServlet extends HttpServlet{
        public void doGet(HttpServletRequest req,HttpServletResponse rsp) throws ServletException,IOException{
	req.setCharacterEncoding("utf-8");//set encode to prevent garbledg
	rsp.setCharacterEncoding("utf-8");//set encode to prevent garbled
	rsp.setContentType("text/html;charset=utf-8");
	PostsArea pa=new PostsArea();
	PrintWriter out=rsp.getWriter();
	String orderStyle=req.getParameter("orderStyle");
	if(orderStyle==null||orderStyle.equals(""))
	    orderStyle="hotValue";
	else if(orderStyle.substring(0,5).equals("owner"))
	    out.print(pa.getPostsFrame(orderStyle.substring(0,5),orderStyle.substring(6,orderStyle.length())));
	else if(orderStyle.substring(0,8).equals("category"))
	    out.print(pa.getPostsFrame(orderStyle.substring(0,8),orderStyle.substring(9,orderStyle.length())));
	else if(orderStyle.substring(0,7).equals("default")){}
	else
	    out.print(pa.getPostsFrame(orderStyle));
	}
	public void doPost(HttpServletRequest req,HttpServletResponse rsp) throws ServletException,IOException{
	doGet(req,rsp);
	}
}
