package com.ydssbbnc.prj.wobbs;
import com.ydssbbnc.prj.wobbs.ConMariaWobbs;
import java.sql.*;
import java.util.Date;
import java.text.SimpleDateFormat;
/*Funtion : Provide an api to create post replyies table 
 *Note : When posting a post,create coresponding reply table that name suffix is post id
 *@author : ydssbbnc
 *TAG : FINISHED
 */
public class CreateReplyTable extends ConMariaWobbs{
    //First search post id and preparing a reply table name
    CreateReplyTable(int postId)throws SQLException{
	InitConnection();
 	String replyTableName="reply_"+postId;
	String create="create table "+replyTableName+" ( id int primary key auto_increment,owner varchar(255) default 'Anonymous', likeNum int default 0, replyNum int default 0, dissNum int default 0,  replyDate timestamp default now(), parentId int default -1, contents varchar(7000),  reportNum int default 0)";
	PreparedStatement pstmt=connection.prepareStatement(create);
	pstmt.executeUpdate();
	pstmt.close();
	DestroyConnection();
    }
}
