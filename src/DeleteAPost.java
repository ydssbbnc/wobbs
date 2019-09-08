package com.ydssbbnc.prj.wobbs;
import java.sql.*;
import com.ydssbbnc.prj.wobbs.ConMariaWobbs;
/*Function:Recieve post id to delete post
 *Note:You should pass paramgrams orderly
 *@author:ydssbbnc
 *email:ydssbbnc@gmail.com/ydssbbnc@163.com
 *TAG:FINISHED!
 */
public class DeleteAPost extends ConMariaWobbs{
    DeleteAPost(int id) throws SQLException{
	InitConnection();
	String sql="delete from post where id=?";
	String postReplyTable="reply_"+id;
	String delReplyTable="drop table "+postReplyTable;
	PreparedStatement pstmt=connection.prepareStatement(sql);
	PreparedStatement delReply=connection.prepareStatement(delReplyTable);
	pstmt.setInt(1,id);
	pstmt.executeUpdate();
	delReply.executeUpdate();
	DestroyConnection();
    }
	
    /*Below block reserved to debug
    public static void main(String[] args)throws SQLException{
	new DeleteAPost(44);
    }*/

     
}
