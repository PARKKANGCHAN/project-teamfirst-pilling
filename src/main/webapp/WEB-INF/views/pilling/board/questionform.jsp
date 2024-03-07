<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의 작성</title>
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
</style>
<body>
	<div class="container-xxl py-5">
		<!-- 문의사항 조회 START -->
		<form>
			<div class="card-body col-12 div-center pl-5 pr-5">
				<div class="row g-5">
					<h3 style="vertical-align: bottom;" class="px-2">
						<input type="text" size="89%" placeholder="문의 제목을 입력해주세요."
							required="required">
					</h3>
					<div style="height: 0.3rem; background-color: #fdf001;"
						class="mb-0 mt-0"></div>
					<table class="table mb-0 mt-0">
						<tbody>
							<tr>
								<td colspan="2" width="500"><small>작성자 <a>유저이름</a></small></td>
								<td style="text-align: right;"><small>조회수 <a>212</a></small></td>
							</tr>
							<tr>
								<td colspan="3"><small>작성일 22/11/11</small></td>
							</tr>
							<tr>
								<td colspan="3"><div class="mt-1 mb-1">
										<textarea rows="10" cols="160" placeholder="내용을 입력해주세요."
											required="required"></textarea>
									</div></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!-- 문의사항 조회 END -->

			<!-- 버튼 START -->
			<div class="btn-center mt-2">
				<button type="reset"
					class="btn btn-primary border-0 rounded-pill px-4 py-3" onclick="location.href='customerservice'">취소</button>
				&nbsp;&nbsp;
				<button type="submit"
					class="btn btn-primary border-0 rounded-pill px-4 py-3">작성</button>
			</div>
			<!-- 버튼 END -->
		</form>
	</div>
</body>
</html>