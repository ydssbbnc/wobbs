var docCookie=document.cookie,pair="USER_ALL_IN_ONE";
function pairCookie(docCookie,pair){
    var j=0,tag=0,afterFind="";
    for(var i=0;i<docCookie.length;++i){
	if(docCookie[i]==pair[j++]);
	else j=0;
	if(j==pair.length){
	    start=i+2;tag=1;break;
	}
    }
    if(tag==0){return "`Anonymous`/prj/wobbs/avatar/default`0`0`0`0`";}
    while(start!=docCookie.length&&docCookie[start]!=";"){
	afterFind+=docCookie[start++];
    }
    return afterFind;
}
function getName(){
    var tmp="",afterFind=pairCookie(docCookie,pair),tag=0;
    for(var i=0;i<afterFind.length&&tag<2;++i){
	if(afterFind[i]=="`")++tag;
	else tmp+=afterFind[i];
    }
    return tmp;
}
function getAvatar(){
    var tmp="",afterFind=pairCookie(docCookie,pair),tag=0;
    for(var i=0;i<afterFind.length&&tag<3;++i){
	if(afterFind[i]=="`")++tag;
	else if(tag>1)tmp+=afterFind[i];
    }
    return tmp;
}
function getLikeNum(){
    var tmp="",afterFind=pairCookie(docCookie,pair),tag=0;
    for(var i=0;i<afterFind.length&&tag<4;++i){
	if(afterFind[i]=="`")++tag;
	else if(tag>2)tmp+=afterFind[i];
    }
    return tmp;
}
function getPostNum(){
    var tmp="",afterFind=pairCookie(docCookie,pair),tag=0;
    for(var i=0;i<afterFind.length&&tag<5;++i){
	if(afterFind[i]=="`")++tag;
	else if(tag>3)tmp+=afterFind[i];
    }
    return tmp;
}
function getVisitNum(){
    var tmp="",afterFind=pairCookie(docCookie,pair),tag=0;
    for(var i=0;i<afterFind.length&&tag<6;++i){
	if(afterFind[i]=="`")++tag;
	else if(tag>4)tmp+=afterFind[i];
    }
    return tmp;
}
function getReplyNum(){
        var tmp="",afterFind=pairCookie(docCookie,pair),tag=0;
    for(var i=0;i<afterFind.length&&tag<7;++i){
	if(afterFind[i]=="`")++tag;
	else if(tag>5)tmp+=afterFind[i];
    }
    return tmp;
}
