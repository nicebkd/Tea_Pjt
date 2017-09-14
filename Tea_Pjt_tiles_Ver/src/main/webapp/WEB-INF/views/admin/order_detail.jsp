<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
$(function () {
	var complete = $("#complete").text();
	var cencel = $("#cencel").text();
	var order_id = ${param.order_id};
	$("#complete").click(function() {
		location.href="${path}/admin/product_status.do?status="+complete+"&order_id="+order_id;
	});		
	
	$("#cencel").click(function() {
		location.href="${path}/admin/product_status.do?status="+cencel+"&order_id="+order_id;
	});			
});
	
</script>
<table>
	<tr>
		<th>상품명</th><th>수량</th><th>가격</th><th>합계</th>
	</tr>
<c:forEach var="row" items="${list }">
	<tr>
		<td>${row.product_name }</td><td>${row.amount }</td><td>${row.price }</td><td>${row.order_total }</td>
	</tr>
</c:forEach>
</table>
<button id="complete" >주문 완료</button>
<button id="cencel" >주문 취소</button>
