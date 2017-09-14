<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<script>
$(document).ready(function() {
//댓글 삭제 버튼
$("#btnReplyDelete").click(function() {

	$.ajax({
		type : "delete",
		url : "${path}/reply/delete/${vo.rno}",
		success : function(result) {
			if(result = "success"){
				alert("삭제 되었습니다.");
				$("#modifyReply").css(
						"visibility","hidden");
				listReply_rest("1"); //댓글 목록(rest방식)
			}
		}				
	});
});



//댓글 수정 버튼 클릭
//put : 전체 수정 ,patch : 일부 수정
 $("#btnReplyUpdate").click(function() {
	var replytext = $("#detail_replytext").val();
	$.ajax({
		type : "put",
		url : "${path}/reply/update/${vo.rno}",
		headers : {
			"Content-Type" : "application/json"
		},
		
		data : JSON.stringify({
			replytext : replytext
		}),
		dataType : "text",
		success : function(result) {
			if(result =="success"){
				//div 숨김 처리
				$("#modifyReply").css(
				"visibility","hidden");
				//댓글 목록 갱신
				listReply_rest("1"); //댓글 목록(rest방식)
			}
		}
	});
}); 

	$("#btnReplyClose").click(function() {
		$("#modifyReply").css(
		"visibility","hidden");
	});
});
</script>
</head>
${vo.rno}<br> <!-- 댓글 번호 -->
<textarea rows="3" cols="40" id="detail_replytext">
${vo.replytext}
</textarea><br>
<c:if test="${sessionScope.user.user_id == vo.replyer }">
<button id="btnReplyUpdate" type="button">수정</button>
<button id="btnReplyDelete" type="button">삭제</button>
</c:if>
<button id="btnReplyClose" type="button">닫기</button>

