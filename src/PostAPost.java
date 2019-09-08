package com.ydssbbnc.prj.wobbs;
import java.sql.*;
import com.ydssbbnc.prj.wobbs.CreateReplyTable;
import java.util.Date;
import java.text.SimpleDateFormat;
/*Function:Recieve variable paramgrams in PostAPost() constructor and save post to database
 *Note:You should pass paramgrams orderly
 *@author:ydssbbnc
 *email:ydssbbnc@gmail.com/ydssbbnc@163.com
 *TAG:FINISHED!
 */
public class PostAPost extends ConMariaWobbs{
    PostAPost(String... s) throws SQLException{//Paramgrams order:1.owner 2.title 3.paragraph 4.category 
	InitConnection();//Connect to database
	String sql="insert into post (owner,title,paragraph,category,postDate) values (?,?,?,?,?)";
	if(s[1].equals("")&&s[2].equals(""))return;
	if(s[3].equals(""))s[3]="a";
	PreparedStatement pstmt=connection.prepareStatement(sql);
	pstmt.setString(1,s[0]);
	pstmt.setString(2,s[1]);
	pstmt.setString(3,s[2]);
	pstmt.setString(4,s[3]);
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//Set date format
	String date=sdf.format(new Date());//new Date() get current date
	pstmt.setString(5,date);
	pstmt.executeUpdate();
	String getPostId="select max(id) from post";
	PreparedStatement getPostId_pstmt=connection.prepareStatement(getPostId);
	ResultSet rs=getPostId_pstmt.executeQuery();
	if(rs.next())
	    new CreateReplyTable(rs.getInt(1));
	DestroyConnection();
    }/*Below block reserved to debug
    public static void main(String[] args)throws SQLException{
	new PostAPost("anonymous","I love you","Really","a");
    }
     */
}
