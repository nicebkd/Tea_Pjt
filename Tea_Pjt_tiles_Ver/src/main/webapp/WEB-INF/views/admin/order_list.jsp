<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table>
	<tr>
		<th>주문번호</th><th>주문자</th><th>총금액</th><th>주문 상태</th>
	</tr>
	<c:forEach var="row" items="${list }">
	<tr>
		<td><a href="${path }/admin/order_list_detail?order_id=${row.order_id}">${row.order_id }</a></td><td>${row.userid }</td>
		<td>${row.ordered_total }</td><td>${row.order_status }</td>
	</tr>
	</c:forEach>
</table>