package com.ydssbbnc.prj.wobbs;
import com.ydssbbnc.prj.wobbs.ConMariaWobbs;
import java.sql.*;
public class ModifyReply extends ConMariaWobbs{
    ModifyReply(int... i)throws SQLException{//Represent postId,replyId,likeNum,replyNum,dissNum,reportNum,respectively
	InitConnection();
	String replyTableName="reply_"+i[0];
	String sql="update "+replyTableName+" set likeNum=likeNum+?,replyNum=replyNum+?,dissNum=dissNum+?,reportNum=reportNum+? where id=?";
	PreparedStatement pstmt=connection.prepareStatement(sql);
	pstmt.setInt(1,i[2]);
	pstmt.setInt(2,i[3]);
	pstmt.setInt(3,i[4]);
	pstmt.setInt(4,i[5]);
	pstmt.setInt(1,i[1]);
	pstmt.executeUpdate();
	DestroyConnection();
    }
}
