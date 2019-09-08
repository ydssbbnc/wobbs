package com.ydssbbnc.prj.wobbs;
/*Function : get... function recieve string (you have already gotten from cookie USER_ALL_IN_ONE),returns corresponding field
 *Note : String paramgram's field must be orderly
 *@author : ydssbbnc
 *Email : ydssbbnc@gmail.com/ydssbbnc@163.com
 *TAG : FINISHED!
 */
public class ParseCookie{
    public String getName(String s){
	int tag=0;String name="",tmp=s;
	for(int i=0;i<s.length()&&tag!=2;++i){
	    if((tmp=s.substring(i,i+1)).equals("`"))
		++tag;
	    else 
		name+=s.substring(i,i+1);
	}
	return name;	
    }
    
    public String getAvatar(String s){
	int tag=0;String avatar="",tmp=s;
	for(int i=0;i<s.length()&&tag!=3;++i){
	    if((tmp=s.substring(i,i+1)).equals("`"))
		++tag;
	    else if(tag>1)
		avatar+=s.substring(i,i+1);
	}
	return avatar;	
    }
    public String getLikeNum(String s){
	int tag=0;String like="",tmp=s;
	for(int i=0;i<s.length()&&tag!=4;++i){
	    if((tmp=s.substring(i,i+1)).equals("`"))
		++tag;
	    else if(tag>2)
		like+=s.substring(i,i+1);
	}
	return like;	
    }
    public String getPostNum(String s){
	int tag=0;String post="",tmp=s;
	for(int i=0;i<s.length()&&tag!=5;++i){
	    if((tmp=s.substring(i,i+1)).equals("`"))
		++tag;
	    else if(tag>3)
		post+=s.substring(i,i+1);
	}
	return post;
    }
    public String getVisitNum(String s){
	int tag=0;String visit="",tmp=s;
	for(int i=0;i<s.length()&&tag!=6;++i){
	    if((tmp=s.substring(i,i+1)).equals("`"))
		++tag;
	    else if(tag>4)
		visit+=s.substring(i,i+1);
	}
	return visit;
    }
    public String getReplyNum(String s){
	int tag=0;String reply="",tmp=s;
	for(int i=0;i<s.length()&&tag!=7;++i){
	    if((tmp=s.substring(i,i+1)).equals("`")){
		++tag;
	    }
	    else if(tag>5)
		reply+=s.substring(i,i+1);
	}
	return reply;
    }
    /*Below block reserved to debug
    public static void main(String[] args){
	String s="\\name:slfj\\avatar:dsfj\\replyNum:29348\\";
	System.out.println(new ParseCookie().getName(s));
	System.out.println(new ParseCookie().getAvatar(s));	
    }*/
}
