<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String myctx = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
.carousel-caption {
    position: absolute;
    right: 15%;
    bottom: 20px;
    left: 15%;
    z-index: 10;
    padding-top: 20px;
    padding-bottom: 20px;
    color: #fff;
    text-align: center;
    height:60%;
}
</style>
</head>
<body>
	<!-- top -->
	<div class="container">
		<div class="navbar bg-light navbar-light">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link" href="<%=myctx%>/main">ImageLogo</a>
				</li>
			</ul>

			<ul class="nav navbar-expand-sm bg-light justify-content-right">
				<li class="nav-item"><a class="nav-link" href="<%=myctx%>/login">로그인</a></li>
				<li class="nav-item"><a class="nav-link" href="<%=myctx%>/join">회원가입</a></li>
				<li class="nav-item"><a class="nav-link" href="/Search.jsp">ID/PWD 찾기</a>
				</li>
			</ul>
		</div><!-- top(nav) end -->
		
	<nav class="navbar navbar-expand-md navbar-dark bg-success text-white">
		<div class="container">
			<i></i>
			<button class="navbar-toggler navbar-toggler-right border-0" type="button" 
			data-toggle="collapse" data-target="#navbar16">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbar16">
				<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a class="nav-link" href="<%=myctx%>/NewsList">공지사항</a></li>
						<li class="nav-item"><a class="nav-link" href="/input">입양/분실등록</a></li>
						<li class="nav-item"><a class="nav-link" href="<%=myctx%>/appList">게시판</a></li>
						<li class="nav-item"><a class="nav-link" href="/sss.jsp">고객센터</a></li>
						<li class="nav-item"><a class="nav-link" href="#">업체정보</a></li>
						<li class="nav-item"><a class="nav-link" href="#">후원처</a></li>
				</ul>
			</div>
		</div>
	</nav>