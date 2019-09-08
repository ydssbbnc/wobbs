package com.ydssbbnc.prj.wobbs;
import java.sql.*;
import com.ydssbbnc.prj.wobbs.ConMariaWobbs;
/*Fuction : Recieve userName and delete it from database passwd,userCenter,and update its' post belong to Anonymous
 *Note : You should be double careful because it is a non-reversible procedure!
 *@author : ydssbbnc
 *Email : ydssbbnc@gmail/ydssbbnc@163
 *TAG : FINISHED!
 */
public class DeleteUser extends ConMariaWobbs{
    DeleteUser(String userName)throws SQLException{
	if(!userName.equals("Anonymous")&&!userName.equals("anonymous")){
	InitConnection();
	//First delete it from passwd and userCenter:
	String delFrom_passwd="delete from passwd where name=?";
	String delFrom_userCenter="delete from userCenter where name=?";
	String updateFrom_post="update post set owner='Anonymous' where owner=?";
	PreparedStatement p1=connection.prepareStatement(delFrom_passwd);
	PreparedStatement p2=connection.prepareStatement(delFrom_userCenter);
	PreparedStatement p3=connection.prepareStatement(updateFrom_post);
	p1.setString(1,userName);p2.setString(1,userName);p3.setString(1,userName);
	p1.executeUpdate();p2.executeUpdate();p3.executeUpdate();
	DestroyConnection();
	}
    }
}
