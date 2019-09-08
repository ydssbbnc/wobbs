package com.ydssbbnc.prj.wobbs;
import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class PostContentsServlet extends HttpServlet{
    public void doGet(HttpServletRequest req,HttpServletResponse rsp)throws ServletException,IOException{
	req.setCharacterEncoding("utf-8");
	rsp.setCharacterEncoding("utf-8");
	rsp.setContentType("text/html;charset=utf-8");
	String postIdStr=req.getParameter("postId");
	PrintWriter out=rsp.getWriter();
	out.print(new PostContents().getContentsFrame(Integer.parseInt(postIdStr)));
    }
    public void doPost(HttpServletRequest req,HttpServletResponse rsp)throws ServletException,IOException{
	doGet(req,rsp);
    }
}
