<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
</head>
<body>
	<!-- Product section-->
	<section class="bottom-padding boundary-border">
		<div class="container px-4 px-lg-5 my-5">
			<div class="row gx-4 gx-lg-5 align-items-center">
				<div class="product-detail-image">
					<img class="product-image-radius card-img-top mb-5 mb-md-0"
						src="${detail.filepath1 }"
						alt="..." />
				</div>
				<div class="product-detail-header">
					<div class="d-flex small mb-1 keywordHeader">
                              <c:forEach var="keyword" items="${detail.keywordName}">
                                <a class="keywordName">${keyword}</a>
                              </c:forEach>
					</div>
					<br />
					<h1 class="sub-product-name">${detail.productName }</h1>
					<ul class="product-discription">
						<li class="product-discription-list"><i
							class="fa-solid fa-check">&nbsp;&nbsp;</i>${detail.productDescription1 }</li>
						<li class="product-discription-list"><i
							class="fa-solid fa-check">&nbsp;&nbsp;</i>${detail.productDescription2 }</li>
						<li class="product-discription-list"><i
							class="fa-solid fa-check">&nbsp;&nbsp;</i>${detail.productDescription3 }</li>
						<li class="product-discription-list"><i
							class="fa-solid fa-check">&nbsp;&nbsp;</i>${detail.productDescription4 }</li>
						<li class="product-discription-list"><i
							class="fa-solid fa-check">&nbsp;&nbsp;</i>${detail.productDescription5 }</li>
					</ul>
					<div class="fs-5 mb-5">
						<span><fmt:formatNumber value="${detail.productPrice }"
								pattern="###,###,###" /> 원</span>
					</div>
					<div class="d-flex">
						<input class="form-control text-center me-3" id="inputQuantity"
							type="num" value="1" style="max-width: 3rem" />
						<button
							class="detail-buy-button btn btn-outline-dark flex-shrink-0"
							type="button" onclick="location.href='order'">
							<i class="fa-regular fa-credit-card me-1"></i> 구매하기
						</button>
						<button class="btn btn-outline-dark flex-shrink-0" type="button"
							onclick="location.href='cart'">
							<i class="bi-cart-fill me-1"></i> 장바구니 담기
						</button>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 직원들 후기 START -->
	<section class="bottom-padding">
		<div class="container px-4 px-lg-5 my-5">
		<h2>Pi1ling 직원들이 체험한 후기</h2>
		<br>
		<div class="owl-carousel testimonial-carousel wow fadeInUp"
			data-wow-delay=".5s">
			<div class="testimonial-item">
				<div class="testimonial-content rounded mb-4 p-4">
					<p class="fs-5 m-0">
					<h4>와! 이 영양제 실화냐? 가슴이 웅장해진다.</h4>
					</p>
				</div>
				<div class="d-flex align-items-center mb-4"
					style="padding: 0 0 0 25px">
					<div class="position-relative">
						<img src="resources/pilling/img/productimage/employeeimg01.jpg"
							class="img-fluid rounded-circle py-2" alt="" />
						<div class="position-absolute" style="top: 33px; left: -25px">
							<i class="fa fa-quote-left rounded-pill bg-primary text-dark p-3"></i>
						</div>
					</div>
					<div class="ms-3">
						<h4 class="mb-0">박현웅(쌍둥이) 사원</h4>
						<p class="mb-1">개발자팀</p>
						<div class="d-flex">
							<small class="fas fa-star text-primary me-1"></small> <small
								class="fas fa-star text-primary me-1"></small> <small
								class="fas fa-star text-primary me-1"></small> <small
								class="fas fa-star text-primary me-1"></small> <small
								class="fas fa-star text-primary me-1"></small>
						</div>
					</div>
				</div>
			</div>
			<div class="testimonial-item">
				<div class="testimonial-content rounded mb-4 p-4">
					<p class="fs-5 m-0">
					<h3>따봉</h3>
					</p>
				</div>
				<div class="d-flex align-items-center mb-4"
					style="padding: 0 0 0 25px">
					<div class="position-relative">
						<img src="resources/pilling/img/productimage/employeeimg02.jpg"
							class="img-fluid rounded-circle py-2" alt="" />
						<div class="position-absolute" style="top: 33px; left: -25px">
							<i class="fa fa-quote-left rounded-pill bg-primary text-dark p-3"></i>
						</div>
					</div>
					<div class="ms-3">
						<h4 class="mb-0">손지은 사원</h4>
						<p class="mb-1">개발자팀</p>
						<div class="d-flex">
							<small class="fas fa-star text-primary me-1"></small> <small
								class="fas fa-star text-primary me-1"></small> <small
								class="fas fa-star text-primary me-1"></small> <small
								class="fas fa-star text-primary me-1"></small> <small
								class="fas fa-star text-primary me-1"></small>
						</div>
					</div>
				</div>
			</div>
			<div class="testimonial-item">
				<div class="testimonial-content rounded mb-4 p-4">
					<p class="fs-5 m-0">
					<h4>이 영양제 먹고, 새 인생을 살고있어요! 마약같아요!</h4>
					</p>
				</div>
				<div class="d-flex align-items-center mb-4"
					style="padding: 0 0 0 25px">
					<div class="position-relative">
						<img src="resources/pilling/img/productimage/employeeimg01.jpg"
							class="img-fluid rounded-circle py-2" alt="" />
						<div class="position-absolute" style="top: 33px; left: -25px">
							<i class="fa fa-quote-left rounded-pill bg-primary text-dark p-3"></i>
						</div>
					</div>
					<div class="ms-3">
						<h4 class="mb-0">박현우 사원</h4>
						<p class="mb-1">개발자팀</p>
						<div class="d-flex">
							<small class="fas fa-star text-primary me-1"></small> <small
								class="fas fa-star text-primary me-1"></small> <small
								class="fas fa-star text-primary me-1"></small> <small
								class="fas fa-star text-primary me-1"></small> <small
								class="fas fa-star text-primary me-1"></small>
						</div>
					</div>
				</div>
			</div>
			<div class="testimonial-item">
				<div class="testimonial-content rounded mb-4 p-4">
					<p class="fs-5 m-0">
					<h3>그저 그런 영양제가 아니라, 퓌1일링 영양제입니다.</h3>
					</p>
				</div>
				<div class="d-flex align-items-center mb-4"
					style="padding: 0 0 0 25px">
					<div class="position-relative">
						<img src="resources/pilling/img/productimage/employeeimg03.jpg"
							class="img-fluid rounded-circle py-2" alt="" />
						<div class="position-absolute" style="top: 33px; left: -25px">
							<i class="fa fa-quote-left rounded-pill bg-primary text-dark p-3"></i>
						</div>
					</div>
					<div class="ms-3">
						<h4 class="mb-0">이효미 팀장</h4>
						<p class="mb-1">개발자팀</p>
						<div class="d-flex">
							<small class="fas fa-star text-primary me-1"></small> <small
								class="fas fa-star text-primary me-1"></small> <small
								class="fas fa-star text-primary me-1"></small> <small
								class="fas fa-star text-primary me-1"></small> <small
								class="fas fa-star text-primary me-1"></small>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
	</section>
	<!-- 직원들 후기 END -->

	<!-- 상세 콘텐츠 START -->
	<section class="bottom-padding boundary-border">
		<div class="container px-4 px-lg-5 my-5">
			<div class="row gx-4 gx-lg-5 align-items-center">
				<div class="product-detail-header">
					<div>
						<h3>복용법 및 추천 섭취 시간</h3>
						<table class="taking-method">
							<tr class="taking-method">
								<td width="20%" align="center"><img
									src="https://cdn.pillyze.io/icons/intake_time/breakfast.png"
									alt="아침 그림"></td>
								<td>${detail.takingMethod }</td>
								<td width="20%">${detail.doseTime }</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="product-detail-image">
					<img class="product-image-radius card-img-top mb-5 mb-md-0"
						src="${detail.filepath2 }"
						alt="..." />
				</div>
			</div>
		</div>
	</section>
	<!-- 상세 콘텐츠 END -->
	<!-- 제품 후기 페이지 START -->
	<section class="bottom-padding">
		<div class="container px-4 px-lg-5 my-5 bg-light rounded p-4">
			<h4 class="mb-4">제품 후기</h4>
			<div class="p-4 bg-white rounded mb-4">
				<div class="row g-4">
					<div class="col-3">
						<H4>여기 사진</H4>
					</div>
					<div class="col-9">
						<div class="d-flex justify-content-between">
							<h5>James Boreego</h5>
						</div>
						<small class="text-body d-block mb-3"><i
							class="fas fa-calendar-alt me-1"></i> Dec 9, 2024</small>
						<p class="mb-0">Lorem Ipsum is simply dummy text of the
							printing and typesetting industry. Lorem Ipsum has been the
							industry's standard dummy Lorem Ipsum has been the industry's
							standard dummy type and scrambled it to make a type specimen
							book. It has survived not only five centuries, but also the leap
							into electronic</p>
					</div>
				</div>
			</div>
			<div class="p-4 bg-white rounded mb-0">
				<div class="row g-4">
					<div class="col-3">
						<H4>여기 사진</H4>
					</div>
					<div class="col-9">
						<div class="d-flex justify-content-between">
							<h5>James Boreego</h5>
						</div>
						<small class="text-body d-block mb-3"><i
							class="fas fa-calendar-alt me-1"></i> Dec 9, 2024</small>
						<p class="mb-0">Lorem Ipsum is simply dummy text of the
							printing and typesetting industry. Lorem Ipsum has been the
							industry's standard dummy Lorem Ipsum has been the industry's
							standard dummy type and scrambled it to make a type specimen
							book. It has survived not only five centuries, but also the leap
							into electronic</p>
					</div>
				</div>
			</div>
		</div>
		<div class="container px-4 px-lg-5 my-5 bg-light rounded p-4">
			<h4 class="mb-4">Leave A Comment</h4>
			<form action="#">
				<div class="row g-4">
					<div class="col-lg-6">
						<input type="text" class="form-control py-3"
							placeholder="Full Name">
					</div>
					<div class="col-lg-6">
						<input type="email" class="form-control py-3"
							placeholder="Email Address">
					</div>
					<div class="col-12">
						<textarea class="form-control" name="textarea" id="" cols="30"
							rows="7" placeholder="Write Your Comment Here"></textarea>
					</div>
					<div class="col-12">
						<button class="form-control btn py-3" type="button">작성완료</button>
					</div>
				</div>
			</form>
		</div>
	</section>

	<!-- 제품 후기 END  -->
	
	<!-- 장바구니에 제품 번호를 넘겨줄 히든폼 
  <div>
    <form id="cartform" action="addcart" method="post">
    	<input type="hidden" id="productId" name="productId">
    </form>
  </div>
  -->
	<!-- 장바구니에 제품 번호를 넘겨줄 함수
  <script>
  	function addCart(id){
  		document.getElementById("productId").value=id;
  		cartform.submit();
  	}
  </script>
  -->
</body>
</html>
