<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../top.jsp" />
<p></p>
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
						<th class="text-center" colspan="4"><h2>분양후기</h2></th>
					</tr>

					<tr>
						<td style="vertical-align: middle;">이름</td>
						<td><input class="form-control" readonly></td>
						<td style="vertical-align: middle;">작성일</td>
						<td><input class="form-control" readonly></td>
					</tr>

					<tr>
						<td style="vertical-align: middle;">보호소</td>
						<td><input class="form-control" placeholder="Center Name"
							readonly></td>
						<td style="vertical-align: middle;">뭘까?</td>
						<td><input class="form-control" placeholder="What.." readonly></td>
					</tr>

					<tr>
						<td colspan="4"><textarea class="form-control" cols="4"
								rows="15" placeholder="Content" readonly></textarea></td>
					</tr>

					<tr>
						<td colspan="2">
							<div class="justify-content-center" style="width: 100%">
								<img src="../images/a1.jpg" name="image1" type="file"
									class="rounded" alt="image1" style="width: 100%">
							</div>
						</td>

						</td>
						<td colspan="2">
							<div class="justify-content-center" style="width: 100%">
								<img src="../images/a1.jpg" name="image2" class="rounded"
									alt="image2" style="width: 100%">

							</div>
						</td>

					</tr>

					<tr>
						<td class="text-right" colspan="2"><button
								class="btn btn-outline-success">수정</button></td>
						<td class="text-left" colspan="2"><button
								class="btn btn-outline-danger">뒤로가기</button></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>
<jsp:include page="../foot.jsp" />