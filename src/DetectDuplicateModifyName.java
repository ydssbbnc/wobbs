package com.ydssbbnc.prj.wobbs;
import com.ydssbbnc.prj.wobbs.ConMariaWobbs;
import java.sql.*;
/*Function : Detect wether there already exists a duplication name whern modify user name
 *Note : 
 *@author : ydssbbnc
 *Email : ydssbbnc@gmail.com/ydssbbnc@163.com
 *TAG : DOING...
 */

public class DetectDuplicateModifyName extends ConMariaWobbs{
    public boolean Detect(String name)throws SQLException{
	InitConnection();
	String detect="select * from passwd where name=?";
	PreparedStatement pstmt=connection.prepareStatement(detect);
	pstmt.setString(1,name);
	if(!pstmt.executeQuery().next()){
	    DestroyConnection();
	    return false;
	}
	DestroyConnection();
	return true;
    }
}
