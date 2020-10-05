
	<p></p>
	<p class="p">Dog</p> <!-- ------------------------------------------------------- -->
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<c:if test="${dogList ne null and not empty dogList}">
					<c:forEach var="dog" items="${dogList}" begin="0" end="0">
						<img src="Upload/${dog.image}" class="img-responsive"
							style="width: 100%; height: 100%">
						<div class="carousel-caption">
							<h2>${dog.name}</h2>
						</div>
					</c:forEach>
				</c:if>
			</div>
			<div class="col-md-3">
				<c:if test="${dogList ne null and not empty dogList}">
					<c:forEach var="dog" items="${dogList}" begin="1" end="1">
						<img src="Upload/${dog.image}" class="img-responsive"
							style="width: 100%; height: 100%">
						<div class="carousel-caption">
							<h2>${dog.name}</h2>
						</div>
					</c:forEach>
				</c:if>
			</div>
			<div class="col-md-3">
				<c:if test="${dogList ne null and not empty dogList}">
					<c:forEach var="dog" items="${dogList}" begin="2" end="2">
						<img src="Upload/${dog.image}" class="img-responsive"
							style="width: 100%; height: 100%">
						<div class="carousel-caption">
							<h2>${dog.name}</h2>
						</div>
					</c:forEach>
				</c:if>
			</div>
			<div class="col-md-3">
				<c:if test="${dogList ne null and not empty dogList}">
					<c:forEach var="dog" items="${dogList}" begin="3" end="3">
						<img src="Upload/${dog.image}" class="img-responsive"
							style="width: 100%; height: 100%">
						<div class="carousel-caption">
							<h2>${dog.name}</h2>
						</div>
					</c:forEach>
				</c:if>
			</div>
		</div>
	</div>
	<p></p>
	<p class="p">Cat</p> <!-- --------------------------------------------------- -->
		<div class="container">
		<div class="row">
			<div class="col-md-3">
				<c:if test="${catList ne null and not empty catList}">
					<c:forEach var="cat" items="${catList}" begin="0" end="0">
						<img src="Upload/${cat.image}" class="img-responsive"
							style="width: 100%; height: 100%">
						<div class="carousel-caption">
							<h2>${cat.name}</h2>
						</div>
					</c:forEach>
				</c:if>
			</div>
			<div class="col-md-3">
				<c:if test="${catList ne null and not empty catList}">
					<c:forEach var="cat" items="${catList}" begin="1" end="1">
						<img src="Upload/${cat.image}" class="img-responsive"
							style="width: 100%; height: 100%">
						<div class="carousel-caption">
							<h2>${cat.name}</h2>
						</div>
					</c:forEach>
				</c:if>
			</div>
			<div class="col-md-3">
				<c:if test="${catList ne null and not empty catList}">
					<c:forEach var="cat" items="${catList}" begin="2" end="2">
						<img src="Upload/${cat.image}" class="img-responsive"
							style="width: 100%; height: 100%">
						<div class="carousel-caption">
							<h2>${cat.name}</h2>
						</div>
					</c:forEach>
				</c:if>
			</div>
			<div class="col-md-3">
				<c:if test="${catList ne null and not empty catList}">
					<c:forEach var="cat" items="${catList}" begin="3" end="3">
						<img src="Upload/${cat.image}" class="img-responsive"
							style="width: 100%; height: 100%">
						<div class="carousel-caption">
							<h2>${cat.name}</h2>
						</div>
					</c:forEach>
				</c:if>
			</div>
		</div>
	</div>