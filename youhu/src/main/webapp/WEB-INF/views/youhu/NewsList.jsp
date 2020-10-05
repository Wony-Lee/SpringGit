<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/top" />
<div class="container">

	<div class="row justify-content-center"
		style="background-color: lightgray;">
		<div style="text-align: center;">
			<a href="#">공지사항</a> <a>업체정보</a> <a>이벤트</a>
		</div>
	</div>
	<p></p>
	<div class="container">
		<div class="row justify-content-center">

			<h4>공지사항</h4>

		</div>
		
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-2">글 번호</div>
				<div class="col-md-2">글 제목</div>
				<div class="col-md-2">작성자</div>
				<div class="col-md-2">작성일</div>
			</div>
		</div>
		
	</div>
</div>



<c:import url="/foot" />