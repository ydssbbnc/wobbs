package com.ydssbbnc.prj.wobbs;
import java.io.*;
import javax.servlet.http.Cookie;
/*Function : String type constructor recieve name,newName,newPath,respectively moving and renaming oldFile
 *Note : Caring about paramgrams' order
 *@author : ydssbbnc
 *Email : ydssbbnc@gmail.com/ydssbbnc@163.com
 *TAG:FINISHED!!!
 */
public class UploadedFileOperator{
    UploadedFileOperator(String... s)throws IOException{//Represent name(include path),newName,newPath,respectively
	File oldFile=new File(s[0]);
	File newFile=new File(s[2]+s[1]);
	oldFile.renameTo(newFile);
    }
    /*Below block reserved to debug
    public static void main(String[] args)throws IOException{
	String newName="Anonymous",newPath="/home/ydssbbnc/application/apache-tomcat-8.5.43/webapps/ROOT/prj/wobbs/avatar/",orignalName="Anonymous",orignalPath="/home/ydssbbnc/application/apache-tomcat-8.5.43/webapps/ROOT/upload/";
	File detectFile=new File(newPath+newName);
	int suffix=1;
	while(detectFile.exists()){//Detect wether exists same name
	    newName+=++suffix;
	}
	//Set lastModified file as orignalName
	File uploadPath=new File(orignalPath);
	File[] files=uploadPath.listFiles();
	long tmpModifiedTime=0;
	for(int i=0;i<files.length;++i){
	    if(files[i].lastModified()>tmpModifiedTime)
		orignalName=files[i].getName();
	}
	new UploadedFileOperator(orignalPath+orignalName,newName,newPath);//Moving and renaming avatar
	System.out.println("orignalName:"+orignalName+".newName"+newName+".newPath"+newPath);
    }*/
}
