<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의 조회</title>
</head>
<style>
td {
	vertical-align: middle;
}

.div-center {
	margin: auto;
}

.btn-center {
	margin: auto;
	text-align: center;
}

.td-r {
	vertical-align: top;
	text-align: right;
}
</style>
<body>
	<div class="container-xxl py-5">
		<!-- 문의사항 조회 START -->
		<div class="card-body col-12 div-center pl-5 pr-5">
			<div class="row g-5">
				<h3 style="vertical-align: bottom;" class="px-2">${question.questionTitle }</h3>
				<div style="height: 0.3rem; background-color: #fdf001;"
					class="mb-0 mt-0"></div>
				<table class="table mb-0 mt-0">
					<tbody>
						<tr>
							<td colspan="2" width="500"><small>작성자 <a>${question.userId }</a></small></td>
							<td style="text-align: right;"><small>조회수 <a>${question.questionHit }</a></small></td>
						</tr>
						<tr>
							<td colspan="3"><small>작성일 ${question.questionDate }</small></td>
						</tr>
						<tr>
							<td colspan="3"><div class="mt-3 mb-5">${question.questionContent }</div></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!-- 문의사항 조회 END -->

		<!-- 버튼 START -->
		<!-- 목록: 모든 사용자에게 보인다. -->
		<!-- 수정: 글 작성자에게만 보인다. -->
		<!-- 삭제: 글 작성자, ADMIN에게만 보인다. -->
		<div class="btn-center mt-2 mb-4">
			<button type="button"
				class="btn btn-primary border-0 rounded-pill px-4 py-3"
				onclick="location.href='customerservice'">목록</button>
			<!-- 글 작성자와 로그인한 작성자가 일치할 경우 -->
			<c:if test="${question.userId eq userId}"> 
	            	&nbsp;&nbsp;
			<button type="button"
					class="btn btn-primary border-0 rounded-pill px-4 py-3"
					onclick="questionEditForm()">수정</button>
			</c:if>
			<!-- 글 작성자와 로그인한 작성자가 일치할 경우 or ADMIN 권한을 가질 경우 -->
			<c:if test="${(author eq 'ADMIN') or (question.userId eq userId)}"> 
	            	&nbsp;&nbsp;
			<button type="button"
					class="btn btn-primary border-0 rounded-pill px-4 py-3"
					onclick="questionDelete()">삭제</button>
			</c:if>
		</div>
		<!-- 버튼 END -->
		<!-- 문의사항 댓글 START -->
		<c:if test="${not empty questionreply}">
			<c:forEach items="${questionreply}" var="qr">
				<div>
					<table
						style="width: 100%; border-collapse: separate; border-spacing: 10px 10px;"
						class="mb-0">
						<tr>
							<td style="vertical-align: top; width: 7%;" class="pt-1">
								<div class="rounded py-2 px-3"
									style="background-color: #3faf08; color: white;">Pi1ling</div>
							</td>
							<td class="px-2"><div style="width: 100%;" class="mb-1">${qr.questionreplyContent }</div>
								<div align="right">
									<!-- ADMIN 권한을 가질 경우에만 답변 삭제가 보이게 한다.-->
									<c:if test="${author eq 'ADMIN'}">
										<form action="questionreplydelete" method="post">
											<input type="hidden" name="questionreplyId" value="${qr.questionreplyId }">
											<input type="hidden" name="questionId" value=${question.questionId }>
											<small><button type="submit" style="background-color:white; border: none;">삭제</button></small>
										</form>
									</c:if>
									<small>${qr.questionreplyDate }</small>
								</div></td>
						</tr>
					</table>
				</div>
			</c:forEach>
		</c:if>
		<!-- 문의사항 댓글 END -->

		<!-- 문의사항 댓글 작성 STRAT -->
		<!-- AMDIN 권한을 가진 사람에게만 보인다. -->
		<c:if test="${author eq 'ADMIN'}">
			<div class="bg-light rounded p-4 my-4">
				<h4 class="mb-4">Leave A Reply</h4>
				<form>
					<div class="row g-4">
						<div class="col-12">
							<textarea class="form-control" name="qrContent" id="qrContent"
								cols="30" rows="4" placeholder="답변 내용을 입력해주세요."
								required="required"></textarea>
						</div>
						<div class="col-12">
							<button class="form-control btn-primary border-0 py-3"
								type="button" onclick=questionreplyInsert()>작성완료</button>
						</div>
					</div>
				</form>
			</div>
		</c:if>
		<!-- 댓글 작성 END -->

		<!-- 문의사항id를 수정, 삭제로 보내줄 히든폼 -->
		<div>
			<form id="frm" method="post">
				<input type="hidden" id="questionId" name="questionId"
					value=${question.questionId }> <input type="hidden"
					id="questionreplyContent" name="questionreplyContent">
			</form>
		</div>
		<script type="text/javascript">
			function questionEditForm() {
				frm.action = "questioneditform";
				frm.submit();
			}
			function questionDelete() {
				frm.action = "questiondelete";
				frm.submit();
			}
			function questionreplyInsert() {
				frm.action = "questionreplyinsert";
				document.getElementById("questionreplyContent").value = document.getElementById("qrContent").value;
				frm.submit();
			}
		</script>
	</div>
</body>
</html>