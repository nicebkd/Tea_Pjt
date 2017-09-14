<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.javalec.tea_pjt.model.shop.dto.OrdersDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>
	.table{
		width: 500px;	
	}
</style>
<div class="container">
	<hr>
	<h2>주문 내역</h2>
	<hr>
<%-- <c:forEach var="row" items="${orders_detail }" varStatus="rowstatus">
	<table class="table table-bordered">
		<tr style="color: gray;">
		<td colspan="2">주문번호 :${row.order_id }</td>
		<td colspan="2">주문일 :<fmt:formatDate value="${row.order_date }" pattern="YYYY/MM/dd"/> </td>
	</tr>
		<tr>
			<th>상품명</th>
			<th>수량</th>
			<th>가격</th>
			<th>합계</th>
		</tr>
		<c:forEach var="row2" items="${select_orders1}">
		<tr>
  			<td>${row2.product_name }</td>
			<td>${row2.amount }</td>
			<td>${row2.price }</td>
			<td>${row2.order_total }</td>
		</tr>
		</c:forEach>
		<tr>
			<th colspan="2">배송비 : ${row.free }</th>
			<th colspan="2">총 합계 : ${row.ordered_total }</th>
		</tr>
	</table>
</c:forEach> --%>
	<%
		ArrayList<OrdersDTO> orders_detail = (ArrayList<OrdersDTO>)request.getAttribute("orders_detail");
		for (int i = 0; i < orders_detail.size(); i++) {
			ArrayList<OrdersDTO> select_orders =(ArrayList<OrdersDTO>) request.getAttribute("select_orders"+i);					
	%>
	<table class="table table-bordered">
	<tr style="color: gray;">
		<td colspan="2">주문번호 :<%=orders_detail.get(i).getOrder_id() %></td>
		<td colspan="1">주문일 :<fmt:formatDate value="<%=orders_detail.get(i).getOrder_date() %>" pattern="YYYY/MM/dd"/> </td>
		<td>주문 상태 : <%=orders_detail.get(i).getOrder_status() %></td>
	</tr>
		<tr>
			<th>상품명</th>
			<th>수량</th>
			<th>가격</th>
			<th>합계</th>
		</tr>
		<%
			for (int j = 0; j < select_orders.size(); j++) {
		%>
		<tr>
  			<td><%=select_orders.get(j).getProduct_name() %></td>
			<td><%=select_orders.get(j).getAmount() %></td>
			<td><%=select_orders.get(j).getPrice() %></td>
			<td><%=select_orders.get(j).getOrder_total() %></td> 
		</tr>
		<%
			}
		%>
		<tr>
			<td colspan="2"><b>배송비 : <%=orders_detail.get(i).getFree() %></b></td><td colspan="2"><b>총 합계 : <%=orders_detail.get(i).getOrdered_total() %></b></td>
		</tr>
	</table>
	<br>
	<%	
		}
	%> 

</div>
