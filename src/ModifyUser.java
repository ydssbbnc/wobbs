package com.ydssbbnc.prj.wobbs;
import com.ydssbbnc.prj.wobbs.ConMariaWobbs;
import java.sql.*;
/*Function:MofifyUser has two constructors modifing numbers and strings(name and avatar) respectively
 *Note:You must care about the first constructor that should recieve 0,-1,1 as numbers though it's paramgram is 'int' style
 *@author:ydssbbnc
 *email:ydssbbnc@gmail.com/ydssbbnc@163.com
 *TAG:FINISHED!
 */

public class ModifyUser extends ConMariaWobbs{
    ModifyUser(String name,int... i)throws SQLException{//Mofity numbers(likeNum,postNum,visitNum,replyNum),use nagetive to represent decrement,positive represent increment
	InitConnection();//First connect to database
	String upLike="update userCenter set likeNum=likeNum+? where name=?";
	String upPost="update userCenter set postNum=postNum+? where name=?";
	String upVisit="update userCenter set visitNum=visitNum+? where name=?";
	String upReply="update userCenter set replyNum=replyNum+? where name=?";//Update statements
	PreparedStatement pUpLike=connection.prepareStatement(upLike);
	PreparedStatement pUpPost=connection.prepareStatement(upPost);
	PreparedStatement pUpVisit=connection.prepareStatement(upVisit);
	PreparedStatement pUpReply=connection.prepareStatement(upReply);
	pUpLike.setInt(1,i[0]);pUpPost.setInt(1,i[1]);
	pUpVisit.setInt(1,i[2]);pUpReply.setInt(1,i[3]);
	pUpLike.setString(2,name);pUpVisit.setString(2,name);
	pUpPost.setString(2,name);pUpReply.setString(2,name);
	pUpLike.executeUpdate();pUpPost.executeUpdate();
	pUpVisit.executeUpdate();pUpReply.executeUpdate();
	DestroyConnection();
	}
    ModifyUser(String... s)throws SQLException{//Another constructor.Order:1.name 2.newName 3.email 4.pwd
	InitConnection();
	if(!s[0].isEmpty()){
	    if(!s[3].equals("")){
		String SHA_PWD=new EncSha256().DestStr(s[3]);
		String setPwd="update passwd set passwd=? where name=?";
		PreparedStatement upPwd=connection.prepareStatement(setPwd);
		upPwd.setString(1,SHA_PWD);
		upPwd.setString(2,s[0]);
		upPwd.executeUpdate();
	    }
	    if(!s[1].equals("")){
		String setCenterName="update userCenter set name=? where name=?";
		String setPasswdName="update passwd set name=? where name=?";
		PreparedStatement center=connection.prepareStatement(setCenterName);
		PreparedStatement passwdName=connection.prepareStatement(setPasswdName);
		center.setString(1,s[1]);center.setString(2,s[0]);
		passwdName.setString(1,s[1]);passwdName.setString(2,s[0]);
		center.executeUpdate();passwdName.executeUpdate();
	    }
	    if(!s[2].equals("")){
		String setEmail="update passwd set email=? where name=?";
		PreparedStatement upEmail=connection.prepareStatement(setEmail);
		upEmail.setString(1,s[2]);
		upEmail.setString(2,s[0]);
		upEmail.executeUpdate();
	    }
	}
	DestroyConnection();
    }
}

