package com.ydssbbnc.prj.wobbs;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/*Function:DestStr(sourceStr) reciept strnig need to encrypt and returns encrypted string
 *@author:ydssbbnc
 *email:ydssbbnc@gmail.com/ydssbbnc@163.com
 *last update time:Thu Aug  8 11:09:31 2019
 *TAG:FINISHED!
 */

public class EncSha256{
    public final String DestStr(final String sourceStr){
	StringBuffer  strHexString=new StringBuffer();
	if(sourceStr!=null){
	    try{
		/*Sha256 encrypt*/
		MessageDigest md=MessageDigest.getInstance("SHA-256");//Create encrypt object and set "SHA-256" as  encryption style
		md.update(sourceStr.getBytes());
		byte byteBuffer[]=md.digest();

		//foreach byte buffer and start convert
		for(int i=0;i<byteBuffer.length;++i){
		    String hex=Integer.toHexString(0xff&byteBuffer[i]);
		    if(hex.length()==1){
			strHexString.append('0');
		    }
		    strHexString.append(hex);
		}
	    }catch(NoSuchAlgorithmException e){
		e.printStackTrace();
	    }finally{

	    }
	}
	return strHexString.toString();	
    }
    /*Below block used to debug,you can delete it if neccessary
    public static void main(String[] args){
	System.out.println(args[0]+":"+new EncSha256().DestStr(args[0]));
	}
    */
}
