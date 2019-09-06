<%@page import="java.util.Calendar"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@ page pageEncoding="UTF-8"%>

<%
	//String name = request.getParameter("name"); => 이렇게 개발하지 않기
	request.setCharacterEncoding("utf-8");
	String path = request.getRealPath("/upload");
	
	Calendar c = Calendar.getInstance();
	int year = c.get(Calendar.YEAR);
	int month = c.get(Calendar.MONTH)+1;
	/*
	path += "\\"+year+"\\"+month;
	File f = new File(path);
	*/
	File f = new File(path,year+"//"+month);
	
	if(!f.exists()){
		f.mkdirs();
	}
	MultipartRequest multi = null;          //f.getPath() => path Calendar
	try{                                    //path업로드할디렉토리경로, 10*1024*1024파일크기, utf-8인코딩 타입, new defaultFileRenamePolicy()파일이름이 중복 되었을 때 끝에 1,2,3순으로 변경해주는 클래스
		multi = new MultipartRequest(request, f.getPath(), 10*1024*1024, "utf-8", new DefaultFileRenamePolicy());
	}catch(Exception e){
		e.printStackTrace();
	}
	String name = multi.getParameter("name");
	String fileName = multi.getFilesystemName("file");
	String uploadName = multi.getOriginalFileName("file");
	File f1 = new File(f, fileName);
	long fileSize = f1.length()/1024;
%>

name : <%=name%><br>
file system name : <%=fileName%>(<%=fileSize %>kb)<br>
file origin name : <%=uploadName%><br>