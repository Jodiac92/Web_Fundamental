<%@page import="kr.co.kic.dev1.dto.NoticeDto"%>
<%@page import="kr.co.kic.dev1.dao.NoticeDao"%>
<%@ page pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8"); //한글이 깨지는걸 방지한다.
	
	int num = Integer.parseInt(request.getParameter("num"));
	
	NoticeDao dao = NoticeDao.getInstance();
	boolean isSuccess = dao.delete(num);
	if(isSuccess){
%>

	<script>
		alert("성공");
		location.href="list.jsp";
	</script>
	<%}else{ %>
	<script>
		alert("실패");
		histoyry.back(-1);
	</script>
	<%} %>

