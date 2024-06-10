<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Management</title>
<link href="${path}/resources/css/customerPage.css" rel="stylesheet">
<script>
function validateSearch() {
    var keyword = document.getElementById("keywordInput").value.trim();
    if (keyword === "") {
        document.getElementById("errorMessage").style.display = "inline";
    } else {
        document.getElementById("errorMessage").style.display = "none";
        document.getElementById("searchForm").submit();
    }
}

        function showCustomerDetail(cust_sn) {
            window.location.href = "/customer/detail/" + cust_sn;
        }

        function confirmDelete(cust_sn) {
            if (confirm("정말로 삭제하시겠습니까? 고객정보는 삭제 후 복구가 불가합니다.")) {
                window.location.href = "/customer/delete/" + cust_sn;
            }
        }
    </script>
</head>
<body>
	<div class="topBar">
		<span class="head">고객정보 관리</span> <span><a href="#"
			class="close-button">X</a></span>
	</div>
	<div class="container">
		<div class="section">
			<div class="select_customer">
				<h4 class="font1">고객성명 :</h4>
				<br>
				<form id="searchForm"
					action="<c:url value='/customer/searchCustomerConfirm'></c:url>"
					name="search_customer_confirm" method="get">
					<input id="keywordInput" type="text" name="keyword" value=""
						class="inputtext"><br> <br>
					<button type="button" class="search_btn" onclick="validateSearch()">조건검색</button>
					<span id="errorMessage" style="color: red; display: none;">검색어를
						입력하세요.</span>
				</form>

				<br>

				<form action="<c:url value='/customer/allCustomers'></c:url>"
					name="search_all_customers" method="get" id="fullSearchForm">
					<button type="submit" class="search_btn">전체검색</button>
				</form>


				<c:if test="${not empty customerList}">
					<h4>검색 결과</h4>
					<!-- 각 고객에 대한 라디오 버튼 생성 -->
					<form id="customerRadioForm">
						<div class="customerList">
							<c:forEach var="customer" items="${customerList}">
								<input type="radio" id="customer${customer.cust_sn}"
									name="customerRadio" value="${customer.cust_sn}">
								<label for="customer${customer.cust_sn}">${customer.cust_nm}</label>
								<br>
							</c:forEach>
						</div>
					</form>
				</c:if>
			</div>
		</div>
		<div class="section">
			<div class="details">
				<h4>고객 상세 정보</h4>
				<c:if test="${not empty message}">
					<div style="color: green; font-weight: bold;">${message}</div>
				</c:if>
				<br>
				<form action="<c:url value='/customer/updateCustomerInfo'></c:url>"
					method="post">
					<c:if test="${not empty customer}">
						<div class="details-text">
							<input type="hidden" name="cust_sn" value="${customer.cust_sn}">
							<label for="frst_reg_dt" class="details-text-col">작성일자:</label> <input
								type="text" id="frst_reg_dt" name="frst_reg_dt"
								value="${customer.frst_reg_dt}" readonly disabled>
						</div>
						<div class="details-text">
							<label for="cust_nm" class="details-text-col">이름:</label> <input
								type="text" id="cust_nm" name="cust_nm"
								value="${customer.cust_nm}">
						</div>
						<div class="details-text">
							<label for="pridtf_no" class="details-text-col">주민번호:</label> <input
								type="text" id="pridtf_no" name="pridtf_no"
								value="${customer.pridtf_no}">
						</div>
						<div class="details-text">
							<label for="eml_addr" class="details-text-col">이메일:</label> <input
								type="text" id="eml_addr" name="eml_addr"
								value="${customer.eml_addr}">
						</div>
						<div class="details-text">
							<label for="home_telno" class="details-text-col">전화번호:</label> <input
								type="text" id="home_telno" name="home_telno"
								value="${customer.home_telno}">
						</div>
						<div class="details-text">
							<label for="mbl_telno" class="details-text-col">핸드폰 번호:</label> <input
								type="text" id="mbl_telno" name="mbl_telno"
								value="${customer.mbl_telno}">
						</div>
						<div class="details-text">
							<label for="cr_nm" class="details-text-col">직업:</label> <input
								type="text" id="cr_nm" name="cr_nm" value="${customer.cr_nm}">
						</div>
						<div class="details-text">
							<label for="road_nm_addr" class="details-text-col">주소:</label> <input
								type="text" id="road_nm_addr" name="road_nm_addr"
								value="${customer.road_nm_addr}">
						</div>
						<input type="submit" value="사용자 정보 변경">
						<br>
					</c:if>
				</form>
				<br>
				<div>
					<form action="<c:url value='/customer/updatePicInfo'></c:url>"
						method="post" id="updatePicForm">
						<c:if test="${not empty customer}">
							<input type="hidden" name="cust_sn" value="${customer.cust_sn}">
							<input type="hidden" name="cust_sn" value="${customer.pic_sn_vl}">
							<!-- 기존 관리자 정보 -->
							<div class="details-text">
								<label for="pic_name" class="details-text-col"> 관리자 이름:</label>
								<div class="input-with-button">
									<input type="text" id="pic_name" name="pic_name"
										value="${customer.pic_name}">
									<button type="submit">버튼</button>
								</div>
							</div>
							<div class="details-text">
								<label for="tkcg_dept_nm" class="details-text-col">부서:</label> <input
									type="text" id="tkcg_dept_nm" name="tkcg_dept_nm"
									value="${customer.tkcg_dept_nm}">
							</div>
							<div class="details-text">
								<label for="pic_position" class="details-text-col">직위:</label> <input
									type="text" id="pic_position" name="pic_position"
									value="${customer.pic_position}">
							</div>
							<div class="details-text">
								<label for="pic_phone" class="details-text-col">연락처:</label> <input
									type="text" id="pic_phone" name="pic_phone"
									value="${customer.pic_phone}">
							</div>
						</c:if>
					</form>
				</div>
			</div>
		</div>
		<div class="section">
			<h4 class="font1">상담 내역 :</h4>
			<div class="consult">
				<c:choose>
					<c:when test="${not empty consultList}">
						<ul>
							<c:forEach var="consultation" items="${consultList}">
								<li>${consultation.cons_date}</li>
								<li>${consultation.consultation}</li>
							</c:forEach>
						</ul>
					</c:when>
					<c:otherwise>
						<!-- 상담 내역이 없는 경우 -->
						<p>상담 내역이 없습니다.</p>
					</c:otherwise>
				</c:choose>
			</div>
			<br>
			<div class="buttons">
				<button class="btn_blue">등록</button>
				<button class="btn_blue">변경</button>
				<button class="btn_blue"
					onclick="confirmDelete(${customer.cust_sn})">삭제</button>
				<button class="btn_blue">신규</button>
				<br> <br>
				<button class="btn_yellow">고객조회</button>
				<button class="nones"></button>
				<button class="nones"></button>
				<button class="btn_blue">종료</button>
			</div>
		</div>
	</div>


</body>
</html>
