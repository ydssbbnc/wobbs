package com.ydssbbnc.prj.wobbs;
/*Function : Provide a basic parse api to text passed by search bar
 *Note : There are several rules you should be careful.Text before first '#' will be parsed to instruction,you may add escape character '#' to input a real '#' (There are some troubles use '\' character as an escaper in apache tomcat and use '`' as an escaper also have troubles on linux terminal ).
*author : ydssbbnc
*Email : ydssbbnc@gmail.com/ydssbbnc@163.com
*TAG : FINISHED!
*/
public class ParseText{
    public static String beforeSharp="",afterSharp="";
    ParseText(String s){//split passed string to two parts
	boolean sharpTag=false;//record whether encountered "#"
	for(int i=0;i<s.length();++i){
	    if(sharpTag) {
		afterSharp+=s.substring(i,s.length());
		break;
	    }
	    if(!s.substring(i,i+1).equals("#")){
		beforeSharp+=s.substring(i,i+1);
		continue;
	    }if(i<(s.length()-1)&&s.substring(i+1,i+2).equals("#")){
		++i;
		beforeSharp+=s.substring(i,i+1);
	    }else
		sharpTag=true;
	}
    }
}
    

