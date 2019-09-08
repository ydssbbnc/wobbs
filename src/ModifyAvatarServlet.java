package com.ydssbbnc.prj.wobbs;
import com.ydssbbnc.prj.wobbs.FindUserAvatar;
import com.ydssbbnc.prj.wobbs.ParseCookie;
import com.ydssbbnc.prj.wobbs.UpdateUSER_ALL_IN_ONECookie;
import java.util.Date;
import java.io.*;
import java.sql.*;
import com.ydssbbnc.prj.wobbs.UploadedFileOperator;
import javax.servlet.http.Cookie;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.ydssbbnc.prj.wobbs.UploadFileServlet;
/*Function : Extends from UploadFileServlet class,and add a redirect code
 *Note : There called super's doGet(req,rsp) not ModifyAvatarServlet's doGet
 *@author : ydssbbnc
 *Email : ydssbbnc@gmail.com/ydssbbnc@163.com
 *TAG : IFINISHED!
 */
public class ModifyAvatarServlet extends UploadFileServlet{
    public void doPost(HttpServletRequest req,HttpServletResponse rsp) throws ServletException,IOException{
	super.doGet(req,rsp);
	/*After uploading,move avatar to 'avatar/' directory(name,newName,newPath)*/
	//First : Set OLD_NAME(whitch is saved in Cookie oldName if exist) as newName,if already exist one,add suffix
	String newName="Anonymous",newPath="/home/ydssbbnc/application/apache-tomcat-8.5.43/webapps/ROOT/prj/wobbs/avatar/",orignalName="Anonymous",orignalPath="/home/ydssbbnc/application/apache-tomcat-8.5.43/webapps/ROOT/upload/",NAME=newName;
	Cookie getUser=null;
	Cookie[] cookies=null;
	cookies=req.getCookies();//Get Cookie belong to this domain
	if(cookies!=null){
	    for(int i=0;i<cookies.length;++i){
		getUser=cookies[i];
		if(getUser.getName().equalsIgnoreCase("USER_ALL_IN_ONE")){
		    newName=new ParseCookie().getName(getUser.getValue().toString());
		    NAME=newName;
		    break;
		}
	    }
	}
	/*Detect wether has same file named newName*/
	String sufChar="_";int sufInt=0;
	while(new File(newPath+newName+sufChar+sufInt).exists()){
	    ++sufInt;
	}
	newName=newName+sufChar+sufInt;
	//Set lastModified file as orignalName
	File uploadPath=new File(orignalPath);
	File[] files=uploadPath.listFiles();
	long tmpModifiedTime=0;
	for(int i=0;i<files.length;++i){
	    if(files[i].lastModified()>tmpModifiedTime)
		orignalName=files[i].getName();
	}
	new UploadedFileOperator(orignalPath+orignalName,newName,newPath);//Moving and renaming avatar
	try{
	    new UpdateUSER_ALL_IN_ONECookie(rsp,NAME);
	    rsp.sendRedirect("/prj/wobbs/page/personalCenter.jsp");	  
	}catch(SQLException e){}

    }
}
