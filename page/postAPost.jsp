<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<html>
    <meta contentType="text/html" charset="utf-8">
    <head>
	<title>Posting...</title>
	<style>
	 a:link {
	     color: #50FA7B;
	 }
	 a:visited {
	     color:#50FA7B ;
	 }
	 a:hover {
	     color: hotpink;
	 }
	 a:active {
	     color: blue;
	 }
	 a{
	     text-decoration:none;
	 }
	 html,body{
	     background-color:#282A36;
	     height:100%;
	     margin:0;
	 }
	 .input2{
	     float:right;
	     background-color:gray;
	     font-size:130%;
	     color:#FF79C6;
	     margin-right:0.9%;
	     text-align:center;
	 }
	 .input1{
	     background-color:gray;
	     font-size:130%;
	     color:#FF79C6;
	 }	 
	 ::-webkit-input-placeholder { /* WebKit browsers */
	     color:#FF79C6;/*set placeholder's text color*/
	     text-align:center;
	 }
	 textarea{
	     width:99%;
	     background-color:#282A36;
	     color:#FF79C6;
	     font-size:130%;
	 }
	 .textArea{
	     float:left;
	     width:100%;
	     height:99%;
	 }
	</style>
    </head>
    <body>
	<div class="textArea">
	    <form name="postApost" action="/prj/wobbs/PostAPostServlet" method="post">
		<textarea style="height:30%;" name="title"  rows="4" cols="44"　  wrap="hard" placeholder="帖子标题"></textarea><br>
		<textarea style="height:60%;" name="paragraph" rows="9" cols="44"　  wrap="hard" placeholder="正文内容"></textarea><br>
		<a href="javascript:postFile.click();">
		    <input type="file" style="display:none;" name="postFile" id="postFile">上传文件
		</a>
		<span style="color:#FF79C6;margin-left:3%;"><b>匿名?</b>
		    <input type="checkbox" style="color:#FF79C6;" id="anonymous" name="anonymous" ></span>
		    <span style="color:#FF79C6;margin-left:3%;"><b>分类:</b>
			<input style="font-weight:bold;font-size:medium;color:#FF79C6;width:11%;background-color:gray;border:none;"  id="category" name="category" placeholder="a" ></span>
		    
		    <input class="input2" type="submit" id="sub" value="Go" />
	</div>
	</form>
    </body>
</html>
