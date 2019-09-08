package com.ydssbbnc.prj.wobbs;
import java.io.*;
/*Function : Find function recieve userName and search for its' latest uploaded image as avatar
 *Note : You can modify avatar search path through String AVA_PATH
 *@author : ydssbbnc
 *Email : ydssbbnc@gmail.com/ydssbbnc@163.com
 *TAG : FINISHED!
 */
public class FindUserAvatar{
    public String Find(String userName){
	final String AVA_PATH="/prj/wobbs/avatar/",SUF_CHAR="_";
	int sufInt=0;
	while(new File("/home/ydssbbnc/application/apache-tomcat-8.5.43/webapps/ROOT"+AVA_PATH+userName+SUF_CHAR+sufInt).exists()){
	    ++sufInt;
	}
	--sufInt;
	if(sufInt<0)return AVA_PATH+"default";
	 return AVA_PATH+userName+SUF_CHAR+sufInt;
    }
}
