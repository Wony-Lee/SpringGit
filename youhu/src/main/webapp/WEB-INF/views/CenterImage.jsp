<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
			<p></p>
	<div class="col-md-12">
		<div class="row">
			<div class="col-md-6">
				<table class="table table-hover">
					<thead>
						<tr>
							<th class="text-center" colspan="2">공지사항</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${appList ne null and not empty appList}">
							<c:forEach var="al" items="${appList}" begin="0" end="4">
								<tr>
									<td id="app1">신청자 : <a href="appView?aidx=${al.aidx}">${al.name}</a></td>
									<td id="app2">날짜 : <fmt:formatDate value="${al.wdate}" pattern="yyyy-MM-dd"/></td>
								</tr>
							</c:forEach>
						</c:if>
					</tbody>
				</table>
			</div>
			<div class="col-md-6">
				<table class="table table-hover">
					<thead>
						<tr>
							<th class="text-center" colspan="2">봉사신청</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${appList ne null and not empty appList}">
							<c:forEach var="al" items="${appList}" begin="0" end="4">
								<tr>
									<td id="app1">신청자 : <a href="appView?aidx=${al.aidx}">${al.name}</a></td>
									<td id="app2">날짜 : <fmt:formatDate value="${al.wdate}" pattern="yyyy-MM-dd"/></td>
								</tr>
							</c:forEach>
						</c:if>
					</tbody>
				</table>
			</div>
			<!-- table end -->
		</div>
	</div>