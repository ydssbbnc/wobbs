package com.ydssbbnc.prj.wobbs;
import java.sql.*;
import com.ydssbbnc.prj.wobbs.ConMariaWobbs;
/*Function : When user clicking in a post,create corresponding table to record it's clicked behavior
 *Note : There are several funcions and you also need to care about the parameters order
 *@author : ydssbbnc
 *Email : ydssbbnc@163.com/ydssbbnc@gmail.com
 */
public class UserClickInPostModify extends ConMariaWobbs{
    UserClickInPostModify(String userName,int... I)throws SQLException{//Represent userName,targetId,like,diss,share,favorite,report,reply,clicked,respectively
	String tabName=userName+"_hobbies";
	//Firste check whether there exist a tagetId row:
	String checkExist="select liked,dissed,shared,favorited,reported,replied,clicked from "+tabName+" where targetId=?";
	InitConnection();
	PreparedStatement check=connection.prepareStatement(checkExist);
	check.setInt(1,I[0]);
	ResultSet rs=check.executeQuery();
	if(rs.next()){
	    String sql="update "+tabName+" set liked=?,dissed=?,shared=?,favorited=?,reported=?,replied=?,clicked=? where targetId=?";
	    PreparedStatement pstmt=connection.prepareStatement(sql);
	    pstmt.setInt(8,I[0]);
	    for(int k=1;k<8;++k){
		if(I[k]>0)
		    pstmt.setInt(k,I[0]);
		else if(I[k]<0)
		    pstmt.setInt(k,-1);
		else
		    pstmt.setInt(k,rs.getInt(k));
	    }
	    pstmt.executeUpdate();
	}
	else{
	    String sql1="insert into "+tabName+" set liked=?,dissed=?,shared=?,favorited=?,reported=?,replied=?,clicked=?,targetId=?";
	    PreparedStatement pstmt1=connection.prepareStatement(sql1);
	    pstmt1.setInt(8,I[0]);
	    for(int j=1;j<8;++j){
		if(I[j]==1)
		    pstmt1.setInt(j,I[0]);
		else 
		    pstmt1.setInt(j,-1);
	    }
	    pstmt1.executeUpdate();
	}
	DestroyConnection();
    }
}
