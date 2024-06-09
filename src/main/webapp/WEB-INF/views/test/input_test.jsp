<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"
	integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
	crossorigin="anonymous"></script>
<!-- <script> -->
<!-- var allData; -->
<!-- $("request").click(function(){ -->
<!-- 	var params = { -->
<!-- 			pic_name : $("#pic_name").val(), -->
<!-- 			tkcg_dept_nm : $("tkcg_dept_nm").val(), -->
<!-- 			pic_position : $("pic_position").val(), -->
<!-- 			pic_phone : $("pic_phone").val() -->
<!-- 	} -->
	
<!-- }) -->
<!-- </script> -->
	
</head>
<body>
<div class="content">
	<form action="<c:url value='/newCustConfirm'></c:url>" name="new_cust_confirm" method="post">
		<div class="cust">
			작성일자 : <input type="text" value="${serverDate}" disabled readonly><br>
			고객명 : <input type="text" name=cust_nm><br>
			주민번호 : <input type="text" name=pridtf_no><br>
			E-mail : <input type="text" name=eml_addr><br>
			전화번호 : <input type="text" name=home_telno><br>
			핸드폰번호 : <input type="text" name=mbl_telno><br>
			직   업 : <input type="text" name=cr_nm><br>
			주   소 : <input type="text" name=road_nm_addr><br>
		</div>
		<div class="pic">
			관리담당자 : <input type="text" name="pic_name" id="pic_name"><input type="button" id="request" value="검색"><br>
			부   서 : <input type="text" name="tkcg_dept_nm" id="tkcg_dept_nm"><br>
			직   위 : <input type="text" name="pic_position" id="pic_position"><br>
			연락처 : <input type="text" name="pic_phone" id="pic_phone"><br>
		</div>
		<input type="submit" value="등록">
		<input type="reset" value="신규">
 	</form>
</div>

</body>
</html>