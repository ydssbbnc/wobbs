package com.ydssbbnc.prj.wobbs;
import java.sql.*;
import com.ydssbbnc.prj.wobbs.SearchInMaria;
public class SearchArea{
    public String getSearchArea(String text){
	String titles="";
	try{
	    titles=new SearchInMaria().GetTitles(text);
	}catch(SQLException e){}
	String searchAreaFrame="<html>    <meta http-equiv='Content-Type' content='text/html;charset=utf-8\'/>    <head>	<style>	 	 a:link {	     color:#175199;	 }	 a:visited {	     color:#175199;	 }	 a:hover { transition-delay:0.001s;	     color: #4285f4;	 }	 a:active {	     color:#175199;	 }	 a{ cursor:text;  text-decoration:none;	     font-size:100%;	 } 	 html,body{	     background-color:#ffffff;	     width:98%;	     height:98.5%;overflow-x:hidden;	  	 }  ::-webkit-scrollbar{	width:6px;     	    border-radius:8px;    background-color:#53d358;	 }	 ::-webkit-scrollbar-track{width:6px;	     border-radius:6px;  		 } ::-webkit-scrollbar-thumb{	     border-radius:6px;	     background-color:#FBBC05;	 }	 	</style>  	<script> function getScrollTop(){	     　　var scrollTop = 0, bodyScrollTop = 0, documentScrollTop = 0;	     　　if(document.body){		 　　　　bodyScrollTop = document.body.scrollTop;		 　　}	     　　if(document.documentElement){		 　　　　documentScrollTop = document.documentElement.scrollTop;		 　　}	     　　scrollTop = (bodyScrollTop - documentScrollTop > 0) ? bodyScrollTop : documentScrollTop;	     　　return scrollTop;	 }	 function getScrollHeight(){	     　　var scrollHeight = 0, bodyScrollHeight = 0, documentScrollHeight = 0;	     　　if(document.body){		 　　　　bodyScrollHeight = document.body.scrollHeight;		 　　}	     　　if(document.documentElement){		 　　　　documentScrollHeight = document.documentElement.scrollHeight;		 　　}	     　　scrollHeight = (bodyScrollHeight - documentScrollHeight > 0) ? bodyScrollHeight : documentScrollHeight;	     　　return scrollHeight;	 }	 function getWindowHeight(){	     　　var windowHeight = 0;	     　　if(document.compatMode == 'CSS1Compat'){		 　　　　windowHeight = document.documentElement.clientHeight;		 　　}else{		     　　　　windowHeight = document.body.clientHeight;		     　　}	     　　return windowHeight;	 }	 window.onscroll = function(){	     　　if(((getScrollTop() + getWindowHeight())/getScrollHeight())>0.98){		 　		 　　}	 };	</script>	 </head> <body ><p>搜索:<span style='color:#4285F4;font-size:107%;'><b>"+text+"</b></span>的结果<p> <img src='/prj/wobbs/img/postsTitleSplit.png' style='width:1000px;'></img><br>	 "+titles+" </body> </div> </html>";
	  return searchAreaFrame;
    }
}
