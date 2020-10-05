<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="frm" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="/top" />
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<p></p>

<form name="aForm" id="aForm" action="appWrite" method="post">
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
					<table class="table" style="border: 2px solid darkgray">
						<tr>
							<th class="text-center" colspan="4">
								<h1>신청서 작성</h1>
							</th>
						</tr>
						<tr>
							<td class="text-right m" style="vertical-align: middle;">이름
								:</td>
							<td><input class="form-control" id="name" name="name"></td>
							<td class="text-right m" style="vertical-align: middle;">성별
								:</td>
							<td class="text-cetner m" style="vertical-align: middle;"><input
								type="radio" id="sex" name="sex" value="1" checked>남 <input
								type="radio" id="sex" name="sex" value="2">녀</td>

						</tr>
						<tr>
							<td class="text-right m" style="vertival-align: middle;">생년월일
								:</td>
							<!-- 조만간 수정예정 -->
							<td><input type="text" class="form-control" id="birth"
								name="birth" placeholder="6자리 입력"></td>

							<td class="text-right m" style="vertival-align: middle;">연락처
								:</td>
							<td><input type="text" class="form-control" id="tel"
								name="tel" placeholder="- 빼고  11자리"></td>


						</tr>
						<tr>
							<td class="text-right m" style="vertival-align: middle;">우편번호
								:</td>
							<td><input type="text" class="form-control" id="post"
								name="post" placeholder="Post" readonly></td>
							<td><button type="button" class="btn btn-secondary"
									id="postSearch" name="postSearch">우편번호 찾기</button></td>
							<td></td>
						</tr>
						<tr>
							<td class="text-right m" style="vertival-align: middle;">주소
								:</td>
							<td><input type="text" class="form-control" id="addr1"
								name="addr1" placeholder="Addr1"></td>
							<td colspan="2"><input type="text" class="form-control"
								id="addr2" name="addr2" placeholder="Addr2"></td>
						</tr>
						<tr>
							<td colspan="4"><textarea class="form-control" cols="4"
									rows="4" id="contents" name="contents"
									placeholder="Self-introduction"></textarea></td>
						</tr>
						<tr>
							<td class="text-right" colspan="2">
								<button type="submit" class="btn btn-success" id="btnWrite">신청</button>
							</td>
							<td class="text-left" colspan="2">
								<button type="button" class="btn btn-danger"
									onclick="location.href='appList'">취소</button>
							</td>
						</tr>
					</table>

					<input type="text" class="form-control" id="midx" name="midx"
						value="9" readonly> <input type="text"
						class="form-control" id="downcg_code" name="downcg_code"
						value="9000" readonly>

				</div>

			</div>
		</div>
	</div>
</form>

<script>
	
<%--function telCheck(){
	var lengthCheck = /^\d{3}-\d{3,4}-\d{4}$/;
	if(!lengthCheck.test($('#tel').val())){
		alert("연락처를 확인해주세요.");
		$('#tel').focus();
		return false;
	}
}--%>
	$(function() {
		$('#btnWrite').click(function() {
			if (!$('#name').val()) {
				alert('이름이 입력되지 않았습니다.');
				$('#name').focus();
				return false;
			}
			var birthCheck = /^\d{6}$/;
			if (!birthCheck.test($('#birth').val())) {
				alert('생년월일을 확인해주세요.');
				$('#birth').focus;
				return false;
			}
			var telCheck = /^\d{3}\d{3,4}\d{4}$/;
			if (!telCheck.test($('#tel').val())) {
				alert("연락처를 확인해주세요.");
				$('#tel').focus();
				return false;
			}
			if (!$('#addr1').val()) {
				alert('주소를 입력해주세요.')
				$('#addr1').focus();
				return false;
			}
			if (!$('#addr2').val()) {
				alert('상세 주소를 입력해주세요.')
				$('#addr2').focus();
				return false;
			}
			$('#aForm').submit();
		})
	})
	$(function() {
		$('#postSearch')
				.click(
						function() {
							new daum.Postcode(
									{
										oncomplete : function(data) {
											// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
											var fullAddr = ''; // 최종 주소 변수
											var extraAddr = ''; // 조합형 주소 변수

											//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져옴.
											if (data.userSelectedType === 'R') {
												//사용자가 도로명 주소를 선택했을 경우
												fullAddr = data.roadAddress;
											} else {
												fullAddr = data.jibunAddress;
											}
											// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
											if (data.userSelectedType === 'R') {
												//법정동명이 있을 경우 추가한다.
												if (data.bname !== '') {
													extraAddr += data.bname;
												}
											}
											if (data.buildingName !== '') {
												extraAddr += (extraAddr !== '' ? ','
														+ data.buildingName
														: data.buildingName);
											}
											// 조합형 주소의 유무에 따라 양쪽 괄호를 추가하여 최종 주소를 만든다.
											fullAddr += (extraAddr !== '' ? '('
													+ extraAddr + ')' : '');
											document.getElementById('post').value = data.zonecode; // 5자리 새 우편번호 사용
											document.getElementById('addr1').value = fullAddr;
											// 커서를 상세주소 필드로 이동한다.
											document.getElementById('addr2')
													.focus();
											// 예제를 참고하여 다양한 활용법을 확인해 보세요.
										}
									}).open();
						})
	})
</script>

<c:import url="/foot" />