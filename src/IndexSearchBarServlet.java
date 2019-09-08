package com.ydssbbnc.prj.wobbs;
import com.ydssbbnc.prj.wobbs.UpdateUSER_ALL_IN_ONECookie;
import javax.servlet.http.Cookie;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class IndexSearchBarServlet extends HttpServlet{
    public void doGet(HttpServletRequest req,HttpServletResponse rsp) throws ServletException,IOException{
	req.setCharacterEncoding("utf-8");//set encode to prevent garbled
	rsp.setCharacterEncoding("utf-8");//set encode to prevent garbled
	final String INDEX_INPUT=req.getParameter("indexInput");
    }
    public void doPost(HttpServletRequest req,HttpServletResponse rsp) throws ServletException,IOException{
	doGet(req,rsp);
    }
}
