package com.ydssbbnc.prj.wobbs;
import com.ydssbbnc.prj.wobbs.FindUserAvatar;
import com.ydssbbnc.prj.wobbs.ConMariaWobbs;
import java.text.DateFormat;
import java.sql.*;
/*Function : Get posts from database and save result to StaticDate.
 *Note : You can get posts orderly by 1.owner 2.category 3.replyNum 4.postDate 5.hotValue
 *@author : ydssbbnc
 *Email : ydssbbnc@163.com/ydssbbnc@gmail.com
 *TAG : FINISHED!
 */
public class GetPosts extends ConMariaWobbs{
    int MAX_POSTS_PER_TIME=1000,MAX_POSTS_LOAD_PER_TIME=20,reqAddPostsTimes=1;
    String orderStyle="hotValue";
     String[][] postsByOwner=new String[MAX_POSTS_PER_TIME][8];
     String[][] postsByHotValue=new String[MAX_POSTS_PER_TIME][8];
     String[][] postsByCategory=new String[MAX_POSTS_PER_TIME][8];
     String[][] postsByReplyNum=new String[MAX_POSTS_PER_TIME][8];
     String[][] postsByDate=new String[MAX_POSTS_PER_TIME][8];
     String[] allInParagrah=new String[7];
    public void setReqAddPostsTimes(int i){
	this.reqAddPostsTimes=i;
    }
    public int getReqAddPostsTimes(){
	return this.reqAddPostsTimes;
    }
    public String ParseTitle(String[][] mixStr){
	String titleContents="";
	for(int i=0;i<this.MAX_POSTS_LOAD_PER_TIME*this.reqAddPostsTimes;++i){
	    if(mixStr[i][2]!=null)
		titleContents+=" <a href='javascript:' onclick=\"window.parent.showPostContents("+mixStr[i][0]+")\" title='热度:"+mixStr[i][7]+"\n点击:"+mixStr[i][3]+"\n评论:"+mixStr[i][5]+"\n版块:"+mixStr[i][4]+"\n作者:"+mixStr[i][1]+"\n日期:"+mixStr[i][6].substring(0,mixStr[i][6].length()-2)+"' >"+mixStr[i][2]+"</a><br><br> <img src='/prj/wobbs/img/postsTitleSplit.png' style='width:1000px;'></img> <br><br>";
	}
	return titleContents;
    }
    public String ParseParagraph(String mixPara[]){
	if(mixPara[3].equals(null))
	    mixPara[3]="";
	String paragraphContents="<div style='white-space:nowrap;'> <a href='javascript:' onclick='clickImg(\"postAvatar"+mixPara[0]+"\")'> <img id=\"postAvatar"+mixPara[0]+"\" src='"+new FindUserAvatar().Find(mixPara[1])+"' style='width:50px;border-radius:3px;'></img></a><a href='javascript:' onclick='' id='postUser"+mixPara[0]+"'><span style='color:#444444;'>"+mixPara[1]+"</span></a><span style='float:right;font-size:90%;padding-right:9px;'><img title='热度' src='/prj/wobbs/img/hot.gif'>"+mixPara[4]+"<a href='javascript:' id='postShare"+mixPara[0]+"' onclick='clickShare(\"postShare"+mixPara[0]+"\")' style='margin-left:10px;color:#76839b;font-size:92%;'>分享</a> <a href='javascript:' onclick='clickFavorite(\"postFavorite"+mixPara[0]+"\")' style='margin-left:10px;color:#76839b;font-size:92%;'>收藏</a> </span></div><div><h4>"+mixPara[2]+"</h4><br></div><div><p>"+mixPara[3]+"</p></div><div style='white-space:nowrap;'><a id='postLike"+mixPara[0]+"' href='javascript:' onclick='clickLike(\"postLike"+mixPara[0]+"\",\"postDiss"+mixPara[0]+"\")' style='font-size:200%;color:#d9edff;' title=\"我觉得OK\">▲</a><a id='postDiss"+mixPara[0]+"' style='font-size:200%;color:#d9edff;' href='javascript:' onclick='clickDiss(\"postLike"+mixPara[0]+"\",\"postDiss"+mixPara[0]+"\")' title=\"我觉得不行\" >▼</a><a href='javascript:' onclick='clickReplyDiv(\"postReplyDiv"+mixPara[0]+"\")' style='margin-left:10px;color:#76839d;font-size:92%;'>评论("+mixPara[6]+")</a><div id='postReplyDiv"+mixPara[0]+"' style='display:none' name='postReplyDiv"+mixPara[0]+"'><form action='/prj/wobbs/ReplyPostServlet' method='post' name='publishForm' id='publishForm' target='_blank'> <textarea rows='6' style='width:70%;margin-left:83px;' name='reply' id='reply' ></textarea><input type='submit' style='border-radius:5px;border:0px;backgroud-color:;' value='发布'><input type='hidden' name='POSTID_COPY' id='POSTID_COPY' value='"+mixPara[0]+"'></form></div> <a href='javascript:' onclick='clickReport(\"postReport"+mixPara[0]+"\")' style='margin-right:3px;font-size:60%;float:right;'>举报</a><span style='font-size:80%;float:right;'>"+mixPara[5].substring(0,mixPara[5].length()-2)+"</span></div><img src='/prj/wobbs/img/postsTitleSplit.png' style='width:1000px;'> ";
	return paragraphContents;
    }
    public String GetParagraph(int id)throws SQLException{//Get post's paragraph,adjust post title,owner and its' avatar
	InitConnection();
	String sql="select owner,title,paragraph,hotValue,postDate,replyNum from post where id=?";
	String[] contents=new String[7];
	PreparedStatement pstmt=connection.prepareStatement(sql);
	pstmt.setInt(1,id);
	ResultSet rs=pstmt.executeQuery();
	rs.next();contents[0]=""+id;
	for(int i=1;i<7;++i)
	    contents[i]=rs.getString(i);
	this.allInParagrah=contents;
	DestroyConnection();
	return this.ParseParagraph(contents);
    }
    public String GetTitles(String... s)throws SQLException{
	if(s[0].equals("hotValue")){
	    this.ByHotValue();
	    return this.ParseTitle(postsByHotValue);
	}
	if(s[0].equals("owner")){
	    this.ByOwner(s[1]);
	    return this.ParseTitle(postsByOwner);
	}
	if(s[0].equals("date")){
	    this.ByDate();
	     return this.ParseTitle(postsByDate);
	}
	if(s[0].equals("category")){
	    this.ByCategory(s[1]);
	     return this.ParseTitle(postsByCategory);
	}
	    this.ByReplyNum();
	    return this.ParseTitle(postsByReplyNum);
    }
    //Get posts order by owner and specify order style
    public void ByOwner (String owner)throws SQLException{
	InitConnection();
	String sql="select id,owner,title,clickNum,category,replyNum,postDate,hotValue from post where owner=? order by ? desc";
	String[][] posts=new String[this.MAX_POSTS_PER_TIME][8];
	PreparedStatement pstmt=connection.prepareStatement(sql);
	pstmt.setString(1,owner);
	pstmt.setString(2,this.orderStyle);
	ResultSet rs=pstmt.executeQuery();
	for(int i=0;rs.next()&&i<this.MAX_POSTS_PER_TIME;++i){
	    for(int j=0;j<8;++j){
		if(j==7) {
		    double d=rs.getDouble(8);
		    posts[i][7]=Double.toString(d);
		} 
		else posts[i][j]=rs.getString(j+1);
	    }
	}
	DestroyConnection();
	this.postsByOwner=posts;
    }
    public void ByHotValue ()throws SQLException{
	InitConnection();
	String sql="select id,owner,title,clickNum,category,replyNum,postDate,hotValue from post order by hotValue desc";
	String[][] posts=new String[this.MAX_POSTS_PER_TIME][8];
	PreparedStatement pstmt=connection.prepareStatement(sql);
	ResultSet rs=pstmt.executeQuery();
	for(int i=0;rs.next()&&i<this.MAX_POSTS_PER_TIME;++i){
	    for(int j=0;j<8;++j){
		if(j==7) {
		    double d=rs.getDouble(8);
		    posts[i][7]=Double.toString(d);
		}
		else posts[i][j]=rs.getString(j+1);
	    }
	}
	DestroyConnection();
	this.postsByHotValue=posts;
    }
    public void ByCategory (String category)throws SQLException{
	InitConnection();
	String sql="select id,owner,title,clickNum,category,replyNum,postDate,hotValue from post where category=? order by ? desc";
	String[][] posts=new String[this.MAX_POSTS_PER_TIME][8];
	PreparedStatement pstmt=connection.prepareStatement(sql);
	pstmt.setString(1,category);
	pstmt.setString(2,this.orderStyle);
	ResultSet rs=pstmt.executeQuery();
	for(int i=0;rs.next()&&i<this.MAX_POSTS_PER_TIME;++i){
	    for(int j=0;j<8;++j){
		if(j==7) {
		    double d=rs.getDouble(8);
		    posts[i][7]=Double.toString(d);
		}
		else posts[i][j]=rs.getString(j+1);
	    }
	}
	DestroyConnection();
	this.postsByCategory=posts;
    }
    public void ByReplyNum() throws SQLException{
	InitConnection();
	String sql="select id,owner,title,clickNum,category,replyNum,postDate,hotValue from post order by replyNum desc ";
	String[][] posts=new String[MAX_POSTS_PER_TIME][8];
	PreparedStatement pstmt=connection.prepareStatement(sql);
	ResultSet rs=pstmt.executeQuery();
	for(int i=0;rs.next()&&i<this.MAX_POSTS_PER_TIME;++i){
	    for(int j=0;j<8;++j){
		if(j==7) {
		    double d=rs.getDouble(8);
		    posts[i][7]=Double.toString(d);
		}
		else posts[i][j]=rs.getString(j+1);
	    }
	}
	DestroyConnection();
	this.postsByReplyNum=posts;
    }
    public void ByDate()throws SQLException{
	InitConnection();
	String sql="select id,owner,title,clickNum,category,replyNum,postDate,hotValue from post order by postDate desc ";
	String[][] posts=new String[MAX_POSTS_PER_TIME][8];
	PreparedStatement pstmt=connection.prepareStatement(sql);
	ResultSet rs=pstmt.executeQuery();
	for(int i=0;rs.next()&&i<this.MAX_POSTS_PER_TIME;++i){
	    for(int j=0;j<8;++j){
		if(j==7) {
		    double d=rs.getDouble(8);
		    posts[i][7]=Double.toString(d);
		}
		else posts[i][j]=rs.getString(j+1);
	    }
	}
	DestroyConnection();
	this.postsByDate=posts;
    }
    public static void main(String[] args)throws SQLException{
	System.out.println(new GetPosts().GetTitles(args[0],args[1]));
    }
}

