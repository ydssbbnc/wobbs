<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<html>
    <meta http-equiv="Content-Type"content="text/html;charset=utf-8"/>
    <head>
	<style>
	 a:link {
	     color:#175199;//#4285F4;
	 }
	 a:visited {
	     color:#1a1a1a;//#E6E6E6;//#006621;
	 }
	 a:hover {
	     color: #175199;//#1a0dab;
	 }
	 a:active {
	     color:#4285f4;
	 }
	 a{
	     text-decoration:none;
	     font-size:109%;
	 }
	 html,body{
	     background-color:#ffffff;
	     width:99%;
	     height:98%;
	     overflow-x:hidden;
	 }
	 ::-webkit-scrollbar{
	     width:6px;
	     border-radius:8px;
	     background-color:#FBBC05;
	 }
	 ::-webkit-scrollbar-track{
	     /*	     -webkit-box-shadow:inset 0 0 3px rgba(0,0,0,.3);*/
	     border-radius:8px;
	 }
	 ::-webkit-scrollbar-thumb{
	     border-radius:8px;
	     -webkit-box-shadow:inset 0 0 3px rgba(0,0,0,.3);/*rgba(0,0,0.3);*/
	     background-color:#EA4335;
	 }
	 img.title{
	     display:none;
	 }

	</style>
	<script>
	 function clickDiss(id){
	     if(document.getElementById(id).title=='我觉得不行'){
		 document.getElementById(id).style.color='#0084ff';
		 document.getElementById("dissPost").setAttribute('value',id+"dissed");
		 document.getElementById(id).title='取消Diss';
	     }else{
		 document.getElementById(id).style.color='#d9edff';
		 document.getElementById("dissPost").setAttribute('value',id+"cancleDissed");
		 document.getElementById(id).title='我觉得不行';
	     }
	 }

	 function clickFavorite(id){
	     
	 }
	 function clickShare(id){
	     
	 }
	 function clickReport(id){
	     
	 }
	 function clickLike(id){
	     if(document.getElementById(id).title=='我觉得OK'){
		 document.getElementById(id).style.color="#0084ff";
		 document.getElementById(id).title='取消赞';
		 
	     }else{
		 document.getElementById(id).style.color="#d9edff";
		 document.getElementById(id).title='我觉得OK';
	     }
	 }
	 function clickImg(id){
	     if(document.getElementById(id).style.width!="100%"){
		 document.getElementById(id).title=document.getElementById(id).style.width;
		 document.getElementById(id).style.width='100%';
	     }else
	     document.getElementById(id).style.width=document.getElementById(id).title;
	 }
	 function clickReply(id){
	     if(document.getElementById(id).style.display=="none")
		 document.getElementById(id).style.display="block";
	     else
		 document.getElementById(id).style.display="none";
	 }
	</script>
    </head>
    <body >
	<button font-size:16px;>发布</button>
	<button style=" box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);border:0px; background-color:#4285F4;   font-size:17px;border-radius:4px;">发布</button>
	<div style='white-space:nowrap;'>
	    <a href=""> <img id="img"  src='../avatar/ydssbbnc_9' style='width:50px;border-radius:3px;'  alt="default" /><span style='color:#444444;'>赵中天</span> <span></a><span style='float:right;font-size:90%;padding-right:9px;'><img "title="热度" src="../img/hot.gif;">1433		<a href='javascript:' online='' style=";margin-left:10px;color:#76839b;font-size:92%;">分享</a>
		<a href='javascript:' onclick='' style="margin-left:10px;color:#76839b;font-size:92%;">收藏</a>	
	    </span>	</div>
	<div>
	    <h4> 刚刚奔现时网恋对象变成了老奶奶，５５５，不想活了，还被骗了８千，大家快来给我磕个头安慰下我吧<br></span></h4>
	</div>
	<div>
	    <p>Google LLC[5] is an American multinational technology company that specializes in Internet-related services and products, which include online advertising technologies, search engine, cloud computing, software, and hardware. It is considered one of the Big Four technology companies, alongside Amazon, Apple and Facebook.[6][7] Google wafffff<br><a id='f1' href="javascript:" onclick="clickLike('f1');" style="font-size:200%;color:#d9edff;" title="我觉得OK">▲</a>
		<a id='f2' style="font-size:200%;color:#d9edff;" href='javascript:'onclick='clickDiss("f2")' title='我觉得不行'>▼</a>
		<a href='javascript:' onclick="clickReply('comment');" style="margin-left:10px;color:#76839b;font-size:92%;">评论(5)</a>
		<div id="comment" style="display:none" >		
		    <form action="/prj/wobbs/RdeplyServlet" method="post" >
			<textarea rows="6" onclick="document.getElementById('sub_0').background-color='#0077e6';border-radius:5px;;" style="width:70%;margin-left:83px;" name="cmment" >
			</textarea>
			<input type="hidden" name="postId" value="postId">
			<input type="hidden" name="replyId" value="-1">
			<input type="submit" value="发布评论" id="sub_0" style="border-radius:5px;border:0px;background-color:;">
		    </form>
		</div>
		<div>
		<a href='javascript:' onclick='' style="margin-right:3px;font-size:60%;float:right;">举报</a> <span style="font-size:80%;float:right;">2019/08/09 22:00 </span> 
	    </div><br>
	    <a href="javascript:" onclick="prePage" >上一页</a>
	    <a href="javascript:" onclick="nextPage">下一页</a>
	    <div>

	    </div>
	    <div>
		<img src='../avatar/Anonymous_0' style='width:50px;border-radius:3px;' ><span style='color:#444444;'>大FA明家</span><p>再说说电影宇宙里的“成仙”代表什么？是法力高低吗？不见得，哪吒并未成仙，就能与申公豹，太乙真人打个平手敖丙也不是仙，但法力未见得比太乙和申公豹低也许你会说哪吒敖丙是灵珠魔丸转世，天生法力高但再看那个“夜叉”，它也不是仙，但是吐泡泡石化的神通，可以石化住哪吒与敖丙那么成仙的申公豹和太乙真人，与哪吒等未成仙的人区别在哪电影中太乙真人说，“没事没事，我是神仙，不会死的”而敖丙，明显会被杀死，哪吒最后刺敖丙一火尖枪，敖丙问“你为什么不刺”，说明未成仙的人会死，而成仙无论怎样都不会死最后的天雷，哪吒与敖丙有万龙甲等宝贝护体，仍然被打的肉身崩解太乙真人，肉身抗天雷，也只是被削去顶上三花所以可以推测出，“成仙”的区别就在于，是否在天地间永存天雷代表天罚，所以天罚才可以削去太乙真人的顶上三花也许道行练就的“顶上三花”，就是成仙的标志，可以金身不灭再谈谈元始天尊的阴谋为什么元始天尊要多此一举，练出灵珠魔丸，还给魔丸下了个三年期引爆的天雷咒？电影中元始天尊露面很少，只说了一句“灵珠可托生为陈塘关总兵李靖的三儿子”为什么偏偏是李靖？陈塘关总兵李靖是什么人？那是抗击妖族前线关隘的一号人物，在人间威望鼎盛，敖丙一个出生两年的深海龙，都知道，“陈塘关李府，好找”而元始天尊的目的，就是让自己的灵珠，托生为李靖的三儿子，给陈塘关总兵李靖，打上元始天尊一派的烙印。其次，让灵珠借着陈塘关总兵的资源，斩妖除魔，建功立业，在封神中有所作为，为<video src="../video/01" controls width="100%"></video> 封神大战，埋下自己最重要的一颗棋子魔丸，就是元始天尊留给灵珠的大功劳没有功劳，也要创造功劳，太乙真人嘴不严，多次说到，“魔丸一定会为祸人间”那个天雷咒，是元始天尊上的一道保险，即使灵珠不敌魔丸，也可以保证魔丸不会势大难除如果元始天尊的计划通，那么元始天尊之名，仙界人间，将无人不晓，上有十二金仙，下有申公豹，哪吒等强力仙人，人间有李靖、殷夫人等虔诚信徒元始天尊的势力，将会成为天地间最强的势力天上一天，地下一年，元始天尊只需等待三天，他就会得到一枚封神中的强力棋子
		    。</p><div style="white-space:nowrap;"><a id='f1' href="javascript:" onclick="like('f1');" style="font-size:200%;color:#d9edff;" title="我觉得OK">▲</a><a style="font-size:200%;color:#d9edff;" href='javascript:' title='我觉得不行'>▼</a><a href="javascript:" style='font-size:160%;' title="取消赞"><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">回复</a><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">分享</a><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">收藏</a> <a href=""> <img id="img"  src='../avatar/ydssbbnc_9' style='width:50px;border-radius:3px;'  alt="default" /></a><a href='' style="margin-right:3px;font-size:60%;float:right;">举报</a> <span style="font-size:80%;float:right;">2019/08/09 22:00</span> </div><br>
	    </div>
	    <img src='../avatar/Anonymous_0' style='width:50px;border-radius:3px;' ><span style='color:#444444;'>大FA明家</span><p>再说说电影宇宙里的“成仙”代表什么？是法力高低吗？不见得，哪吒并未成仙，就能与申公豹，太乙真人打个平手敖丙也不是仙，但法力未见得比太乙和申公豹低也许你会说哪吒敖丙是灵珠魔丸转世，天生法力高但再看那个“夜叉”，它也不是仙，但是吐泡泡石化的神通，可以石化住哪吒与敖丙那么成仙的申公豹和太乙真人，与哪吒等未成仙的人区别在哪电影中太乙真人说，“没事没事，我是神仙，不会死的”而敖丙，明显会被杀死，哪吒最后刺敖丙一火尖枪，敖丙问“你为什么不刺”，说明未成仙的人会死，而成仙无论怎样都不会死最后的天雷，哪吒与敖丙有万龙甲等宝贝护体，仍然被打的肉身崩解太乙真人，肉身抗天雷，也只是被削去顶上三花所以可以推测出，“成仙”的区别就在于，是否在天地间永存天雷代表天罚，所以天罚才可以削去太乙真人的顶上三花也许道行练就的“顶上三花”，就是成仙的标志，可以金身不灭再谈谈元始天尊的阴谋为什么元始天尊要多此一举，练出灵珠魔丸，还给魔丸下了个三年期引爆的天雷咒？电影中元始天尊露面很少，只说了一句“灵珠可托生为陈塘关总兵李靖的三儿子”为什么偏偏是李靖？陈塘关总兵李靖是什么人？那是抗击妖族前线关隘的一号人物，在人间威望鼎盛，敖丙一个出生两年的深海龙，都知道，“陈塘关李府，好找”而元始天尊的目的，就是让自己的灵珠，托生为李靖的三儿子，给陈塘关总兵李靖，打上元始天尊一派的烙印。其次，让灵珠借着陈塘关总兵的资源，斩妖除魔，建功立业，在封神中有所作为，为<video src="../video/01" controls width="100%"></video> 封神大战，埋下自己最重要的一颗棋子魔丸，就是元始天尊留给灵珠的大功劳没有功劳，也要创造功劳，太乙真人嘴不严，多次说到，“魔丸一定会为祸人间”那个天雷咒，是元始天尊上的一道保险，即使灵珠不敌魔丸，也可以保证魔丸不会势大难除如果元始天尊的计划通，那么元始天尊之名，仙界人间，将无人不晓，上有十二金仙，下有申公豹，哪吒等强力仙人，人间有李靖、殷夫人等虔诚信徒元始天尊的势力，将会成为天地间最强的势力天上一天，地下一年，元始天尊只需等待三天，他就会得到一枚封神中的强力棋子
		。</p><div style="white-space:nowrap;"><a id='f1' href="javascript:" onclick="like('f1');" style="font-size:200%;color:#d9edff;" title="我觉得OK">▲</a><a style="font-size:200%;color:#d9edff;" href='javascript:' title='我觉得不行'>▼</a><a href="javascript:" style='font-size:160%;' title="取消赞"><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">回复</a><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">分享</a><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">收藏</a> <a href=""> <img id="img"  src='../avatar/ydssbbnc_9' style='width:50px;border-radius:3px;'  alt="default" /></a><a href='' style="margin-right:3px;font-size:60%;float:right;">举报</a> <span style="font-size:80%;float:right;">2019/08/09 22:00</span> </div><br>
		<img src='../avatar/Anonymous_0' style='width:50px;border-radius:3px;' ><span style='color:#444444;'>大FA明家</span><p>再说说电影宇宙里的“成仙”代表什么？是法力高低吗？不见得，哪吒并未成仙，就能与申公豹，太乙真人打个平手敖丙也不是仙，但法力未见得比太乙和申公豹低也许你会说哪吒敖丙是灵珠魔丸转世，天生法力高但再看那个“夜叉”，它也不是仙，但是吐泡泡石化的神通，可以石化住哪吒与敖丙那么成仙的申公豹和太乙真人，与哪吒等未成仙的人区别在哪电影中太乙真人说，“没事没事，我是神仙，不会死的”而敖丙，明显会被杀死，哪吒最后刺敖丙一火尖枪，敖丙问“你为什么不刺”，说明未成仙的人会死，而成仙无论怎样都不会死最后的天雷，哪吒与敖丙有万龙甲等宝贝护体，仍然被打的肉身崩解太乙真人，肉身抗天雷，也只是被削去顶上三花所以可以推测出，“成仙”的区别就在于，是否在天地间永存天雷代表天罚，所以天罚才可以削去太乙真人的顶上三花也许道行练就的“顶上三花”，就是成仙的标志，可以金身不灭再谈谈元始天尊的阴谋为什么元始天尊要多此一举，练出灵珠魔丸，还给魔丸下了个三年期引爆的天雷咒？电影中元始天尊露面很少，只说了一句“灵珠可托生为陈塘关总兵李靖的三儿子”为什么偏偏是李靖？陈塘关总兵李靖是什么人？那是抗击妖族前线关隘的一号人物，在人间威望鼎盛，敖丙一个出生两年的深海龙，都知道，“陈塘关李府，好找”而元始天尊的目的，就是让自己的灵珠，托生为李靖的三儿子，给陈塘关总兵李靖，打上元始天尊一派的烙印。其次，让灵珠借着陈塘关总兵的资源，斩妖除魔，建功立业，在封神中有所作为，为<video src="../video/01" controls width="100%"></video> 封神大战，埋下自己最重要的一颗棋子魔丸，就是元始天尊留给灵珠的大功劳没有功劳，也要创造功劳，太乙真人嘴不严，多次说到，“魔丸一定会为祸人间”那个天雷咒，是元始天尊上的一道保险，即使灵珠不敌魔丸，也可以保证魔丸不会势大难除如果元始天尊的计划通，那么元始天尊之名，仙界人间，将无人不晓，上有十二金仙，下有申公豹，哪吒等强力仙人，人间有李靖、殷夫人等虔诚信徒元始天尊的势力，将会成为天地间最强的势力天上一天，地下一年，元始天尊只需等待三天，他就会得到一枚封神中的强力棋子
		    。</p><div style="white-space:nowrap;"><a id='f1' href="javascript:" onclick="like('f1');" style="font-size:200%;color:#d9edff;" title="我觉得OK">▲</a><a style="font-size:200%;color:#d9edff;" href='javascript:' title='我觉得不行'>▼</a><a href="javascript:" style='font-size:160%;' title="取消赞"><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">回复</a><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">分享</a><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">收藏</a> <a href=""> <img id="img"  src='../avatar/ydssbbnc_9' style='width:50px;border-radius:3px;'  alt="default" /></a><a href='' style="margin-right:3px;font-size:60%;float:right;">举报</a> <span style="font-size:80%;float:right;">2019/08/09 22:00</span> </div><br>
		    <img src='../avatar/Anonymous_0' style='width:50px;border-radius:3px;' ><span style='color:#444444;'>大FA明家</span><p>再说说电影宇宙里的“成仙”代表什么？是法力高低吗？不见得，哪吒并未成仙，就能与申公豹，太乙真人打个平手敖丙也不是仙，但法力未见得比太乙和申公豹低也许你会说哪吒敖丙是灵珠魔丸转世，天生法力高但再看那个“夜叉”，它也不是仙，但是吐泡泡石化的神通，可以石化住哪吒与敖丙那么成仙的申公豹和太乙真人，与哪吒等未成仙的人区别在哪电影中太乙真人说，“没事没事，我是神仙，不会死的”而敖丙，明显会被杀死，哪吒最后刺敖丙一火尖枪，敖丙问“你为什么不刺”，说明未成仙的人会死，而成仙无论怎样都不会死最后的天雷，哪吒与敖丙有万龙甲等宝贝护体，仍然被打的肉身崩解太乙真人，肉身抗天雷，也只是被削去顶上三花所以可以推测出，“成仙”的区别就在于，是否在天地间永存天雷代表天罚，所以天罚才可以削去太乙真人的顶上三花也许道行练就的“顶上三花”，就是成仙的标志，可以金身不灭再谈谈元始天尊的阴谋为什么元始天尊要多此一举，练出灵珠魔丸，还给魔丸下了个三年期引爆的天雷咒？电影中元始天尊露面很少，只说了一句“灵珠可托生为陈塘关总兵李靖的三儿子”为什么偏偏是李靖？陈塘关总兵李靖是什么人？那是抗击妖族前线关隘的一号人物，在人间威望鼎盛，敖丙一个出生两年的深海龙，都知道，“陈塘关李府，好找”而元始天尊的目的，就是让自己的灵珠，托生为李靖的三儿子，给陈塘关总兵李靖，打上元始天尊一派的烙印。其次，让灵珠借着陈塘关总兵的资源，斩妖除魔，建功立业，在封神中有所作为，为<video src="../video/01" controls width="100%"></video> 封神大战，埋下自己最重要的一颗棋子魔丸，就是元始天尊留给灵珠的大功劳没有功劳，也要创造功劳，太乙真人嘴不严，多次说到，“魔丸一定会为祸人间”那个天雷咒，是元始天尊上的一道保险，即使灵珠不敌魔丸，也可以保证魔丸不会势大难除如果元始天尊的计划通，那么元始天尊之名，仙界人间，将无人不晓，上有十二金仙，下有申公豹，哪吒等强力仙人，人间有李靖、殷夫人等虔诚信徒元始天尊的势力，将会成为天地间最强的势力天上一天，地下一年，元始天尊只需等待三天，他就会得到一枚封神中的强力棋子
			。</p><div style="white-space:nowrap;"><a id='f1' href="javascript:" onclick="like('f1');" style="font-size:200%;color:#d9edff;" title="我觉得OK">▲</a><a style="font-size:200%;color:#d9edff;" href='javascript:' title='我觉得不行'>▼</a><a href="javascript:" style='font-size:160%;' title="取消赞"><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">回复</a><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">分享</a><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">收藏</a> <a href=""> <img id="img"  src='../avatar/ydssbbnc_9' style='width:50px;border-radius:3px;'  alt="default" /></a><a href='' style="margin-right:3px;font-size:60%;float:right;">举报</a> <span style="font-size:80%;float:right;">2019/08/09 22:00</span> </div><br>
			<img src='../avatar/Anonymous_0' style='width:50px;border-radius:3px;' ><span style='color:#444444;'>大FA明家</span><p>再说说电影宇宙里的“成仙”代表什么？是法力高低吗？不见得，哪吒并未成仙，就能与申公豹，太乙真人打个平手敖丙也不是仙，但法力未见得比太乙和申公豹低也许你会说哪吒敖丙是灵珠魔丸转世，天生法力高但再看那个“夜叉”，它也不是仙，但是吐泡泡石化的神通，可以石化住哪吒与敖丙那么成仙的申公豹和太乙真人，与哪吒等未成仙的人区别在哪电影中太乙真人说，“没事没事，我是神仙，不会死的”而敖丙，明显会被杀死，哪吒最后刺敖丙一火尖枪，敖丙问“你为什么不刺”，说明未成仙的人会死，而成仙无论怎样都不会死最后的天雷，哪吒与敖丙有万龙甲等宝贝护体，仍然被打的肉身崩解太乙真人，肉身抗天雷，也只是被削去顶上三花所以可以推测出，“成仙”的区别就在于，是否在天地间永存天雷代表天罚，所以天罚才可以削去太乙真人的顶上三花也许道行练就的“顶上三花”，就是成仙的标志，可以金身不灭再谈谈元始天尊的阴谋为什么元始天尊要多此一举，练出灵珠魔丸，还给魔丸下了个三年期引爆的天雷咒？电影中元始天尊露面很少，只说了一句“灵珠可托生为陈塘关总兵李靖的三儿子”为什么偏偏是李靖？陈塘关总兵李靖是什么人？那是抗击妖族前线关隘的一号人物，在人间威望鼎盛，敖丙一个出生两年的深海龙，都知道，“陈塘关李府，好找”而元始天尊的目的，就是让自己的灵珠，托生为李靖的三儿子，给陈塘关总兵李靖，打上元始天尊一派的烙印。其次，让灵珠借着陈塘关总兵的资源，斩妖除魔，建功立业，在封神中有所作为，为<video src="../video/01" controls width="100%"></video> 封神大战，埋下自己最重要的一颗棋子魔丸，就是元始天尊留给灵珠的大功劳没有功劳，也要创造功劳，太乙真人嘴不严，多次说到，“魔丸一定会为祸人间”那个天雷咒，是元始天尊上的一道保险，即使灵珠不敌魔丸，也可以保证魔丸不会势大难除如果元始天尊的计划通，那么元始天尊之名，仙界人间，将无人不晓，上有十二金仙，下有申公豹，哪吒等强力仙人，人间有李靖、殷夫人等虔诚信徒元始天尊的势力，将会成为天地间最强的势力天上一天，地下一年，元始天尊只需等待三天，他就会得到一枚封神中的强力棋子
			    。</p><div style="white-space:nowrap;"><a id='f1' href="javascript:" onclick="like('f1');" style="font-size:200%;color:#d9edff;" title="我觉得OK">▲</a><a style="font-size:200%;color:#d9edff;" href='javascript:' title='我觉得不行'>▼</a><a href="javascript:" style='font-size:160%;' title="取消赞"><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">回复</a><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">分享</a><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">收藏</a> <a href=""> <img id="img"  src='../avatar/ydssbbnc_9' style='width:50px;border-radius:3px;'  alt="default" /></a><a href='' style="margin-right:3px;font-size:60%;float:right;">举报</a> <span style="font-size:80%;float:right;">2019/08/09 22:00</span> </div><br>
			    <img src='../avatar/Anonymous_0' style='width:50px;border-radius:3px;' ><span style='color:#444444;'>大FA明家</span><p>再说说电影宇宙里的“成仙”代表什么？是法力高低吗？不见得，哪吒并未成仙，就能与申公豹，太乙真人打个平手敖丙也不是仙，但法力未见得比太乙和申公豹低也许你会说哪吒敖丙是灵珠魔丸转世，天生法力高但再看那个“夜叉”，它也不是仙，但是吐泡泡石化的神通，可以石化住哪吒与敖丙那么成仙的申公豹和太乙真人，与哪吒等未成仙的人区别在哪电影中太乙真人说，“没事没事，我是神仙，不会死的”而敖丙，明显会被杀死，哪吒最后刺敖丙一火尖枪，敖丙问“你为什么不刺”，说明未成仙的人会死，而成仙无论怎样都不会死最后的天雷，哪吒与敖丙有万龙甲等宝贝护体，仍然被打的肉身崩解太乙真人，肉身抗天雷，也只是被削去顶上三花所以可以推测出，“成仙”的区别就在于，是否在天地间永存天雷代表天罚，所以天罚才可以削去太乙真人的顶上三花也许道行练就的“顶上三花”，就是成仙的标志，可以金身不灭再谈谈元始天尊的阴谋为什么元始天尊要多此一举，练出灵珠魔丸，还给魔丸下了个三年期引爆的天雷咒？电影中元始天尊露面很少，只说了一句“灵珠可托生为陈塘关总兵李靖的三儿子”为什么偏偏是李靖？陈塘关总兵李靖是什么人？那是抗击妖族前线关隘的一号人物，在人间威望鼎盛，敖丙一个出生两年的深海龙，都知道，“陈塘关李府，好找”而元始天尊的目的，就是让自己的灵珠，托生为李靖的三儿子，给陈塘关总兵李靖，打上元始天尊一派的烙印。其次，让灵珠借着陈塘关总兵的资源，斩妖除魔，建功立业，在封神中有所作为，为<video src="../video/01" controls width="100%"></video> 封神大战，埋下自己最重要的一颗棋子魔丸，就是元始天尊留给灵珠的大功劳没有功劳，也要创造功劳，太乙真人嘴不严，多次说到，“魔丸一定会为祸人间”那个天雷咒，是元始天尊上的一道保险，即使灵珠不敌魔丸，也可以保证魔丸不会势大难除如果元始天尊的计划通，那么元始天尊之名，仙界人间，将无人不晓，上有十二金仙，下有申公豹，哪吒等强力仙人，人间有李靖、殷夫人等虔诚信徒元始天尊的势力，将会成为天地间最强的势力天上一天，地下一年，元始天尊只需等待三天，他就会得到一枚封神中的强力棋子
				。</p><div style="white-space:nowrap;"><a id='f1' href="javascript:" onclick="like('f1');" style="font-size:200%;color:#d9edff;" title="我觉得OK">▲</a><a style="font-size:200%;color:#d9edff;" href='javascript:' title='我觉得不行'>▼</a><a href="javascript:" style='font-size:160%;' title="取消赞"><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">回复</a><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">分享</a><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">收藏</a> <a href=""> <img id="img"  src='../avatar/ydssbbnc_9' style='width:50px;border-radius:3px;'  alt="default" /></a><a href='' style="margin-right:3px;font-size:60%;float:right;">举报</a> <span style="font-size:80%;float:right;">2019/08/09 22:00</span> </div><br>
				<img src='../avatar/Anonymous_0' style='width:50px;border-radius:3px;' ><span style='color:#444444;'>大FA明家</span><p>再说说电影宇宙里的“成仙”代表什么？是法力高低吗？不见得，哪吒并未成仙，就能与申公豹，太乙真人打个平手敖丙也不是仙，但法力未见得比太乙和申公豹低也许你会说哪吒敖丙是灵珠魔丸转世，天生法力高但再看那个“夜叉”，它也不是仙，但是吐泡泡石化的神通，可以石化住哪吒与敖丙那么成仙的申公豹和太乙真人，与哪吒等未成仙的人区别在哪电影中太乙真人说，“没事没事，我是神仙，不会死的”而敖丙，明显会被杀死，哪吒最后刺敖丙一火尖枪，敖丙问“你为什么不刺”，说明未成仙的人会死，而成仙无论怎样都不会死最后的天雷，哪吒与敖丙有万龙甲等宝贝护体，仍然被打的肉身崩解太乙真人，肉身抗天雷，也只是被削去顶上三花所以可以推测出，“成仙”的区别就在于，是否在天地间永存天雷代表天罚，所以天罚才可以削去太乙真人的顶上三花也许道行练就的“顶上三花”，就是成仙的标志，可以金身不灭再谈谈元始天尊的阴谋为什么元始天尊要多此一举，练出灵珠魔丸，还给魔丸下了个三年期引爆的天雷咒？电影中元始天尊露面很少，只说了一句“灵珠可托生为陈塘关总兵李靖的三儿子”为什么偏偏是李靖？陈塘关总兵李靖是什么人？那是抗击妖族前线关隘的一号人物，在人间威望鼎盛，敖丙一个出生两年的深海龙，都知道，“陈塘关李府，好找”而元始天尊的目的，就是让自己的灵珠，托生为李靖的三儿子，给陈塘关总兵李靖，打上元始天尊一派的烙印。其次，让灵珠借着陈塘关总兵的资源，斩妖除魔，建功立业，在封神中有所作为，为<video src="../video/01" controls width="100%"></video> 封神大战，埋下自己最重要的一颗棋子魔丸，就是元始天尊留给灵珠的大功劳没有功劳，也要创造功劳，太乙真人嘴不严，多次说到，“魔丸一定会为祸人间”那个天雷咒，是元始天尊上的一道保险，即使灵珠不敌魔丸，也可以保证魔丸不会势大难除如果元始天尊的计划通，那么元始天尊之名，仙界人间，将无人不晓，上有十二金仙，下有申公豹，哪吒等强力仙人，人间有李靖、殷夫人等虔诚信徒元始天尊的势力，将会成为天地间最强的势力天上一天，地下一年，元始天尊只需等待三天，他就会得到一枚封神中的强力棋子
				    。</p><div style="white-space:nowrap;"><a id='f1' href="javascript:" onclick="like('f1');" style="font-size:200%;color:#d9edff;" title="我觉得OK">▲</a><a style="font-size:200%;color:#d9edff;" href='javascript:' title='我觉得不行'>▼</a><a href="javascript:" style='font-size:160%;' title="取消赞"><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">回复</a><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">分享</a><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">收藏</a> <a href=""> <img id="img"  src='../avatar/ydssbbnc_9' style='width:50px;border-radius:3px;'  alt="default" /></a><a href='' style="margin-right:3px;font-size:60%;float:right;">举报</a> <span style="font-size:80%;float:right;">2019/08/09 22:00</span> </div><br>
				    <img src='../avatar/Anonymous_0' style='width:50px;border-radius:3px;' ><span style='color:#444444;'>大FA明家</span><p>再说说电影宇宙里的“成仙”代表什么？是法力高低吗？不见得，哪吒并未成仙，就能与申公豹，太乙真人打个平手敖丙也不是仙，但法力未见得比太乙和申公豹低也许你会说哪吒敖丙是灵珠魔丸转世，天生法力高但再看那个“夜叉”，它也不是仙，但是吐泡泡石化的神通，可以石化住哪吒与敖丙那么成仙的申公豹和太乙真人，与哪吒等未成仙的人区别在哪电影中太乙真人说，“没事没事，我是神仙，不会死的”而敖丙，明显会被杀死，哪吒最后刺敖丙一火尖枪，敖丙问“你为什么不刺”，说明未成仙的人会死，而成仙无论怎样都不会死最后的天雷，哪吒与敖丙有万龙甲等宝贝护体，仍然被打的肉身崩解太乙真人，肉身抗天雷，也只是被削去顶上三花所以可以推测出，“成仙”的区别就在于，是否在天地间永存天雷代表天罚，所以天罚才可以削去太乙真人的顶上三花也许道行练就的“顶上三花”，就是成仙的标志，可以金身不灭再谈谈元始天尊的阴谋为什么元始天尊要多此一举，练出灵珠魔丸，还给魔丸下了个三年期引爆的天雷咒？电影中元始天尊露面很少，只说了一句“灵珠可托生为陈塘关总兵李靖的三儿子”为什么偏偏是李靖？陈塘关总兵李靖是什么人？那是抗击妖族前线关隘的一号人物，在人间威望鼎盛，敖丙一个出生两年的深海龙，都知道，“陈塘关李府，好找”而元始天尊的目的，就是让自己的灵珠，托生为李靖的三儿子，给陈塘关总兵李靖，打上元始天尊一派的烙印。其次，让灵珠借着陈塘关总兵的资源，斩妖除魔，建功立业，在封神中有所作为，为<video src="../video/01" controls width="100%"></video> 封神大战，埋下自己最重要的一颗棋子魔丸，就是元始天尊留给灵珠的大功劳没有功劳，也要创造功劳，太乙真人嘴不严，多次说到，“魔丸一定会为祸人间”那个天雷咒，是元始天尊上的一道保险，即使灵珠不敌魔丸，也可以保证魔丸不会势大难除如果元始天尊的计划通，那么元始天尊之名，仙界人间，将无人不晓，上有十二金仙，下有申公豹，哪吒等强力仙人，人间有李靖、殷夫人等虔诚信徒元始天尊的势力，将会成为天地间最强的势力天上一天，地下一年，元始天尊只需等待三天，他就会得到一枚封神中的强力棋子
					。</p><div style="white-space:nowrap;"><a id='f1' href="javascript:" onclick="like('f1');" style="font-size:200%;color:#d9edff;" title="我觉得OK">▲</a><a style="font-size:200%;color:#d9edff;" href='javascript:' title='我觉得不行'>▼</a><a href="javascript:" style='font-size:160%;' title="取消赞"><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">回复</a><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">分享</a><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">收藏</a> <a href=""> <img id="img"  src='../avatar/ydssbbnc_9' style='width:50px;border-radius:3px;'  alt="default" /></a><a href='' style="margin-right:3px;font-size:60%;float:right;">举报</a> <span style="font-size:80%;float:right;">2019/08/09 22:00</span> </div><br>
					<img src='../avatar/Anonymous_0' style='width:50px;border-radius:3px;' ><span style='color:#444444;'>大FA明家</span><p>再说说电影宇宙里的“成仙”代表什么？是法力高低吗？不见得，哪吒并未成仙，就能与申公豹，太乙真人打个平手敖丙也不是仙，但法力未见得比太乙和申公豹低也许你会说哪吒敖丙是灵珠魔丸转世，天生法力高但再看那个“夜叉”，它也不是仙，但是吐泡泡石化的神通，可以石化住哪吒与敖丙那么成仙的申公豹和太乙真人，与哪吒等未成仙的人区别在哪电影中太乙真人说，“没事没事，我是神仙，不会死的”而敖丙，明显会被杀死，哪吒最后刺敖丙一火尖枪，敖丙问“你为什么不刺”，说明未成仙的人会死，而成仙无论怎样都不会死最后的天雷，哪吒与敖丙有万龙甲等宝贝护体，仍然被打的肉身崩解太乙真人，肉身抗天雷，也只是被削去顶上三花所以可以推测出，“成仙”的区别就在于，是否在天地间永存天雷代表天罚，所以天罚才可以削去太乙真人的顶上三花也许道行练就的“顶上三花”，就是成仙的标志，可以金身不灭再谈谈元始天尊的阴谋为什么元始天尊要多此一举，练出灵珠魔丸，还给魔丸下了个三年期引爆的天雷咒？电影中元始天尊露面很少，只说了一句“灵珠可托生为陈塘关总兵李靖的三儿子”为什么偏偏是李靖？陈塘关总兵李靖是什么人？那是抗击妖族前线关隘的一号人物，在人间威望鼎盛，敖丙一个出生两年的深海龙，都知道，“陈塘关李府，好找”而元始天尊的目的，就是让自己的灵珠，托生为李靖的三儿子，给陈塘关总兵李靖，打上元始天尊一派的烙印。其次，让灵珠借着陈塘关总兵的资源，斩妖除魔，建功立业，在封神中有所作为，为<video src="../video/01" controls width="100%"></video> 封神大战，埋下自己最重要的一颗棋子魔丸，就是元始天尊留给灵珠的大功劳没有功劳，也要创造功劳，太乙真人嘴不严，多次说到，“魔丸一定会为祸人间”那个天雷咒，是元始天尊上的一道保险，即使灵珠不敌魔丸，也可以保证魔丸不会势大难除如果元始天尊的计划通，那么元始天尊之名，仙界人间，将无人不晓，上有十二金仙，下有申公豹，哪吒等强力仙人，人间有李靖、殷夫人等虔诚信徒元始天尊的势力，将会成为天地间最强的势力天上一天，地下一年，元始天尊只需等待三天，他就会得到一枚封神中的强力棋子
					    。</p><div style="white-space:nowrap;"><a id='f1' href="javascript:" onclick="like('f1');" style="font-size:200%;color:#d9edff;" title="我觉得OK">▲</a><a style="font-size:200%;color:#d9edff;" href='javascript:' title='我觉得不行'>▼</a><a href="javascript:" style='font-size:160%;' title="取消赞"><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">回复</a><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">分享</a><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">收藏</a> <a href=""> <img id="img"  src='../avatar/ydssbbnc_9' style='width:50px;border-radius:3px;'  alt="default" /></a><a href='' style="margin-right:3px;font-size:60%;float:right;">举报</a> <span style="font-size:80%;float:right;">2019/08/09 22:00</span> </div><br>
					    <img src='../avatar/Anonymous_0' style='width:50px;border-radius:3px;' ><span style='color:#444444;'>大FA明家</span><p>再说说电影宇宙里的“成仙”代表什么？是法力高低吗？不见得，哪吒并未成仙，就能与申公豹，太乙真人打个平手敖丙也不是仙，但法力未见得比太乙和申公豹低也许你会说哪吒敖丙是灵珠魔丸转世，天生法力高但再看那个“夜叉”，它也不是仙，但是吐泡泡石化的神通，可以石化住哪吒与敖丙那么成仙的申公豹和太乙真人，与哪吒等未成仙的人区别在哪电影中太乙真人说，“没事没事，我是神仙，不会死的”而敖丙，明显会被杀死，哪吒最后刺敖丙一火尖枪，敖丙问“你为什么不刺”，说明未成仙的人会死，而成仙无论怎样都不会死最后的天雷，哪吒与敖丙有万龙甲等宝贝护体，仍然被打的肉身崩解太乙真人，肉身抗天雷，也只是被削去顶上三花所以可以推测出，“成仙”的区别就在于，是否在天地间永存天雷代表天罚，所以天罚才可以削去太乙真人的顶上三花也许道行练就的“顶上三花”，就是成仙的标志，可以金身不灭再谈谈元始天尊的阴谋为什么元始天尊要多此一举，练出灵珠魔丸，还给魔丸下了个三年期引爆的天雷咒？电影中元始天尊露面很少，只说了一句“灵珠可托生为陈塘关总兵李靖的三儿子”为什么偏偏是李靖？陈塘关总兵李靖是什么人？那是抗击妖族前线关隘的一号人物，在人间威望鼎盛，敖丙一个出生两年的深海龙，都知道，“陈塘关李府，好找”而元始天尊的目的，就是让自己的灵珠，托生为李靖的三儿子，给陈塘关总兵李靖，打上元始天尊一派的烙印。其次，让灵珠借着陈塘关总兵的资源，斩妖除魔，建功立业，在封神中有所作为，为<video src="../video/01" controls width="100%"></video> 封神大战，埋下自己最重要的一颗棋子魔丸，就是元始天尊留给灵珠的大功劳没有功劳，也要创造功劳，太乙真人嘴不严，多次说到，“魔丸一定会为祸人间”那个天雷咒，是元始天尊上的一道保险，即使灵珠不敌魔丸，也可以保证魔丸不会势大难除如果元始天尊的计划通，那么元始天尊之名，仙界人间，将无人不晓，上有十二金仙，下有申公豹，哪吒等强力仙人，人间有李靖、殷夫人等虔诚信徒元始天尊的势力，将会成为天地间最强的势力天上一天，地下一年，元始天尊只需等待三天，他就会得到一枚封神中的强力棋子
						。</p><div style="white-space:nowrap;"><a id='f1' href="javascript:" onclick="like('f1');" style="font-size:200%;color:#d9edff;" title="我觉得OK">▲</a><a style="font-size:200%;color:#d9edff;" href='javascript:' title='我觉得不行'>▼</a><a href="javascript:" style='font-size:160%;' title="取消赞"><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">回复</a><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">分享</a><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">收藏</a> <a href=""> <img id="img"  src='../avatar/ydssbbnc_9' style='width:50px;border-radius:3px;'  alt="default" /></a><a href='' style="margin-right:3px;font-size:60%;float:right;">举报</a> <span style="font-size:80%;float:right;">2019/08/09 22:00</span> </div><br>
						<img src='../avatar/Anonymous_0' style='width:50px;border-radius:3px;' ><span style='color:#444444;'>大FA明家</span><p>再说说电影宇宙里的“成仙”代表什么？是法力高低吗？不见得，哪吒并未成仙，就能与申公豹，太乙真人打个平手敖丙也不是仙，但法力未见得比太乙和申公豹低也许你会说哪吒敖丙是灵珠魔丸转世，天生法力高但再看那个“夜叉”，它也不是仙，但是吐泡泡石化的神通，可以石化住哪吒与敖丙那么成仙的申公豹和太乙真人，与哪吒等未成仙的人区别在哪电影中太乙真人说，“没事没事，我是神仙，不会死的”而敖丙，明显会被杀死，哪吒最后刺敖丙一火尖枪，敖丙问“你为什么不刺”，说明未成仙的人会死，而成仙无论怎样都不会死最后的天雷，哪吒与敖丙有万龙甲等宝贝护体，仍然被打的肉身崩解太乙真人，肉身抗天雷，也只是被削去顶上三花所以可以推测出，“成仙”的区别就在于，是否在天地间永存天雷代表天罚，所以天罚才可以削去太乙真人的顶上三花也许道行练就的“顶上三花”，就是成仙的标志，可以金身不灭再谈谈元始天尊的阴谋为什么元始天尊要多此一举，练出灵珠魔丸，还给魔丸下了个三年期引爆的天雷咒？电影中元始天尊露面很少，只说了一句“灵珠可托生为陈塘关总兵李靖的三儿子”为什么偏偏是李靖？陈塘关总兵李靖是什么人？那是抗击妖族前线关隘的一号人物，在人间威望鼎盛，敖丙一个出生两年的深海龙，都知道，“陈塘关李府，好找”而元始天尊的目的，就是让自己的灵珠，托生为李靖的三儿子，给陈塘关总兵李靖，打上元始天尊一派的烙印。其次，让灵珠借着陈塘关总兵的资源，斩妖除魔，建功立业，在封神中有所作为，为<video src="../video/01" controls width="100%"></video> 封神大战，埋下自己最重要的一颗棋子魔丸，就是元始天尊留给灵珠的大功劳没有功劳，也要创造功劳，太乙真人嘴不严，多次说到，“魔丸一定会为祸人间”那个天雷咒，是元始天尊上的一道保险，即使灵珠不敌魔丸，也可以保证魔丸不会势大难除如果元始天尊的计划通，那么元始天尊之名，仙界人间，将无人不晓，上有十二金仙，下有申公豹，哪吒等强力仙人，人间有李靖、殷夫人等虔诚信徒元始天尊的势力，将会成为天地间最强的势力天上一天，地下一年，元始天尊只需等待三天，他就会得到一枚封神中的强力棋子
						    。</p><div style="white-space:nowrap;"><a id='f1' href="javascript:" onclick="like('f1');" style="font-size:200%;color:#d9edff;" title="我觉得OK">▲</a><a style="font-size:200%;color:#d9edff;" href='javascript:' title='我觉得不行'>▼</a><a href="javascript:" style='font-size:160%;' title="取消赞"><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">评论</a><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">分享</a><a href='' style="margin-left:8px;color:#76839b;font-size:92%;">收藏</a> <a href=""> <img id="img"  src='../avatar/ydssbbnc_9' style='width:50px;border-radius:3px;'  alt="default" /></a><a href='' style="margin-right:3px;font-size:60%;float:right;">举报</a> <span style="font-size:80%;float:right;">2019/08/09 22:00</span> </div><br>
	</div>
    </body>
</html>

