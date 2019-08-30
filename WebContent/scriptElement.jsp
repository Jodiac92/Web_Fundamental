<%@page import="java.util.Calendar"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Scripting Element</h1>
	<%!
		//declaration
		private int age;
		public void m(){
			
		}
	%>
	<select>
		<%
		Calendar c = Calendar.getInstance();
		int year = c.get(Calendar.YEAR);
		for(int i=1950;i<=year;i++){
		%>
		<option value="<%=i %>"<%if((year-20)==i){ %>selected="selected"<%} %> > <%=i %> </option>
		<% 
		}
		%>

		
	</select>
</body>
</html>