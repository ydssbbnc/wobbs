<%@ page language="java" contentType="text/html; charset=UTF-8"	 pageEncoding="UTF-8"%>
<html>
    <head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="../css/a_link.css">
	<style>
	 html,body{
	     background-color:#282a36;
	     height:100%;
	     margin:0;
	 }
	 .topArea{
	     color:#868686;
	     width:100%;
	     text-align:center;
}
	 .operateArea{
	     margin-top:0;
	     width:30%;
	     margin-left:0;
	     height:85%;
	     float:left;
	 }
	 .showArea{
	     float:right;
	     margin-top:0;
	     width:67%;
	     border:  solid #3B6273;
	     margin-right:0;
	     height:87%;
	 }
	 .avatar{
	     width:100%;
	 }
	 .leftOperate{
	     padding-left:10%;
	 }
	</style>
	<script type="text/javascript" src="../js/parseUSER_ALL_IN_ONE.js"></script> 
	<script>
	 function setUserName(id){
	     document.getElementById(id).innerHTML+=getName();
	 }
	 function chooseImg(file){
	     var file=file.files[0];
	     var reader=new FileReader();
	     reader.readAsDataURL(file);
	     reader.onload=function(){
		 var img=document.getElementById('img');
		 img.src=this.result
	     };
	 }
	 function setAvatar(){
	     document.getElementById("img").setAttribute('src',getAvatar());
	 }
	 function setNums(){
	     document.getElementById("nums").innerHTML+="点赞数："+getLikeNum()+"&nbsp;&nbsp;&nbsp;"
	     document.getElementById("nums").innerHTML+="发贴数："+getPostNum()+"&nbsp;&nbsp;&nbsp;"
	     document.getElementById("nums").innerHTML+="访问数："+getVisitNum()+"&nbsp;&nbsp;&nbsp;"
	     document.getElementById("nums").innerHTML+="回复数："+getReplyNum()+"&nbsp;&nbsp;&nbsp;"
	 }
	 var x=document.cookie;
	 function a(){
	     alert(pairCookie(x,pair));
	 }
	</script>

    </head>
    <body onload="setUserName('h3_user_name');setAvatar();setNums();" >
	<div class="topArea">
	    <h4  id="h3_user_name" >你好，
	    </h4>
	</div>
	<div class="operateArea">
	    <img class="avatar" id="img" onload="setAvatar('img')"  onclick="avatar.click()"  alt="default" />
	    <form action="/prj/wobbs/ModifyAvatarServlet" method="post" enctype="multipart/form-data">
		<input id="avatar" name="uploadFile" type="file" onchange="chooseImg(this);sub.click();" style="display:none">
		<input type="submit" id="sub" value="Go" style="display:none" />
	    </form>
	    <a class="leftOperate" href="changePwd.html"  >修改密码</a><br>
	    <a class="leftOperate" href="changeName.html"  >修改昵称</a><br>
	    <a class="leftOperate" href="changeEmail.html"  >修改email</a><br>
	    <a class="leftOperate" href="changePwd.html"  >发过的帖子</a><br>
	    <a class="leftOperate" href="changeName.html"  >回过的帖子</a><br>
	    <a class="leftOperate" href="changeName.html"  >分享的帖子</a><br>
	    <a class="leftOperate" href="changeName.html"  >我的好友</a><br>
	    <a class="leftOperate" href="changeName.html"  >我的黑名单</a><br>
	    <a class="leftOperate" href="changeName.html"  >我收藏的帖子</a><br>
	    <a class="leftOperate" href="changeName.html"  >我举报过的用户</a><br>
	    <a class="leftOperate" href="changeName.html"  >我举报过的帖子</a><br>
	</div>
	<div class="showArea">
	    <div style="color:#777777;margin-top:0;">
		<p id="nums"></p>
		<h4 style="color:#868686;text-align:center;margin-top:0;"><b>News</b></h4>
	    </div>
	</div>
    </body>
</html>
	
