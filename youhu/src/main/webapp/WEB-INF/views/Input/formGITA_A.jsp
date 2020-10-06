<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, com.tis.domain.AnimalVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="text-left p-5">
	<h3 class="text-warning">${form3}</h3>
	<div class="row mt-4">
		<c:if test="${GITAList eq null or empty GITAList}">
			<div class="col-md-4">
				<h3>아직 등록된 글이 없어요.</h3>
			</div>
		</c:if>
		<c:if test="${GITAList ne null and not empty GITAList}">
		<c:forEach var="gita" items="${GITAList}" varStatus="st" begin="0" end="2">
		<%-- varStatus속성을 이용하면 반복문의 상태정보를 활용할 수 있다.
			index : 인덱스 번호
			count : 반복문 횟수정보
		 --%> 
			<div class="col-md-4">
				<%-- ${st.index} / ${st.count} --%>
				<a href="animInfo?iidx=${gita.iidx}"><img src="Upload/${gita.image}" class="rounded img-fluid"
				style="width:200px;height:150px"></a>
				<br><br>
				<h4>${gita.title}</h4>
				
				<span class="text-primary">작성자 : ${gita.name}</span><br>
				
				<span class="text-success">색상 : ${gita.color}</span><br>
				
				<span class="text-danger">발견장소 : ${gita.addr}</span><br><br>
				
			</div><%-- col-md-3 end --%>
			<c:if test="${st.count mod 3 == 0}">
				</div> <%-- row를 끝내고 새로운 row를 시작하자. --%>
				<div class="row mt-4">
			</c:if>
		</c:forEach>
		</c:if>
	</div><%-- row end --%>
</div>