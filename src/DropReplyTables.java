package com.ydssbbnc.prj.wobbs;
import java.sql.*;
import com.ydssbbnc.prj.wobbs.ConMariaWobbs;
public class DropReplyTables extends ConMariaWobbs{
    public void All()throws SQLException{
	InitConnection();
	String prefix="reply_";
	int suffix=44,i=0;
	while(++suffix<10000){
	    String sql="drop table "+prefix+suffix;
	    PreparedStatement pstmt=connection.prepareStatement(sql);
	    pstmt.executeUpdate();
	}	    
	DestroyConnection();
    }
    public static void main(String[] args)throws SQLException{
	new DropReplyTables().All();
    }
}
