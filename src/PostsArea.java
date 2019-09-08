package com.ydssbbnc.prj.wobbs;
import com.ydssbbnc.prj.wobbs.StaticData;
import java.sql.*;
import com.ydssbbnc.prj.wobbs.GetPosts;
/*Function : Dynamicly set contents in posts page.
 *Note : Keep an eye on the strings that dynamicly change page contents,there are 100000 rows posts prepared in GetPosts class if new it,so don't need consider posts' dynamic change will messy listed posts' order in web page.Get MAX_POSTS_LOAD_PER_TIME posts per time
 *@author : ydssbbnc
 *Email : ydssbbnc@163.com/ydssbbnc@gmail.com
 *TAG : DOING...
 */
public class PostsArea{
    
    public String getPostsFrame(String... s){//s[0] represent orderstyle ,s[1] represent argument(if exist)
	String titles="";
	      try{
		  if(s[0].equals("owner"))
		    titles=  new GetPosts().GetTitles(s[0],s[1]);
		  else if(s[0].equals("category"))
		     titles= new GetPosts().GetTitles(s[0],s[1]);
		  else if(s[0].equals("hotValue")||s[0].equals("date"))
		     titles= new GetPosts().GetTitles(s[0]);
	      } catch(SQLException e){}	      
    // private String a_text="<li> <a href=''>"+postsTitle+"</a><br>";
	  String postsFrame="<html>    <meta http-equiv='Content-Type' content='text/html;charset=utf-8\'/>    <head>	<style>	 	 a:link {	     color:#175199;	 }	 a:visited {	     color:#175199;	 }	 a:hover { transition-delay:0.001s;	     color: #4285f4;	 }	 a:active {	     color:#175199;	 }	 a{ cursor:text;  text-decoration:none;	     font-size:100%;	 } 	 html,body{	     background-color:#ffffff;	     width:98%;	     height:98.5%;overflow-x:hidden;	  	 }  ::-webkit-scrollbar{	width:6px;     	    border-radius:8px;    background-color:#53d358;	 }	 ::-webkit-scrollbar-track{width:6px;	     border-radius:6px;  		 } ::-webkit-scrollbar-thumb{	     border-radius:6px;	     background-color:#FBBC05;	 }	 	</style>  	<script> function getScrollTop(){	     　　var scrollTop = 0, bodyScrollTop = 0, documentScrollTop = 0;	     　　if(document.body){		 　　　　bodyScrollTop = document.body.scrollTop;		 　　}	     　　if(document.documentElement){		 　　　　documentScrollTop = document.documentElement.scrollTop;		 　　}	     　　scrollTop = (bodyScrollTop - documentScrollTop > 0) ? bodyScrollTop : documentScrollTop;	     　　return scrollTop;	 }	 function getScrollHeight(){	     　　var scrollHeight = 0, bodyScrollHeight = 0, documentScrollHeight = 0;	     　　if(document.body){		 　　　　bodyScrollHeight = document.body.scrollHeight;		 　　}	     　　if(document.documentElement){		 　　　　documentScrollHeight = document.documentElement.scrollHeight;		 　　}	     　　scrollHeight = (bodyScrollHeight - documentScrollHeight > 0) ? bodyScrollHeight : documentScrollHeight;	     　　return scrollHeight;	 }	 function getWindowHeight(){	     　　var windowHeight = 0;	     　　if(document.compatMode == 'CSS1Compat'){		 　　　　windowHeight = document.documentElement.clientHeight;		 　　}else{		     　　　　windowHeight = document.body.clientHeight;		     　　}	     　　return windowHeight;	 }	 window.onscroll = function(){	     　　if(((getScrollTop() + getWindowHeight())/getScrollHeight())>0.98){		 　		 　　}	 };	</script>	 </head> <body >	 "+titles+" </body> </div> </html>";
	  return postsFrame;
    }
}
