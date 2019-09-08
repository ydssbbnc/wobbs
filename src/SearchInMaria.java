package com.ydssbbnc.prj.wobbs;
import java.sql.*;
import com.ydssbbnc.prj.wobbs.ConMariaWobbs;
public class SearchInMaria extends ConMariaWobbs{
    int MAX_ROWS_LOAD_PER_TIME=1220,MAX_COLUMNS=8;
    String[][] searchContents=new String[MAX_ROWS_LOAD_PER_TIME][MAX_COLUMNS];
    public void Search(String text)throws SQLException{
	InitConnection();
	String sql="select id,owner,title,clickNum,category,replyNum,postDate,hotValue from post where title like '%"+text+"%'";
	String[][] postContents=new String[this.MAX_ROWS_LOAD_PER_TIME][this.MAX_COLUMNS];
	PreparedStatement postPstmt=connection.prepareStatement(sql);
	ResultSet postRs=postPstmt.executeQuery();
	for(int i=0;postRs.next()&&i<this.MAX_ROWS_LOAD_PER_TIME;++i){
		for(int j=0;j<this.MAX_COLUMNS;++j)
		    if(postRs.getString(3)!=null&&postRs.getString(3).length()>0)
		    postContents[i][j]=postRs.getString(j+1);
	}
	this.searchContents=postContents;
    }
    public String ParseTitle(String[][] mixStr){
	String contents="";
	for(int i=0;i<this.MAX_ROWS_LOAD_PER_TIME;++i){
		if(mixStr[i][2]!=null&&mixStr[i][2].length()>0)
		    contents+=" <a href='javascript:' onclick=\"window.parent.showPostContents("+mixStr[i][0]+")\" title='热度:"+mixStr[i][7]+"\n点击:"+mixStr[i][3]+"\n评论:"+mixStr[i][5]+"\n版块:"+mixStr[i][4]+"\n作者:"+mixStr[i][1]+"\n日期:"+mixStr[i][6].substring(0,mixStr[i][6].length()-2)+"' >"+mixStr[i][2]+"</a><br><br> <img src='/prj/wobbs/img/postsTitleSplit.png' style='width:1000px;'></img> <br><br>";
	}
	return contents;
    }
    public String GetTitles(String text)throws SQLException{
	SearchInMaria sim=new SearchInMaria();
	sim.Search(text);
	return sim.ParseTitle(sim.searchContents);
    }
}
