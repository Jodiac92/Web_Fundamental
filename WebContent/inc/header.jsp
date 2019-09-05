<%@page import="kr.co.kic.dev1.dto.MemberDto"%>
<%@ page pageEncoding="UTF-8"%>
<%
	MemberDto memberDto = (MemberDto)session.getAttribute("member");
	
%>
<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<!-- Font Awesome CSS html붙이기 -->
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
	<title>Bootstrap Template</title>
	<script src="../js/jquery-3.4.1.js"></script>
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#563d7c;">
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01"
			aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
				<li class="nav-item active">
					<a class="nav-link" href="/"><i class="fa fa-home"></i> Home</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/notice/list.jsp"><i class="fa fa-font"></i> Noitce</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/member/list.jsp"><i class="fa fa-heart"></i> Member</a> <!-- <i class="fa fa-heart"></i>하트아이콘 -->
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/file/index.jsp"><i class="fa fa-heart"></i> File Upload</a> <!-- <i class="fa fa-heart"></i>하트아이콘 -->
				</li>

			</ul>
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="/member/register.jsp"><i class="fa fa-cog"></i> Register</a>
				</li>
				<li class="nav-item">
				<%if(memberDto == null){ %>
					<a class="nav-link" href="/member/login.jsp"><i class="fa fa-heart"></i> Login</a> <!-- <i class="fa fa-heart"></i>하트아이콘 -->
					<%}else{ %>
					<a class="nav-link" href="/member/logout.jsp"><i class="fa fa-heart"></i> Logout(<%=memberDto.getName() %>님 환영합니다.)</a> <!-- <i class="fa fa-heart"></i>하트아이콘 -->
					<%} %>
				</li>
				
			</ul>
		</div>
	</nav>