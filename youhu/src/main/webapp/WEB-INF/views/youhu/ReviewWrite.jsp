<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../top.jsp" />
<p></p>
<form id="revF" name="revF" role="form" action="reWrite"
	method="post" enctype="multipart/form-data">
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
					<table class="table talbe-hover">
						<tr>
							<th class="text-center" colspan="4"><h2>분양후기 작성</h2></th>
						</tr>

						<tr>
							<td style="vertical-align: middle;">제목</td>
							<td><input type="text" class="form-control" id="subject"
								name="subject"></td>
							<td style="vertical-align: middle;">작성일</td>
							<td><input type="text" class="form-control" readonly></td>
						</tr>

						<tr>
							<td style="vertical-align: middle;">보호소</td>
							<td><input type="text" class="form-control"
								placeholder="Center Name" id="center" name="center"></td>
							<td style="vertical-align: middle;">작성자</td>
							<td><input type="text" class="form-control" id="name"
								name="name" placeholder="Name"></td>
						</tr>

						<tr>
							<td colspan="4"><textarea class="form-control" cols="4"
									rows="15" placeholder="Content" id="content" name="content"></textarea></td>
						</tr>

						<tr>
							<td colspan="2"><input type="file" id="imgInp1"
								name="mimage1"></td>
							<td colspan="2"><input class="justify-content-center"
								type="text" value="만든사람" readonly></td>

						</tr>

						<tr class="col-md-4 offset-md-2">
							<td colspan="2">
								<div class="justify-content-center"
									style="border: 1px solid gold;">
									<img src="#" id="image" name="image" class="rounded"
										alt="이미지 업로드" style="width: 100%">
								</div>
							</td>
							<td colspan="2">
								<div class="justify-content-center"
									style="border: 1px solid gold;">
									<img src="images/ㅁㄴㅇ.png" class="rounded" style="width: 100%">
								</div>
							</td>

						</tr>

						<tr>
							<td class="text-right" colspan="2">
								<button type="button" class="btn btn-outline-success"
									id="btnWrite" name="btnWrite">작성</button>
							</td>
							<td class="text-left" colspan="2">
								<button class="btn btn-outline-danger"
									onclick="location.href='reviewList'">취소</button>
							</td>
						</tr>
					</table>
					<input type="text" class="form-control" id="midx" name="midx"
						value="9" readonly> <input type="text"
						class="form-control" id="downcg_code" name="downcg_code"
						value="6000" readonly>
				</div>
			</div>
		</div>
	</div>
</form>
<script>
	$(function() {
		$('#btnWrite').click(function() {
			if (!$('#name').val()) {
				alert('이름을 입력해주세요.');
				$('#name').focus();
				return false;
			}
			if (!$('#center').val()) {
				alert('보호소를 입력해주세요.');
				$('#center').focus();
				return false;
			}
			if (!$('#content').val()) {
				alert('내용을 입력해주세요.');
				$('#content').focus();
				return false;
			}
			$('#revF').submit();
		})
	})

	function readURL(input) {
		if (input.files && input.files[0]) {
			var a = new FileReader();
			a.onload = function(e) {
				$('#image').attr('src', e.target.result);

			}
			a.readAsDataURL(input.files[0]);
		}
	}
	$("#imgInp1").change(function() {
		readURL(this);
	});
</script>
<jsp:include page="../foot.jsp" />