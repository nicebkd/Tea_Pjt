<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="carousel-example-generic" class="carousel slide"
	data-ride="carousel">
	<!-- Indicators -->
	<ol class="carousel-indicators">
		<li data-target="#carousel-example-generic" data-slide-to="0"
			class="active"></li>
		<li data-target="#carousel-example-generic" data-slide-to="1"></li>
		<li data-target="#carousel-example-generic" data-slide-to="2"></li>
	</ol>

	<!-- Wrapper for slides -->
	<div class="carousel-inner" role="listbox">
		<div class="item active">
			<img
				src="<c:url value="/resources/images/DocSQ3BypENij569_20170703.jpg" />"
				alt="...">
			<div class="carousel-caption"></div>
		</div>
		<div class="item">
			<img
				src="<c:url value="/resources/images/JdGmA6yOF0wj8vDh_20170414.jpg" />"
				alt="...">
			<div class="carousel-caption"></div>
		</div>

		<div class="item">
			<img
				src="<c:url value="/resources/images/T90vCiqEAV24RrIJ_20170712.jpg" />"
				alt="...">
			<div class="carousel-caption"></div>
		</div>
	</div>

	<!-- Controls -->
	<a class="left carousel-control" href="#carousel-example-generic"
		role="button" data-slide="prev"> <span
		class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
		class="sr-only">Previous</span>
	</a> <a class="right carousel-control" href="#carousel-example-generic"
		role="button" data-slide="next"> <span
		class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span
		class="sr-only">Next</span>
	</a>
</div>