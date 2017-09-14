<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
	$(document).ready(function() {
		
		cart_list_page();
		
		function cart_list_page() {
			alert("페이지 가져온다.");
			$.ajax({
				url :"${path}/shop/cart/list_page.do",
				type : "GET",
				success : function(data) {
					$("#cart_list").html(data);
				}
			});	

		}
		

	});
</script>

<div class="container">
	<div class="row">
		<hr>
		<h2>장바구니</h2>
		<hr>
		<div id="cart_list">
			
		</div>
	</div>
</div>
