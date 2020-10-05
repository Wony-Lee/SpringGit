<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/top"/>

<p></p>
<form name="aForm" id="aForm" action="appEditEnd" method="post">
<div class="container">
	<div class="col-md-12">
		<div class="row">
			<!-- nav start -->
			<div class="col-md-2">
				<ul class="nav flex-column">
				  <li class="nav-item">
				    <a class="nav-link" href="appList">봉사신청</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="reviewList">분양후기</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="boardList">자유게시판</a>
				  </li>
				</ul>
			</div>
			<!-- nav end -->
	
			<div class="col-md-10">
				<c:if test="${avo eq null}">
					<div class="col-md-6 offset-md-1 table-responsive">
						<h2 class="text-center text-danger">해당 게시글이 존재하지 않습니다.</h2>
					</div>
				</c:if>
<c:if test="${avo ne null}">	
			<table class="table" style="border:2px solid darkgray">
				<tr>
					<th class="text-center" colspan="4">
						<h1>신청서 작성</h1>
					</th>
				</tr>
				<tr>
					<td class="text-right m" style="vertical-align: middle;">이름 :</td>
					<td><input class="form-control" name="name" value="${avo.name}" readonly></td>
					<td class="text-right m" style="vertical-align: middle;">성별 :</td>
					<td><input class="form-control" name="sex" value="${avo.sex}" readonly></td>

				</tr>
				<tr>
					<td class="text-right m" style="vertival-align: middle;">생년월일 :</td>
					<!-- 조만간 수정예정 -->
					<td><input class="form-control" name="birth" placeholder="Birth" value="${avo.birth}" readonly></td>
					
					<td class="text-right m" style="vertival-align: middle;">연락처 :</td>
					<td><input class="form-control"  name="tel" placeholder="Tel" value="${avo.tel}"></td>

					
				</tr>
				<tr>
					<td class="text-right m" style="vertival-align: middle;">우편번호 :</td>
					<td><input class="form-control" name="post" placeholder="Post" value="${avo.post}" readonly></td>
					<td><button type="button" class="btn btn-outline-success">우편번호 찾기</button> </td>
					<td></td>
				</tr>
				<tr>	
					<td class="text-right m"  style="vertival-align: middle;">주소 :</td>
					<td><input class="form-control" name="addr1" placeholder="Addr1" value="${avo.addr1}"></td>
					<td colspan="2"><input class="form-control" name="addr2" placeholder="Addr2" value="${avo.addr2}"></td>
				</tr>
				<tr>
					<td colspan="4">
					<textarea class="form-control" name="contents" cols="4" rows="4" placeholder="Self-introduction">${avo.contents}</textarea></td>
				</tr>
				<tr>
					<td class="text-right" colspan="2"><button type="submit" class="btn btn-outline-success">수정</button></td>
					<td class="text-left" colspan="2"><button type="button" onclick="location.href='appList'" class="btn btn-outline-danger">취소</button></td>
				</tr>
			</table>
			
	</c:if>
			</div>
		</div>
	</div>
</div>
	<input type="text" name="aidx" value="${avo.aidx}">
	<input type="text" name="midx" value="${avo.midx}">
</form>
<script>
$(function(){
	$('#btnEdit').click(function(){
		if($('#contents').val()){
			alert('내용을 입력해주세요.');
			$('#contents').focus();
			return false;
		}
		$('#aForm').submit();
	})
})
</script>

<c:import url="/foot"/>