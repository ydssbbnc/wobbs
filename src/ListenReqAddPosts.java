package com.ydssbbnc.prj.wobbs;
import com.ydssbbnc.prj.wobbs.StaticData;
import java.lang.*;
public class ListenReqAddPosts{
    public static void main(String[] args){
	int TIME_INTERVAL=1000*Integer.parseInt(args[0]);//Set time interval 
	Runnable runable=new Runnable(){
		public void run(){
		    int i=0;
		    while(true){
			try{
			System.out.println(":开始第"+i+"次查看StaticState(更新时间间隔"+TIME_INTERVAL/1000+"秒");
			i++;
			System.out.println("title:"+StaticData.getTitle());
			System.out.println("orderStyle:"+StaticData.getOrderStyle());
			System.out.println("oldScrollTop:"+StaticData.getOldScrollTop());
			System.out.println("reqAddPosts:"+StaticData.getReqAddPosts());
			System.out.println("reqTimes:"+StaticData.getReqAddTimes());
			Thread.sleep(TIME_INTERVAL);
			}catch(InterruptedException e){}
		    }
		}
	    };
	Thread thread=new Thread(runable);
	thread.start();
    }
}
