<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>
.thS {
	font-size: 15px;
}

.tdS {
	font-size: 13px;
}
table
</style>
<script>
	
	function test(cname,csale) {
		var param ="cname="+cname+"&csale="+csale;
		$.ajax({
			type : "POST",
			url : "${path}/shop/cart/list_page.do",
			data : param,
			success : function(data) {
				 $("#myModal").modal('hide');
				 console.log(data);
				 var cart_list=$("#cart_list");
				 cart_list.html(data); 

			
			}
		});


	}
</script>
<form action="">
	<div class="row">
		<div class="col-sm-10">
			<table class="table">
				<tr>
					<th><span class="thS"> 쿠폰명 </span></th>
					<th><span class="thS"> 할인 </span></th>
					<th><span class="thS"> 설명 </span></th>
					<th><span class="thS">  </span></th>
				</tr>
				<c:set value="${cCount }" var="cCount" />
				<c:if test="${cCount != null}">
					<c:forEach items="${cDto}" var="cDto">
						<tr>
							<td><span class="tdS"> ${cDto.getcName() } </span></td>
							<td><span class="tdS"> ${cDto.getcSale() } </span></td>
							<td><span class="tdS"> ${cDto.getcEx() } </span></td>
							<td><span class="tdS"><button type="button" onclick="test('${cDto.getcName()}','${cDto.getcSale() }')">사용</button> 
							</span></td>
						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${cCount == null }">
					<tr>
						<td colspan="4">발급받은 쿠폰이 없습니다.</td>
					</tr>
				</c:if>
			</table>
		</div>
	</div>
</form>
