<%@ page language="java" contentType="text/html; charset=UTF-8"	 pageEncoding="UTF-8"%>
<html style="background-color:#282A36;">
    <meta contentType="text/html" charset="utf-8">
    <head>
	<title>WO~~</title>
	<style>
	 ::-webkit-scrollbar{
	     width:0px;
	 }
	</style>
	<script>
	 function clickMenuBar(icon){
	     if(icon=='a'){
		 document.getElementById("orderStyle").value='default';
	     }else if(icon=='b'){
		 document.getElementById("orderStyle").value='hotValue';
	     }else if(icon=='c'){
		 document.getElementById("orderStyle").value='date';
	     }else if(icon=='d'){
		 document.getElementById("orderStyle").value='reply';
	     }else if(icon=='e'){
		 document.getElementById("orderStyle").value='random';
	     }else{
		 document.getElementById("orderStyle").value='RESERVED';
	     }
	     document.getElementById("orderStyleForm").submit();
	 }
	 function redirectShow(src){
	     document.getElementById("show").setAttribute('src',src);
	 }
	 function showPostContents(postId){
	     //First pass postId to PostContentsServlet class
	     document.getElementById("setPostId").setAttribute('value',postId);
	     document.getElementById("postContents").submit();
	 }
	 function searchPost(text){
	     document.getElementById('topAreaSearchBarInput').setAttribute('value',text);
	     document.getElementById('searchForm').submit();
	 }
	</script>
    </head>
    <body >
	<div style="display:none" >
	    <form action="/prj/wobbs/PostContentsServlet" target="showArea" method="post" id="postContents">
		<input type="hidden" name="postId" id="setPostId" >
	    </form>
	    <form action='/prj/wobbs/PostsAreaServlet' id='orderStyleForm' name='orderStyleForm' target='postsArea'>
		<input type='hidden' name="orderStyle" id='orderStyle' value='hotValue'>
	    </form>
	    <form action='/prj/wobbs/SearchAreaServlet' method='get' target='postsArea' id="searchForm">
		<input type='hidden' id='topAreaSearchBarInput' name='topAreaSearchBarInput'>
	    </form>
	</div>
	
	<div style="margin-top:0;">
	    <iframe id="top" src="top_wobbs.jsp" style="height:56px;width:100%;" name="top" frameborder="no;"> </iframe>
	</div>
	<div style="width:0px;height:0px;display:none" id="auxiliaryDiv" name="auxiliaryDiv">
	    <iframe id='auxiliary' name='auxiliary' style='display:none;' scrolling='yes' noresize > </iframe>
	</div>
	<div style="float:left;width:215px;height:92%;">
	    <iframe id="postsArea"  src="/prj/wobbs/PostsAreaServlet" style="height:100%;width:100%;overflow:auto;" name='postsArea' frameborder="no;" ></iframe>
	</div>
	<div style="margin-left:215px;height:92%;">
	    <iframe id="show" src="/prj/wobbs/page/personalCenter.jsp" name='showArea' style="height:100%;width:99%;" frameborder="no;"></iframe>
	</div>
    </body>
</html>
