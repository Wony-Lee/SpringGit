<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 컨텍스트명 ========================= -->
<c:set var="myctx" value="${pageContext.request.contextPath}"/>
<!-- ================================ -->
<div id="demo" class="carousel slide" data-ride="carousel" data-interval="2000">
	<!-- data-interval속성을 주면 자동으로 슬라이딩이 된다. -->

	<!-- Indicators -->
	<ul class="carousel-indicators">
			<li data-target="#demo" data-slide-to="0" class="active"></li>
			<li data-target="#demo" data-slide-to="1"></li>
			<li data-target="#demo" data-slide-to="2"></li>
	</ul>

	<!-- The slideshow -->
	<div class="carousel-inner">
		<div class="carousel-item active">
			<img src="images/im1.png" style="width: 100%">
		</div>
		<div class="carousel-item">
			<img src="images/im2.png" style="width: 100%">
		</div>
		<div class="carousel-item">
			<img src="images/im3.png" style="width: 100%">
		</div>
	</div>

	<!-- Left and right controls -->
		<a class="carousel-control-prev" href="#demo" data-slide="prev"> <span
			class="carousel-control-prev-icon"></span>
		</a> <a class="carousel-control-next" href="#demo" data-slide="next">
			<span class="carousel-control-next-icon"></span>
		</a>
</div>
<!-- image end -->