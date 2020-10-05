<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="/top" />
<p></p>
<form name="bf" id="bf" action="boardEditEnd" method="post">
	<div class="container">
		<div class="col-md-12">
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
				<div class="col-md-10">
					<c:if test="${bvo eq null}">
						<div class="col-md-6 offset-md-1 table responsive">
							<h2 class="text-center text-danger">해당 게시글이 존재하지 않습니다.</h2>
						</div>
					</c:if>
					<c:if test="${bvo ne null}">
						<table class="table table-hover">
							<tr>
								<th class="text-center" colspan="4">
									<h2>게시글 작성</h2>
								</th>
							</tr>
							<tr>
								<td class="text-right m" style="vertical-align: middle;">제목
									:</td>
								<td><input class="form-control" id="subject" name="subject"
									value="${bvo.subject}" placeholder="subject"></td>
								<td class="text-right m" style="vertical-align: middle;">작성자
									:</td>
								<td><input class="form-control" id="name" name="name"
									value="${bvo.name}" placeholder="Name"></td>
							</tr>
							<tr>
								<td colspan="4"><textarea class="form-control" cols="4"
										rows="15" id="contents" name="contents" placeholder="Contents">${bvo.contents}</textarea>
							</tr>
							<tr>
								<td class="text-right" colspan="2">
									<button type="button" id="btnEdit"
										class="btn btn-outline-success">수정</button>
								</td>
								<td class="text-left" colspan="2">
									<button type="button" class="btn btn-outline-danger"
										onclick="location.href='javascript:history.back()'">목록으로</button>
								</td>
							</tr>
						</table>
					</c:if>
				</div>

			</div>
		</div>
	</div>

	<input type="text" name="bidx" value="${bvo.bidx}"> <input
		type="text" name="midx" value="${bvo.midx}">
</form>
<script>
	$(function() {
		$('#btnEdit').click(function() {
			if (!$('#contents').val()) {
				alert('글 입력 ㄱ');
				$('#contents').focus();
				return false;
			}
			$('#bf').submit();
		})
	})
</script>
<c:import url="/foot" />