package com.ydssbbnc.prj.wobbs.test;
import java.util.Date;
import java.io.*;
import javax.servlet.http.Cookie;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*Function : Extends from UploadFileServlet class,and add a redirect code
 *Note : There called super's doGet(req,rsp) not ModifyAvatarServlet's doGet
 *@author : ydssbbnc
 *Email : ydssbbnc@gmail.com/ydssbbnc@163.com
 *TAG : UNIFINISHED!!!(Need to add function to move avatar uploaded to corresponding directory and rename it by user name)
 */
public class ReadCookie extends HttpServlet{
    public void doPost(HttpServletRequest req,HttpServletResponse rsp) throws ServletException,IOException{
	String orignalName="";
	PrintWriter out=rsp.getWriter();
	File uploadPath=new File("/home/ydssbbnc/application/apache-tomcat-8.5.43/webapps/ROOT/upload");
	File[] files=uploadPath.listFiles();
	long lastModifiedTime=0,tmpModifiedTime=-1;
	for(int i=0;i<files.length;++i){
	    if(files[i].lastModified()>tmpModifiedTime){
		orignalName=files[i].getName();
	    }
	}		    out.println("<b>"+orignalName+"</b>");
    }
}
