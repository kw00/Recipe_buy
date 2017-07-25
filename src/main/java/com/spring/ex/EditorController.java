package com.spring.ex;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EditorController {
	
	   //�������Ͼ��ε�
	   @RequestMapping("/file_uploader_html5")
	   public void file_uploader_html5(HttpServletRequest request, HttpServletResponse response){ 
	      try { 
	         //�������� 
	         String sFileInfo = ""; 
	         //���ϸ��� �޴´� - �Ϲ� �������ϸ� 
	         String filename = request.getHeader("file-name"); 
	         //���� Ȯ���� 
	         String filename_ext = filename.substring(filename.lastIndexOf(".")+1); 
	         //Ȯ���ڸ��ҹ��ڷ� ���� 
	         filename_ext = filename_ext.toLowerCase(); 
	         //�̹��� ���� �迭���� 
	         String[] allow_file = {"jpg","png","bmp","gif"}; 
	         //�����鼭 Ȯ���ڰ� �̹������� 
	         int cnt = 0; 
	         for(int i=0; i<allow_file.length; i++) {
	            if(filename_ext.equals(allow_file[i])){
	               cnt++; } 
	            } 
	         //�̹����� �ƴ� 
	         if(cnt == 0) {
	            PrintWriter print = response.getWriter(); 
	            print.print("NOTALLOW_"+filename); 
	            print.flush(); 
	            print.close(); 
	         } else {
	            //�̹����̹Ƿ� �ű� ���Ϸ� ���丮 ���� �� ���ε�   
	            //���� �⺻��� 
	            String dftFilePath = request.getSession().getServletContext().getRealPath("/"); 
	            //���� �⺻��� _ �󼼰��
	            String filePath = dftFilePath + "resources" + File.separator + "editor" + File.separator +"multiupload" + File.separator; 
	            File file = new File(filePath); 
	            if(!file.exists()) {
	               file.mkdirs(); 
	            } 
	            String realFileNm = ""; 
	            SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss"); 
	            String today= formatter.format(new java.util.Date()); 
	            realFileNm = today+UUID.randomUUID().toString() + filename.substring(filename.lastIndexOf(".")); 
	            String rlFileNm = filePath + realFileNm; 
	            
	            ///////////////// ������ ���Ͼ��� ///////////////// 
	            InputStream is = request.getInputStream(); 
	            OutputStream os=new FileOutputStream(rlFileNm);
	            int numRead; 
	            byte b[] = new byte[Integer.parseInt(request.getHeader("file-size"))]; 
	            while((numRead = is.read(b,0,b.length)) != -1){
	               os.write(b,0,numRead); 
	            } 
	            if(is != null) {
	               is.close(); 
	            } 
	            os.flush(); 
	            os.close(); 
	            
	            ///////////////// ������ ���Ͼ��� ///////////////// 
	            //���� ���
	            sFileInfo += "&bNewLine=true"; 
	            // img �±��� title �Ӽ��� �������ϸ����� ��������ֱ� ����
	            sFileInfo += "&sFileName="+ filename;
	            sFileInfo += "&sFileURL="+request.getContextPath()+"/resources/editor/multiupload/"+realFileNm; 
	            PrintWriter print = response.getWriter(); 
	            print.print(sFileInfo); 
	            print.flush(); 
	            print.close();
	         }   
	      } catch (Exception e) {
	         e.printStackTrace(); 
	      } 
	   }
	
}
