<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
body {
	text-align: center;
}

.inputText {
	margin: 12px;
	width: 70%;
	height: 40px;
	text-align: center;
}

#button {
	width: 70%;
	height: 40px;
}
</style>
<c:if test="${msg !=null }">
	<script>
		alert('${msg}');
	</script>
	<c:set var="msg" value=""></c:set>
</c:if>
<%-- <c:when test="${msg==null }">
	<c:choose>
		
	</c:choose>
	<c:otherwise>
		<script>
			alert('${msg}');
		</script>
	</c:otherwise>
</c:when> --%>
	<form action="login.do" method="post">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<h3>로그인</h3>
				<input id="user_id" class="inputText" type="text" name="user_id"
					placeholder="ID">
				<p>
					<input id="password" class="inputText" type="password"
						name="password" placeholder="PASSWORD">
				<p>
					<input id="button" type="submit" value="로그인">
			</div>
			<div class="col-md-3"></div>
		</div>
	</form>
