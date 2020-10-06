<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%
	String myctx = request.getContextPath();
%>
<c:import url="/top" />

<div class="col-md-12">
	<div class="row">
		<div class="col-md-3 text-left mt-3" style="height:1810px; border:solid 2px;">
			<div class="justify-content-center">
				<div class="row">
					<table class="table table-hover table-condensed table-bordered mt-1" bgcolor="pink">
						<tr>
							<td class="text-center">
								<a class="nav-link" href="<%=myctx%>/animSecure">보호동물</a>
							</td>
						</tr>
						<tr>
							<td class="text-center">
								<a class="nav-link" href="<%=myctx%>/animAdopt">입양동물</a>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="col-md-9 text-left mt-3" style="height:1810px; border:solid 2px;">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link"><h2>입양완료 동물</h2></a></li>
				<li class="text-right"><a class="nav-link" href="<%=myctx%>/anim2InputForm"><h3>글작성</h3></a></li>
			</ul>
			
			<form name="addAnim" id="addAnim" action="animInsert" method="POST"
				enctype="multipart/form-data">
				<table style="height:750px; border:solid 5px;" class="table table-condensed table-bordered mt-1">
					<thead>
						<tr class="text-black">
							<th colspan="4" class="text-center">
								 <c:import url="/formDOG_A" />
								 <c:import url="/formCAT_A" />
								 <c:import url="/formGITA_A" />
							</th>
						</tr>
					</thead>
				</table>
			
		</div>
	</div>
</div>

<c:import url="/foot" />