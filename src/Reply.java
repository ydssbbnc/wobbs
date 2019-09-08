package com.ydssbbnc.prj.wobbs;
import com.ydssbbnc.prj.wobbs.ModifyPost;
import com.ydssbbnc.prj.wobbs.ConMariaWobbs;
import java.sql.*;
/*Function : Provide an api to reply a post or comment 
 *Note : After repling ,update corresponding replyNum
 *@author : ydssbbnc
 *TAG : DOING...
 */
public class Reply extends ConMariaWobbs{
      Reply(int postId,String contents,String owner)throws SQLException{//Means its' parent id,and some strings
	String postTable="reply_"+postId;
	InitConnection();
	String sql="insert into "+postTable+" (contents,owner) values(?,?)";
	PreparedStatement pstmt=connection.prepareStatement(sql);
	pstmt.setString(1,contents);
	pstmt.setString(2,owner);
	pstmt.executeUpdate();
	new ModifyPost(postId,0,0,1,0,0,0,0);
	DestroyConnection();
    }
    /*    public void ReplyAReply(int postId,int replyId,String contents,String owner)throws SQLException{
	InitConnection();
	String postTable="reply_"+postId;
	String sql="insert into "+postTable+" (parentId,contents,owner) values(?,?,?)";
	PreparedStatement pstmt=connection.prepareStatement(sql);
	String upNums="update "+postTable+" set replyNum=replyNum+1 where id=?";
	PreparedStatement upstmt=connection.prepareStatement(upNums);
	upstmt.setInt(1,replyId);
	upstmt.executeUpdate();
	pstmt.setInt(1,replyId);
	pstmt.setString(2,contents);
	pstmt.setString(3,owner);
	pstmt.executeUpdate();
	DestroyConnection();
	}*/

}
