<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/top" />
<p></p>
<form name="borF" id="borF" action="boardWriteEnd" method="post">
	<div class="container">
		<div class="col-md-12">
			<div class="row">

				<!-- nav start -->
				<div class="col-md-2">
					<ul class="nav flex-column">
						<li class="nav-item"><a class="nav-link" href="appList">봉사신청</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="ReviewList">분양후기</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="boardList">자유게시판</a>
						</li>
					</ul>
				</div>
				<!-- nav end -->
				<div class="col-md-10">
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
								placeholder="subject"></td>
							<td class="text-right m" style="vertical-align: middle;">작성자
								:</td>
							<td><input class="form-control" id="name" name="name"
								placeholder="Name"></td>
						</tr>

						<tr>
							<td colspan="4"><textarea class="form-control" cols="4"
									rows="15" id="contents" name="contents" placeholder="Content"></textarea>
						</tr>
						<tr>
							<td class="text-right" colspan="2">
								<button type="submit" class="btn btn-outline-success"
									id="btnWrite" name="btnWrite">글 등록</button>
							</td>
							<td class="text-left" colspan="2">
								<button type="button" class="btn btn-outline-danger"
									onclick="location.href='javascript:history.back()'">목록으로</button>
							</td>
						</tr>
					</table>
					<input type="text" class="form-control" id="midx" name="midx"
						value="9" readonly> <input type="text"
						class="form-control" id="downcg_code" name="downcg_code"
						value="8000" readonly>
				</div>

			</div>
		</div>
	</div>
</form>
<script>
	$(function() {
		$('#btnWrite').click(function() {
			if (!$('#name').val()) {
				alert('이름이 입력되지 않았습니다.');
				return false;
			}
			if (!$('#subject').val()) {
				alert('제목이 입력되지 않았습니다.');
				$('#subject').focus();
				return false;
			}
			if (!$('#contents').val()) {
				alert('내용을 입력해주세요.');
				$('#contents').focus();
				return false;
			}
			$('#borF').submit();

		})

	})
</script>

<c:import url="/foot" />