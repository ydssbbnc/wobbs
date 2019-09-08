package com.ydssbbnc.prj.wobbs;
import java.math.*;
import java.text.SimpleDateFormat;
import com.ydssbbnc.prj.wobbs.ConMariaWobbs;
import java.util.Date;
import java.sql.*;
import java.lang.*;
/*Function : Update posts hotValue dynamicly
 *Note : Update time interval shouldn't be too short
 *@author : ydssbbnc
 *Email : ydssbbnc@gmail.com/ydssbbnc@163.com
 *TAG : DOING...
 */
public class UpdateHotValue extends ConMariaWobbs{
    UpdateHotValue() throws SQLException{
	InitConnection();
	/*Select read numbers(clickNums) as base */
	final double READ_REPLY_RATE=1/6d;//Recording to someone's analysis
	final double READ_LIKE_RATE=1/10d;//Based on my QQ zone
	final double READ_SHARE_RATE=1/4d;    /*Below data are not trusted*/
	final double READ_FAVORITE_RATE=1/4d;/*                          */
	final double READ_REPORT_RATE=-1/4d;/*                          */
	final double READ_TIME_RATE=1/12d; /*                          */
       	String selectNums="select id,likeNum,clickNum,shareNums,favoriteNums,reportNum,postDate,replyNum from post";
	PreparedStatement select=connection.prepareStatement(selectNums);
	ResultSet rs=select.executeQuery();
	while(rs.next()){
	    String updateHotValue="update post set hotValue=? where id=?";
	    PreparedStatement update=connection.prepareStatement(updateHotValue);
	    String postDate=rs.getString(7);
	    String postYear=postDate.substring(0,4);
	    String postMonth=postDate.substring(5,7);
	    String postDay=postDate.substring(8,10);
	    String postHour=postDate.substring(11,13);
	    String postMinute=postDate.substring(14,16);
	    String postFullDate=postYear+postMonth+postDay+postHour;
	    Date date=new Date();
	    SimpleDateFormat dateFormat=new SimpleDateFormat("YYYY-MM-dd HH:mm");
	    String currentYear=dateFormat.format(date).substring(0,4);
	    String currentMonth=dateFormat.format(date).substring(5,7);
	    String currentDay=dateFormat.format(date).substring(8,10);
	    String currentHour=dateFormat.format(date).substring(11,13);
	    String currentMinute=dateFormat.format(date).substring(14,16);
	    String currentFullDate=currentYear+currentMonth+currentDay+currentHour;
	    int subYear=Integer.parseInt(currentYear)-Integer.parseInt(postYear);
	    int subMoth=Integer.parseInt(currentMonth)-Integer.parseInt(postMonth);
	    int subDay=Integer.parseInt(currentDay)-Integer.parseInt(postDay);
	    int subHour=Integer.parseInt(currentHour)-Integer.parseInt(postHour);
	    int subMinute=Integer.parseInt(currentMinute)-Integer.parseInt(postMinute);
	    double subTime=0;
	    if(subYear>0)
		subTime=1/Math.sqrt((Math.sqrt(365*subYear+30*subMoth+subDay)));
	    else if(subMoth>6)
		subTime=10/Math.sqrt(subMoth*30+subDay);
	    else if(subMoth>2)
		subTime=100/(subMoth*30+subDay);
	    else if(subMoth>0)
		subTime=Math.sqrt(subDay+subMoth*30)/10d;
	    else if(subDay>15)
		subTime=subDay/7d;
	    else if(subDay>7)
		subTime=subDay*subDay/10d;
	    else if(subDay>0)
		subTime=(subDay*24+subHour)/10d;
	    else if(subHour>2)
		subTime=(subHour*60+subMinute)*(subHour*60+subMinute)*(subMinute+60*subHour)/1000000d;
	    else 
		subTime=(subHour*60+subMinute)*(subHour*60+subMinute)/1000d;
	    int likeNums=rs.getInt(2),clickNums=rs.getInt(3),shareNums=rs.getInt(4),favoriteNums=rs.getInt(5),reportNums=rs.getInt(6),replyNum=rs.getInt(8);
	    double hotValue=clickNums+READ_REPLY_RATE*replyNum+READ_LIKE_RATE*likeNums+READ_SHARE_RATE*shareNums+READ_FAVORITE_RATE*favoriteNums+READ_REPORT_RATE*reportNums+READ_TIME_RATE*subTime;
	    update.setDouble(1,hotValue);
	    update.setInt(2,(rs.getInt(1)));
	    update.executeUpdate();
	}
	DestroyConnection();
    }
    public static void main(String[] args) throws SQLException{
	int TIME_INTERVAL=1000*Integer.parseInt(args[0]);//Set time interval 
	Runnable runable=new Runnable(){
		public void run(){
		    int i=0;
		    while(true){
			try{
			new UpdateHotValue();
			++i;
			System.out.println(new Date()+":开始第"+i+"次更新hotValue(更新时间间隔"+TIME_INTERVAL/(1000)+"秒)");
			}catch(SQLException e){}
			try {
			    Thread.sleep(TIME_INTERVAL);
			} catch (Exception e) {}
		    }
		}
	    };
	Thread thread=new Thread(runable);
	thread.start();
    }
}

