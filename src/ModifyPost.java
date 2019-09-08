package com.ydssbbnc.prj.wobbs;
import com.ydssbbnc.prj.wobbs.ConMariaWobbs;
import java.sql.*;
/*Function:Boolean constructor to increment repostNum,clickNum and replyNum of post,String constructor update owner's modify on title and paragraph
 *Note:
 *@author:ydssbbnc
 *email:ydssbbnc@gmail.com/ydssbbnc@163.com
 */
public class ModifyPost extends ConMariaWobbs{
    ModifyPost(int... i) throws SQLException{//Represent postId,reportNum,clickNum,replyNum,shareNums,favoriteNums,likeNum,dissNum,respectively.(Only increment correct numbers not affect contents)
	InitConnection();//First connect to database
	String sql="update post set reportNum=reportNum+?,clickNum=clickNum+?,replyNum=replyNum+?,shareNums=shareNums+?,favoriteNums=favoriteNums+?,likeNum=likeNum+?,dissNum=dissNum+? where id=?";
	PreparedStatement pstmt=connection.prepareStatement(sql);
	pstmt.setInt(1,i[1]);
	pstmt.setInt(2,i[2]);
	pstmt.setInt(3,i[3]);
	pstmt.setInt(4,i[4]);
	pstmt.setInt(5,i[5]);
	pstmt.setInt(6,i[6]);
	pstmt.setInt(7,i[7]);
	pstmt.setInt(8,i[0]);
	pstmt.executeUpdate();
	DestroyConnection();//Release connection
    }//boolean type dominant constructor
    ModifyPost(int id,String... s) throws SQLException{//Recieve params:post id,title,paragraph to change
	InitConnection();
	if(!(s[0].equals(""))){
	    String tit="update post set title=? where id=?";
	    PreparedStatement pstmt=connection.prepareStatement(tit);
	    pstmt.setString(1,s[0]);
	    pstmt.setInt(2,id);
	    pstmt.executeUpdate();
	}
	if(!(s[1].equals(""))){
	    String para="update post set paragraph=? where id=?";
	    PreparedStatement pstmt1=connection.prepareStatement(para);
	    pstmt1.setString(1,s[1]);
	    pstmt1.setInt(2,id);
	    pstmt1.executeUpdate();	    
	}
	DestroyConnection();
    }    
}
