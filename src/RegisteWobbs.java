package com.ydssbbnc.prj.wobbs;
import com.ydssbbnc.prj.wobbs.ConMariaWobbs;
import java.sql.*;
/*Fuction:Provide user's registe request api 
 *Note:All passwords are encrypted by SHA-256,and will create a user_hobbies table mean while
 *@author:ydssbbnc
 *email:ydssbbnc@gmail.com/ydssbbnc@163.com
 *Last update time:
 *TAG:UNFINISHED!!!
 */

public class RegisteWobbs extends ConMariaWobbs{
    public boolean RegUser(String name,String passwd,String email) throws SQLException{
	/*if registe success,return true and insert userinfo to coresponding table,else return false*/
	if(name.equals("anonymous")||name.equals("Anonymous"))return false;
	InitConnection();
	/*determine wether already exist "name"*/
	String determine="select id from passwd where name=?";
	PreparedStatement deter_pstmt=connection.prepareStatement(determine);
	deter_pstmt.setString(1,name);
	ResultSet rs=deter_pstmt.executeQuery();
	if(rs.next()){
	    DestroyConnection();
	    return false;
	}
	else{
	    /*Use sha256 to encrypt password*/
	    /*if there's no name="name(paramgram)",insert it*/
	    String tabName=name+"_hobbies";
	    String createTab="create table "+tabName+" (id int primary key auto_increment,targetId int default -1,liked int default -1,dissed int default -1,shared int default -1,favorited int default -1,reported int default -1,replied int default -1,clicked int default -1)";
	    String SHA_PWD=new EncSha256().DestStr(passwd);
	    String sql="insert into  passwd (name,passwd,email) values (?,?,?)";
	    String regUserCenter="insert into userCenter (name) values (?)";
	    PreparedStatement userCenter=connection.prepareStatement(regUserCenter);
	    PreparedStatement createUserHobbiesTable=connection.prepareStatement(createTab);
	    userCenter.setString(1,name);
	    userCenter.executeUpdate();
	    PreparedStatement pstmt=connection.prepareStatement(sql);
	    pstmt.setString(1,name);
	    pstmt.setString(2,SHA_PWD);
	    pstmt.setString(3,email);
	    pstmt.executeUpdate();
	    createUserHobbiesTable.executeUpdate();
	    DestroyConnection();
	    return true;
	}
    }
}
