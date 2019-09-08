package com.ydssbbnc.prj.wobbs;
import com.ydssbbnc.prj.wobbs.ConMariaWobbs;
import java.sql.*;
public class LoginDetect extends ConMariaWobbs{
    public boolean Login(String name,String passwd)throws SQLException{
	/*if the paramgrams are leagal,return true ,else return false*/
	InitConnection();
	/*Encrypt password first*/
	
	String SHA256_PWD=new EncSha256().DestStr(passwd);
	String determine="select id from passwd where name=? and passwd=?";
	PreparedStatement deter=connection.prepareStatement(determine);
	deter.setString(1,name);
	deter.setString(2,SHA256_PWD);
	if(!deter.executeQuery().next()){
	    DestroyConnection();
	    return false;
	}
	DestroyConnection();
	return true;
    }
}
