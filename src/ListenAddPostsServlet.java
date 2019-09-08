package com.ydssbbnc.prj.wobbs;
import com.ydssbbnc.prj.wobbs.StaticData;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class ListenAddPostsServlet extends HttpServlet{
    public void doGet(HttpServletRequest req,HttpServletResponse rsp)throws ServletException,IOException{
	req.setCharacterEncoding("utf-8");
	rsp.setCharacterEncoding("utf-8");
	rsp.setContentType("text/html;charset=utf-8");
	String reqAddPosts=req.getParameter("reqAddPosts");
	if(reqAddPosts.equals("true"))
	    StaticData.setReqAddPosts("true");
    }
    public void doPost(HttpServletRequest req,HttpServletResponse rsp)throws ServletException,IOException{
	doGet(req,rsp);
    }
}
