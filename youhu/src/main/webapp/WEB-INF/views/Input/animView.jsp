<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:import url="/top" />

<!-- <script type="text/javascript" src="js/jquery.magnifier.js"></script> -->

<div align="center" class="row">
<c:if test="${anim eq null}">
	<div class="col-md-10 offset-md-1 table-responsive">
		<h2 class="text-center text-danger">해당 정보는 존재하지 않아요</h2>
	</div>
</c:if>
<c:if test="${anim ne null}">
<div class="col-md-10 offset-md-1 table-responsive" align="center">
	<h1>:::등록 정보:::</h1>
</div>
<div class="col-md-10 offset-md-1 table-responsive" align="left" style="background-color: #DFDFDF; margin-bottom:20px">
          <p>
          <hr color='red'>
                            「동물보호법」 제17조, 시행령7조 및 동법 시행규칙 제20조에 따라 유기·유실동물을 보호하고 있는 경우에는 소유자 등이<br>
                       보호조치 사실을 알 수 있도록 7일 동안 공고하여야 합니다.<br>
                       공고 중인 동물 소유자는 해당 시군구 및 동물보호센터에 문의하시어 동물을 찾아가시기 바랍니다.<br>
                       다만, 「동물보호법」 제19조 및 동법 시행규칙 제21조에 따라 소유자에게 보호비용이 청구될 수 있습니다.<br> 
                       또한 「동물보호법」 제17조에 따른 공고가 있는 날부터 10일이 경과하여도 소유자 등을 알 수 없는 경우에는 <br>
                            「유실물법」 제12조 및 「민법」 제253조의 규정에도 불구하고 해당 시·도지사 또는 시장·군수·구청장이 그 동물의 소유권을 취득하게 됩니다. 
          </p>
          	<hr color='orange'>
        	<div class="text" align="right">
          		<p>시·도지사, 시장·군수·구청장(직인 생략)</p>
        	</div>
        	<hr color='orange'>
    	</div>
<div class="col-md-10 offset-md-1 table-responsive">
	<table class="table">
	<thead>
	<tr>
		<th colspan="3"><h3 class="text-center text-primary">
		제목: ${anim.title}
		</h3></th>
	</tr>
	</thead>
	<tbody>
		<tr>
			<td align="left" width="34%" height="20%" style="margin-right:20px">
				<a href="javascript:windowUp('${anim.image}')" title="클릭 시 새창이 열립니다.">
				<img src="Upload/${anim.image}"
					class="img-fluid magnify" data-magnifyby="3"  style="width: 100%;">
				</a>
		
			<td align="center" width="33%" style="padding:10px">
			색상: ${anim.color}<br>
			무게: ${anim.weight} /Kg<br>
			성별: ${anim.sex}<br>
			중성화여부: ${anim.trans}<br>
			발견날짜: ${anim.indate}<br>
			발견장소: ${anim.addr}<br>
			보호장소: ${anim.protect}<br>
			보호센터: ${anim.center}<br><br><br><br>
			<!-- form시작---------- -->
			<form name="frm" id="frm" method="GET" style="margin-top:20px">
			<!-- 등록번호를 hidden으로 넘기자--------- -->
			<input type="hidden" name="iidx" value="${anim.iidx}">
			<!-- -------------------------------- -->				
			</form>				
			<!-- form end------------ -->	
			
			<button type="button" onclick="goUpdate()"
			 class="btn btn-success">수정하기</button>
			<button type="button" onclick="goDelete()" 
			class="btn btn-danger">삭제하기</button>
			</td>
			
			<td align="right" width="33%" style="padding:10px">
			작성일: ${anim.intdate}<br>
			작성자: ${anim.name}<br>
			연락처: ${anim.tel}<br><br>
			</td>
		</tr>
	</tbody>
			
</table>
</div>
</c:if>
</div><!-- row end -->
<script type="text/javascript">
	var windowUp=function(image){
		//alert(pimage);
		var url="images/"+image;
		var obj=new Image();
		obj.src=url;
		var w=obj.width+100;
		var h=obj.height+100;
		window.open(url,'preview',"width="+w+", height="+h+", top=100, left=100");
	}

	var goUpdate=function(){
		yn=confirm("정말로 수정하시겠습니까?");
		if(yn) {
		frm.action="animUpdForm";
		frm.method='GET';
		frm.submit();
		}
	}
	var goDelete=function(){
		yn=confirm("정말로 삭제하시겠습니까?");
		if(yn) {
		frm.action="animDelete";
		frm.method='GET';
		frm.submit();
		}
	}

</script>
<c:import url="/foot" />







