package com.ydssbbnc.prj.wobbs;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
 import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
/*Function : Provide an api for uploading files from client
 *Note : You may want to move uploaded file to another directory
 *@author : ydssbbnc
 *email : ydssbbnc@gmail.com/ydssbbnc@163.com
 *TAG : FINISHED!
 */

public class UploadFileServlet extends HttpServlet{
    
    //Set upload file's directory(relative directory)
    private static final String UPLOAD_DIRECTORY="upload";
    //Config file's size
    private static final int MEMORY_THRESHOLD=1024*1024*50;//50MB
    private static final int MAX_FILE_SIZE=1024*1024*1024*5;//5GB
    private static final int MAX_REQUEST_SIZE=1024*1024*1024*5;//5GB
    /**
     *Uploading and saving file
     */
    protected void doGet(HttpServletRequest req,
			  HttpServletResponse rsp)throws ServletException,IOException{
	req.setCharacterEncoding("utf-8");
	rsp.setCharacterEncoding("utf-8");
	//config upload paramgrams
	DiskFileItemFactory factory=new DiskFileItemFactory();
	//Set threshold,creating temporary file and saving it to tmp direcotry if file is larger than threshold
	factory.setSizeThreshold(MEMORY_THRESHOLD);
	//Set temporary direcotry
	factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
	ServletFileUpload upload=new ServletFileUpload(factory);
	//Set max size of file
	upload.setFileSizeMax(MAX_FILE_SIZE);
	//Set max request value(include file and form)
	upload.setSizeMax(MAX_REQUEST_SIZE);
	//Handle encoding style to prevent garbled
	upload.setHeaderEncoding("utf-8");
	//Construct tmpdir to save uploaded file(relatively)
	String uploadPath=req.getServletContext().getRealPath("./")+File.separator+UPLOAD_DIRECTORY;
	//Create new directory if not exists
	File uploadDir=new File(uploadPath);
	if(!uploadDir.exists())
	    uploadDir.mkdir();
	try{
	    //Parse request's content and extract file dada
	    @SuppressWarnings("unchecked")
		List<FileItem> formItems=upload.parseRequest(req);
	    if(formItems!=null&&formItems.size()>0){
		//foreach form items
		for(FileItem item:formItems){
		    //Handle item not exists in form field
		    if(!item.isFormField()){
		        String fileName=new File(item.getName()).getName();
			String filePath=uploadPath+File.separator+fileName;
			File storeFile=new File(filePath);
			//Save it into disk
			item.write(storeFile);
		    }
		}
	    }
	}catch(Exception e){
	}
	//After work,you may want to jump to other page,below block reserved to debug
	//	rsp.sendRedirect("/prj/wobbs/page/personalCenter.jsp");	  
    }
    protected void doPost(HttpServletRequest req,
			  HttpServletResponse rsp)throws ServletException,IOException{
	doGet(req,rsp);
    }
}
