package com.ydssbbnc.prj.wobbs;
/*Function : dynamic generate top area of wobbs page 
 *Note : This page should be included in wobbs(index of site) 
 *@author : ydssbbnc
 *Email : ydssbbnc@gmail.com/ydssbbnc@163.com
 *TAG : DOING...
 */

<%@ page language="java" contentType="text/html; charset=UTF-8"	 pageEncoding="UTF-8"%>
<html>
    <meta contentType="text/html" charset="utf-8">
    <head>
	<link rel="stylesheet" type="text/css" href="../css/a_link.css">
	<style>
	 ::-webkit-scrollbar
	 {
	     width:0px;
	     height:0px;
	 }
	 ::-webkit-input-placeholder { /* WebKit browsers */
	     color:#7b7b7b;/*set placeholder's text color*/
	 }
	 input:focus{
	     outline:none;
	 }
	</style>
    </head>
    <body>
	<div style="background-color:#282A36;text-align:center;letter-spacing:5px;" >
	    <form name="indexSearch" saction="/prj/wobbs/IndexSearchBarServlet" method="post">
		<input type="text" style="border-radius:10px;width:100%;height:27px;text-align:center;background-color:gray;background: rgb(0, 0, 0);border:0px;color:#868686;font-size:105%;" name="top_wobbs_input" placeholder="" >
	    </form>
	</div>
	<div style="margin-top:0px;background-color:#282a36;letter-spacing:3px;text-align:center;">
			<a style="text-decoration:none;" title="注册" href="registe.html"><b>【</b></a>
			<a style="text-decoration:none;" title="随机" href="a.html"><b>a</b></a>
 			<a style="text-decoration:none;" title="最热" href="b.html"><b>b</b></a>
			<a style="text-decoration:none;" title="最新" href="c.html"><b>c</b></a>
			<a style="text-decoration:none;" title="回复最多" href="d.html"><b>d</b></a>
			<a style="text-decoration:none;" title="" href="e.html"><b>e</b></a>
			<a style="text-decoration:none;" title="自定义" href="f.html"><b>f</b></a>
			<a style="text-decoration:none;" title="自定义" href="g.html"><b>g</b></a>
			<a style="text-decoration:none;" title="自定义" href="h.html"><b>h</b></a>
			<a style="text-decoration:none;" title="自定义" href="i.html"><b>i</b></a>
			<a style="text-decoration:none;" title="自定义" href="j.html"><b>j</b></a>
			<a style="text-decoration:none;" title="自定义" href="k.html"><b>k</b></a>
			<a style="text-decoration:none;" title="自定义" href="l.html"><b>l</b></a>
			<a style="text-decoration:none;" title="自定义" href="m.html"><b>m</b></a>
			<a style="text-decoration:none;" title="自定义" href="n.html"><b>n</b></a>
			<a style="text-decoration:none;" title="自定义" href="o.html"><b>o</b></a>
			<a style="text-decoration:none;" title="自定义" href="p.html"><b>p</b></a>
			<a style="text-decoration:none;" title="自定义" href="q.html"><b>q</b></a>
			<a style="text-decoration:none;" title="自定义" href="r.html"><b>r</b></a>
			<a style="text-decoration:none;" title="自定义" href="s.html"><b>s</b></a>
			<a style="text-decoration:none;" title="自定义" href="t.html"><b>t</b></a>
			<a style="text-decoration:none;" title="自定义" href="u.html"><b>u</b></a>
			<a style="text-decoration:none;" title="自定义" href="v.html"><b>v</b></a>
			<a style="text-decoration:none;" title="自定义" href="w.html"><b>w</b></a>
			<a style="text-decoration:none;" title="自定义" href="x.html"><b>x</b></a>
			<a style="text-decoration:none;" title="发贴" href="javascript:showAShow('postAPost.jsp');"><b>y</b></a>
			<a style="text-decoration:none;" title="个人中心" href="personalCenter.jsp"><b>z</b></a>
	    <a style="text-decoration:none;" title="登录" href="login.html"><b>】</b></a>
	</div>
    </body>
</html>

