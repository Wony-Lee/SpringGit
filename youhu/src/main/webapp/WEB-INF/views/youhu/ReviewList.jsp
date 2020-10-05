<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="../top.jsp" />
<style>
#s {
	font-weight: bold;
	font-size: 14px;
}
</style>
<p></p>
<div class="container-fluid">
	<div class="row">
		<!-- nav start -->
		<div class="col-md-2">
			<ul class="nav flex-column">
				<li class="nav-item"><a class="nav-link" href="appList">봉사신청</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="reviewList">분양후기</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="boardList">자유게시판</a>
				</li>
			</ul>
		</div>
		<!-- nav end -->

		<!-- Header Start -->
		<div class="col-md-10">
			<div class="row">
				<div class="text-center col-md-10">분양후기</div>
				<button class="btn btn-outline-success"
					onclick="location.href='reWrite'">리뷰작성</button>
			</div>
			<!-- Header End -->

			<!-- Body Start -->
			<div class="row">
				<c:if test="${ReviewList eq null or empty ReviewList}">
					<div class="text-center col-md-10">게시글 없음 ㅈㅅ;;;</div>
				</c:if>
				<c:if test="${ReviewList ne null and not empty ReviewList}">
					<c:forEach var="rl" items="${ReviewList}" varStatus="re" begin="0"
						end="14">
						<div class="m-1" style="width: 30%; height: 100%">
							<div id="s" class="text-center">
								제목 : ${rl.subject}
								<div class="text-left">작성자 : ${rl.name}</div>
								<div class="text-left">
									작성일 :
									<fmt:formatDate value="${rl.indate}" pattern="yyyy-MM-dd" />
								</div>
							</div>
							<a href="#"><img src="Upload/${rl.image1}" class="rounded"
								style="width: 100%; height: 50%">이미지 클릭</a>
						</div>
					</c:forEach>
				</c:if>
			</div>
			<!-- Body End -->

		</div>
	</div>
</div>

<jsp:include page="../foot.jsp" />