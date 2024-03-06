<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <body>
    <!-- Page Header Start -->
    <div class="container-fluid productpurchase-header py-5">
      <div class="container py-5">
        <h1 class="display-2 text-dark mb-4 animated slideInDown">제품구매</h1>
        <nav aria-label="breadcrumb">검색바 필요하면 여기다 넣으면 됩니다.</nav>
      </div>
    </div>
    <!-- Page Header End -->

    <!-- 제품 구매 페이지 START -->
    <div class="container-fluid fruite">
      <div class="container">
        <div class="row g-4">
          <div class="col-lg-12">
            <div class="row g-4">
              <!-- 키워드로 검색 START -->
              <div class="col-lg-3">
                <div class="row g-4">
                  <div class="col-lg-12">
                    <div class="mb-3">
                      <br />
                      <h5>성별 효능 별</h5>
                      <ul class="filterList">
                        <c:forEach var="keyword" items="${checkboxList }">
                          <c:if test="${keyword.keywordId == 20 or keyword.keywordId == 21}">
                            <li class="filterItem">
                              <div class="filterName">
                                <input type="checkbox" name="effectId" id="keyword${keyword.keywordId}" value="${keyword.keywordId}" />
                                <label for="keyword${keyword.keywordId}" class="keywordName">&nbsp;${keyword.keywordName}</label>
                              </div>
                            </li>
                          </c:if>
                        </c:forEach>
                      </ul>
                      <br />
                      <h5>효능 별</h5>
                      <ul class="filterList">
                        <c:forEach var="keyword" items="${checkboxList }">
                          <c:if test="${keyword.keywordId <= 19 }">
                            <li class="filterItem">
                              <div class="filterName">
                                <input type="checkbox" name="effectId" id="keyword${keyword.keywordId}" value="${keyword.keywordId}" />
                                <label for="keyword${keyword.keywordId}" class="keywordName">&nbsp;${keyword.keywordName}</label>
                              </div>
                            </li>
                          </c:if>
                        </c:forEach>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <!-- 키워드로 검색 END -->
              <!-- 제품 나열 -->
              <div class="col-lg-9">
                <div id="productsContainer" class="row g-4 justify-content-center">
                  <!-- 제품 1개 카드 -->
                  <c:forEach var="product" items="${productlist }">
                    <div class="col-md-6 col-lg-6 col-xl-4">
                      <div class="rounded position-relative" onclick="location.href='productdetailpage'" style="cursor: pointer">
                        <div>
                          <img src="${product.filepath1}" class="img-fluid w-100 rounded-top" alt="" />
                        </div>
                        <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                          <h4>${product.productName }</h4>
                          <p>${product.productDescription1 }</p>
                          <div>
                            <c:forEach var="keyword" items="${product.keywordName}">
                              <a class="keywordName">${keyword}</a>
                            </c:forEach>
                          </div>
                          <br />
                          <div class="d-flex justify-content-between flex-lg-wrap">
                            <p class="text-dark fs-5 fw-bold mb-0">
                              <fmt:formatNumber value="${product.productPrice }" pattern="###,###,###" />
                              원
                            </p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </c:forEach>

                  <!-- pagenation 부분 -->
                  <div class="container productpurchase-pagination">
                    <ul class="pagination justify-content-center">
                      <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                      <!-- 첫페이지에선 없음/시작인덱스 -10 -->
                      <li class="page-item"><a class="page-link" href="#"> 1</a></li>
                      <li class="page-item"><a class="page-link" href="#"> 2</a></li>
                      <li class="page-item"><a class="page-link" href="#"> 3</a></li>
                      <li class="page-item"><a class="page-link" href="#"> 4</a></li>
                      <li class="page-item"><a class="page-link" href="#"> 5</a></li>
                      <li class="page-item"><a class="page-link" href="#">Next</a></li>
                      <!-- 마지막인덱스 +10 /마지막 인덱스에서는 없음 -->
                    </ul>
                  </div>
                  <c:if test="${author == 'ADMIN'}">
                    <div class="productAddBtn">
                      <a href="productaddpage">
                        <button type="button" class="btn btn-primary border-0 rounded-pill px-4 py-3">제품추가</button>
                      </a>
                    </div>
                  </c:if>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- JAVASCRIPT START -->
    <script type="text/javascript">
      // checkbox의 값을 AJAX로 서버단에 넘기기 위한 작업 시작!
      document.addEventListener('DOMContentLoaded', function () {
        document.querySelectorAll("input[type='checkbox'][name='effectId']").forEach(function (checkbox) {
          checkbox.addEventListener('change', function () {
            var selectedKeywords = [];
            document.querySelectorAll("input[type='checkbox'][name='effectId']:checked").forEach(function (checkedBox) {
              selectedKeywords.push(checkedBox.value);
            });

            var xhr = new XMLHttpRequest();
            var url = selectedKeywords.length > 0 ? 'filterproducts?keywords=' + selectedKeywords.join(',') : 'filterproducts';
            xhr.open('GET', url, true);

            xhr.onload = function () {
              if (xhr.status == 200) {
                var products = JSON.parse(xhr.responseText);
                console.log(products);
                updateProductList(products);
              }
            };
            xhr.send();
          });
        });
      });

      function updateProductList(products) {
        var productListHtml = '';
        products.forEach(function (product) {
          // 서버로부터 받은 각 제품 정보를 사용하여 HTML 마크업 생성
          productListHtml +=
            '<div class="col-md-6 col-lg-6 col-xl-4">' +
            '<div class="rounded position-relative" onclick="location.href=\'productdetailpage\'" style="cursor: pointer">' +
            '<div>' +
            '<img src="' +
            product.filepath1 +
            '" class="img-fluid w-100 rounded-top" alt="" />' +
            '</div>' +
            '<div class="p-4 border border-secondary border-top-0 rounded-bottom">' +
            '<h4>' +
            product.productName +
            '</h4>' +
            '<p>' +
            product.productDescription1 +
            '</p>' +
            // 키워드 처리 등 추가 정보
            '<div class="d-flex justify-content-between flex-lg-wrap">' +
            '<p class="text-dark fs-5 fw-bold mb-0">' +
            product.productPrice +
            '원' +
            '</p>' +
            '</div>' +
            '</div>' +
            '</div>' +
            '</div>';
        });
        document.getElementById('productsContainer').innerHTML = productListHtml;
      }
    </script>
    <!-- 제품 구매 페이지 END -->
  </body>
</html>
