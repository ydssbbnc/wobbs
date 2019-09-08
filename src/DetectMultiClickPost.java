package com.ydssbbnc.prj.wobbs;
import com.ydssbbnc.prj.wobbs.ConMariaWobbs;
import java.sql.*;
/*Function : Detect whether a post has been duplicated clicked,recieve userName and postId
 *Note : You should care about the order in the returned  boolean array
 *@author : ydssbbnc
 *Email : ydssbbnc@gmail.com/ydssbbnc@163.com
 */
public class DetectMultiClickPost extends ConMariaWobbs{
    public boolean[] Detect(String clickingUserName,int postId)throws SQLException{//Returns liked,dissed,shared,favorited,reported,replied,clicked,respctively
	InitConnection();
	String hobbieTable=clickingUserName+"_hobbies";
   // id | targetId | liked | dissed | shared | favorited | reported | replied | clicked 
	String sql="select * from "+hobbieTable;
	PreparedStatement pstmt=connection.prepareStatement(sql);
	pstmt.setInt(1,postId);
	ResultSet rs=pstmt.executeQuery();
	boolean[] tag=new boolean[9];
	while(rs.next()){
	    for(int i=0;i<9;++i){
		if(rs.getInt(i+1)==postId)
		    tag[i]=true;
		else
		    tag[i]=false;
	    }
	}
	return tag;
    }
}
