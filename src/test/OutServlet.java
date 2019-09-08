package com.ydssbbnc.test;
import com.ydssbbnc.prj.wobbs.PostsArea;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class OutServlet extends HttpServlet{
    public void doGet(HttpServletRequest req,HttpServletResponse rsp) throws ServletException,IOException{
	req.setCharacterEncoding("utf-8");//set encode to prevent garbled
	rsp.setCharacterEncoding("utf-8");//set encode to prevent garbled
	PrintWriter out=rsp.getWriter();
        out.println(new PostsArea().POSTS);
	out.close();
    }
    public void doPost(HttpServletRequest req,HttpServletResponse rsp) throws ServletException,IOException{
	doGet(req,rsp);
    }    
}
