package com.ydssbbnc.prj.wobbs;
import com.ydssbbnc.prj.wobbs.ConMariaWobbs;
import java.sql.*;
import com.ydssbbnc.prj.wobbs.FindUserAvatar;
public class GetReplies extends  ConMariaWobbs{
    int MAX_REPLIES_LOAD_PER_TIME=1220,reqAddReplyTimes=1,MAX_REPLY_COLUMNS=9,postId=-1;
    String orderStyle="date",replyTableName="";
    String[][] repliesByOwner=new String[MAX_REPLIES_LOAD_PER_TIME][MAX_REPLY_COLUMNS];
    String[][] repliesByReplyNum=new String[MAX_REPLIES_LOAD_PER_TIME][MAX_REPLY_COLUMNS];
    String[][] repliesByLikeNum=new String[MAX_REPLIES_LOAD_PER_TIME][MAX_REPLY_COLUMNS];
    String[][] repliesByDate=new String[MAX_REPLIES_LOAD_PER_TIME][MAX_REPLY_COLUMNS];
    public String ParseReplies(String replies[][]){
	String replyContents="";
	for(int i=0;i<this.MAX_REPLIES_LOAD_PER_TIME*this.reqAddReplyTimes;++i){
	    if(replies[i][1]!=null){
		replyContents+="<div style='white-space:nowrap;'> <a href='javascript:' onclick='clickImg(\"replyAvatar"+replies[i][0]+"\")'> <img id=\"replyAvatar"+replies[i][0]+"\" src='"+new FindUserAvatar().Find(replies[i][1])+"' style='width:50px;border-radius:3px;'></img></a><a href='javascript:' onclick='' id='replyUser"+replies[i][0]+"'><span style='color:#444444;'>"+replies[i][1]+"</span></a><br><div><p>"+replies[i][7]+"</p></div><div style='white-space:nowrap;'><a id='replyLike"+replies[i][0]+"' href='javascript:' onclick='clickLike(\"replyLike"+replies[i][0]+"\",\"replyDiss"+replies[i][0]+"\")' style='font-size:200%;color:#d9edff;' title=\"我觉得OK\">▲</a><a id='replyDiss"+replies[i][0]+"' style='font-size:200%;color:#d9edff;' href='javascript:' onclick='clickDiss(\"replyLike"+replies[i][0]+"\",\"replyDiss"+replies[i][0]+"\")' title=\"我觉得不行\" >▼</a><a href='javascript:' onclick='clickReplyReport(\"replyReport"+replies[i][0]+"\")' style='margin-right:3px;font-size:60%;float:right;'>举报</a><span style='font-size:80%;float:right;'>"+replies[i][5].substring(0,replies[i][5].length()-2)+"</span></div><img src='/prj/wobbs/img/postsTitleSplit.png' style='width:1000px;'> ";
	    }
	}
	return replyContents;
    }
    public String GetReplies(String... s)throws SQLException{
	if(s[0].equals("date")){
	    this.ByDate();
	    return this.ParseReplies(this.repliesByDate);
	}
	if(s[0].equals("owner")){
	    this.ByOwner(s[1]);
	    return this.ParseReplies(this.repliesByOwner);
	}
	if(s[0].equals("likeNum")){
	    this.ByLikeNum();
	     return this.ParseReplies(this.repliesByLikeNum);
	}
	this.ByReplyNum();
	return this.ParseReplies(this.repliesByReplyNum);
    }
    public void setReplyTableName(int postId){
	this.replyTableName="reply_"+postId;
	
    }
        public void ByReplyNum()throws SQLException{
	InitConnection();
	String sql="select  id,owner,likeNum,replyNum,dissNum,replyDate,parentId,contents,reportNum from "+this.replyTableName+" order by likeNum desc";
	String[][] replies=new String[this.MAX_REPLIES_LOAD_PER_TIME][MAX_REPLY_COLUMNS];
	PreparedStatement pstmt=connection.prepareStatement(sql);
	ResultSet rs=pstmt.executeQuery();
	for(int i=0;rs.next()&&i<this.MAX_REPLIES_LOAD_PER_TIME;++i){
	    for(int j=0;j<this.MAX_REPLY_COLUMNS;++j){
		    replies[i][j]=rs.getString(j+1);
	    }
	}
	DestroyConnection();
	this.repliesByReplyNum=replies;
    }
    public void setReplyTableName(String s){
	this.replyTableName=s;
    }
    public void ByLikeNum()throws SQLException{
	InitConnection();
	String sql="select  id,owner,likeNum,replyNum,dissNum,replyDate,parentId,contents,reportNum from "+this.replyTableName+" order by likeNum desc";
	String[][] replies=new String[this.MAX_REPLIES_LOAD_PER_TIME][MAX_REPLY_COLUMNS];
	PreparedStatement pstmt=connection.prepareStatement(sql);
	ResultSet rs=pstmt.executeQuery();
	for(int i=0;rs.next()&&i<this.MAX_REPLIES_LOAD_PER_TIME;++i){
	    for(int j=0;j<this.MAX_REPLY_COLUMNS;++j){
		    replies[i][j]=rs.getString(j+1);
	    }
	}
	DestroyConnection();
	this.repliesByLikeNum=replies;
    }
    public void ByOwner(String owner)throws SQLException{
	InitConnection();
	String  sql="select id,owner,likeNum,replyNum,dissNum,replyDate,parentId,contents,reportNum from "+this.replyTableName+" where owner=?";
	PreparedStatement pstmt=connection.prepareStatement(sql);
	pstmt.setString(1,owner);
	String[][] replies=new String[this.MAX_REPLIES_LOAD_PER_TIME][MAX_REPLY_COLUMNS];
	ResultSet rs=pstmt.executeQuery();
	for(int i=0;rs.next()&&i<this.MAX_REPLIES_LOAD_PER_TIME;++i){
	    for(int j=0;j<this.MAX_REPLY_COLUMNS;++j){
		replies[i][j]=rs.getString(j+1);
	    }
	}
	DestroyConnection();
	this.repliesByOwner=replies;
    }
    public void ByDate()throws SQLException{
	InitConnection();
	String sql="select  id,owner,likeNum,replyNum,dissNum,replyDate,parentId,contents,reportNum from "+this.replyTableName+" order by replyDate desc";
	String[][] replies=new String[this.MAX_REPLIES_LOAD_PER_TIME][MAX_REPLY_COLUMNS];
	PreparedStatement pstmt=connection.prepareStatement(sql);
	ResultSet rs=pstmt.executeQuery();
	for(int i=0;rs.next()&&i<this.MAX_REPLIES_LOAD_PER_TIME;++i){
	    for(int j=0;j<this.MAX_REPLY_COLUMNS;++j){
		    replies[i][j]=rs.getString(j+1);
	    }
	}
	DestroyConnection();
	this.repliesByDate=replies;
    }
    public static void main(String[] args)throws SQLException{
	GetReplies gr=new GetReplies();
	gr.setReplyTableName(args[0]);
	System.out.println(gr.GetReplies(args[1]));
    }
}
