<%@ page import="java.io.BufferedReader"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.ArrayList, java.io.BufferedReader"%>
<!-- 응답 MIME 타입과 문자인코딩을 지정한다.-->
<%@ page contentType="text/html;charset=utf-8" %>
<!-- 문자인코딩을 지정한다. -->
<%@ page pageEncoding="utf-8" %>
<!-- HttpSession 객체 사용여부 결정한다. -->
<%@ page session = "false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP page directive Demo</title>
</head>
<body>
	<h1>Page Directive2222</h1>
	<%
		HttpSession ses = null;
		ArrayList list = new ArrayList();
		BufferedReader br = null;
		
		request.setAttribute("name","sung");
		String id = request.getParameter("id");
		if(id == null){
			id = "";
		}
	%>
	
	당신의 이름 : ${param.id }, <%=id %>
</body>
</html>