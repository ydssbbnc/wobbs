package com.ydssbbnc.prj.wobbs;
import java.sql.*;
import com.ydssbbnc.prj.wobbs.ConMariaWobbs;
public class GetUserNumbers extends ConMariaWobbs{
    public String Get(String userName)throws SQLException{//Returns likeNum,postNum,visitNum,replyNum,respectively
	InitConnection();
	String RESULTS="",SEGMENT="`";
	String sql="select likeNum,postNum,visitNum,replyNum from userCenter where name=?";
	PreparedStatement pstmt=connection.prepareStatement(sql);
	pstmt.setString(1,userName);
	ResultSet rs=pstmt.executeQuery();
	rs.next();
	for(int i=1;i<5;++i){
	    RESULTS=RESULTS+rs.getInt(i)+SEGMENT;	    
	}
	return RESULTS;
    }
}
