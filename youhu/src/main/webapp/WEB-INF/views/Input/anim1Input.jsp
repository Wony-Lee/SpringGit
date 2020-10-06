<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String myctx = request.getContextPath();
%>
<c:import url="/top" />

<script>
	var win=null;
	function addrCheck() {
		f.flag.value="false";
		win=window.open("postSelect.jsp","adrCheck","width=400, height=400, left=100, top=100");
	}
	
	//여기 있는건 소스를 긁어온겁니다.
	function preImg(a, b, c, d) {
		var f = a.value;
		var g = f.substring(f.lastIndexOf('.') + 1).toLowerCase();
		var h = document.getElementById(b);
		if (!/(jpg|png|gif|jpeg)$/i.test(g)) {
			alert('이미지파일 형식은 jpg, png, gif 만 등록 가능합니다.');
			return;
		}
		while (h.firstChild) {
			h.removeChild(h.firstChild);
		}
		  	if (window.FileReader) {
		    	var i = b + "_img";
		    	var j = new FileReader();
		    	var k = "";
		    	
		    	j.onload = function(e) {
		      		k = "<img id='" + i + "' src='" + e.target.result + "' style='width:auto;height:" + d + "px;max-width:" + c + "px;' alt='이미지'/>";
		      		document.getElementById(b).innerHTML = k;
		    	};
		    	
		    	j.readAsDataURL(a.files[0]);
		    	
		  		}else{	
		    		a.select();
		    		a.blur();
		    		var l = document.selection.createRange().text;
		    		h.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src='" + l + "')";
		  		}
		}
	$(function accept(){
		$('#addAnim').on('submit', function(){
			if(!$('#title').val()){
				alert('제목을 입력하세요');
				$('#title').focus();
				return false;
			}
			if(!$('#name').val()){
				alert('작성자를 입력하세요');
				$('#name').focus();
				return false;
			}
			if(!$('#trans').val()){
				alert('중성화 여부를 입력하세요');
				$('#trans').focus();
				return false;
			}
			if(!$('#color').val()){
				alert('색상을 입력하세요');
				$('#color').focus();
				return false;
			}
			if($("input:radio[id='form']:checked").length == 0){
	            alert("종류를 체크해주세요.");
	            return false ;
	        }
			if(!$('#weight').val()){
				alert('체중을 입력하세요');
				$('#weight').focus();
				return false;
			}
			if(!$('#sex').val()){
				alert('성별을 입력하세요');
				$('#sex').focus();
				return false;
			}
			if($("input:radio[id='astate']:checked").length == 0){
	            alert("현황을 체크해주세요.");
	            return false ;
	        }
			if(!$('#indate').val()){
				alert('발견날짜를 입력하세요');
				$('#indate').focus();
				return false;
			}
			if(!$('#addr').val()){
				alert('발견장소를 입력하세요');
				$('#addr').focus();
				return false;
			}
			if(!$('#center').val()){
				alert('보호센터를 입력하세요');
				$('#center').focus();
				return false;
			}
			if(!$('#protect').val()){
				alert('보호장소를 입력하세요');
				$('#protect').focus();
				return false;
			}
			if(!$('#tel').val()){
				alert('연락처를 입력하세요');
				$('#tel').focus();
				return false;
			}
		})
	})
</script>
<div class="col-md-12">
	<div class="row">
		<div class="col-md-3 text-left mt-3" style="height:910px; border:solid 2px;">
			<div class="justify-content-center">
				<div class="row">
					<table class="table table-hover table-condensed table-bordered mt-1" bgcolor="pink">
						<tr>
							<td class="text-center">
								<a class="nav-link" href="<%=myctx%>/animSecure.do">보호동물</a>
							</td>
						</tr>
						<tr>
							<td class="text-center">
								<a class="nav-link" href="<%=myctx%>/animAdopt.do">입양동물</a>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="col-md-9 text-left mt-1">
			<h1 class="text-center">보호 동물등록</h1>
			
			<form name="addAnim" id="addAnim" action="animInsert" method="POST"
				enctype="multipart/form-data">
				<table style="border:solid 2px;" class="table table-condensed table-bordered mt-1"
				bgcolor="skyblue">
					<thead>
						<tr class="bg-success text-white">
							<th colspan="4" class="text-center">
								<h3>: : : 등록  : : :</h3>
							</th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<td class="text-center" width="20%"><b>제목</b></td>
							<td width="30%">
								<input type="text" name="title" id="title" placeholder="String(제목)">
							</td>
							 
							<td rowspan="7" class="text-center" width="20%"><b>이미지</b></td>
							<td rowspan="7" width="30%">
								<input type="file" name="mfilename" id="image" value="파일찾기" title="파일찾기"
								accept=".png,.jpg,.jpeg,.gif" onchange="preImg(this, 'img_view', 313, 320)">
								<div id="img_view" style="margin-top:5px;">
							</td>
							
						</tr>
						<tr>
							<td class="text-center" width="15%"><b>작성자</b></td>
							<td width="30%">
								<input type="text" name="name" id="name" placeholder="String(작성자)">
							</td>
						</tr>
						<tr>
							<td class="text-center" width="15%"><b>중성화여부</b></td>
							<td width="30%">
								<input type="text" name="trans" id="trans" placeholder="String(중성화여부)">
							</td>
						</tr>
						<tr>
							<td class="text-center" width="15%"><b>색상</b></td>
							<td width="30%">
								<input type="text" name="color"id="color" placeholder="String(색상)">
							</td>
						</tr>
						<tr>
							<td class="text-center" width="15%"><b>종류</b></td>
							<td width="30%">
								<input type="radio" value="1" name="form" id="form">개
								<input type="radio" value="2" name="form" id="form">고양이
								<input type="radio" value="3" name="form" id="form">기타
							</td>
						</tr>
						<tr>
							<td class="text-center" width="15%"><b>체중</b></td>
							<td width="30%">
								<input type="text" name="weight" id="weight" placeholder="String(체중)">
							</td>
						</tr>
						<tr>
							<td class="text-center" width="15%"><b>성별</b></td>
							<td width="30%">
								<input type="text" name="sex"id="sex" placeholder="String(성별)">
							</td>
						</tr>
						<tr>
							<td class="text-center" width="15%"><b>현황</b></td>
							<td width="30%">
								<input type="radio" value="1" name="astate"id="astate" checked>보호동물
							</td>
									
							<td rowspan="1" class="text-center" width="15%"><b>발견날짜</b></td>
							<td rowspan="1" width="30%">
								<input type="text" name="indate" id="indate" placeholder="String(발견날짜)">
							</td>
						</tr>
						<tr>
							<td class="text-center" width="20%"><b>발견장소</b></td>
							<td width="30%">
								<input type="text" name="addr"id="addr" placeholder="String(발견장소)">
							</td>
								
							<td rowspan="1" class="text-center" width="20%"><b>보호센터</b></td>
							<td rowspan="1" width="30%">
								<input type="text" name="center" id="center" placeholder="String(보호중인 센터)">
							</td>
						</tr>
						<tr>
							<td class="text-center" width="15%"><b>보호장소</b></td>
							<td colspan="2" width="30%">
								<input type="text" name="protect" id="protect" placeholder="예) 서울시 강남구 테헤란로">
							</td>
								
							<td colspan="1" class="text-center">
								<button type="button" onclick="addrCheck()"
								class="btn btn-info">주소검색</button></td>
						</tr>
						<tr>
							<td class="text-center" width="15%"><b>연락처</b></td>
							<td colspan="2" width="30%">
								<input type="text" name="tel" id="tel" placeholder="String(연락처)">
							</td>
							<td colspan="1" class="text-center">
								<button class="btn btn-success" onclick="accept()">글작성</button>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
	</div>
</div>
<script>
	
</script>

<c:import url="/foot" />






