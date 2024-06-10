<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"
	integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
	crossorigin="anonymous"></script>
<script src="${path}/resources/js/ajax_test.js"></script>
</head>
<body>
<div>${pageContext.request.contextPath }</div>
	<table>
		<tr>	
			<td>관리담당자 : <input type="text" name="pic_name" id="pic_name"></td>	
		</tr>
		<tr>
			<td><input type="button" id="search" name="search" value="검색"><br></td>
		</tr>
		<tr>
		<div id="result"></div>
		</tr>
			
			
 	</table>


</body>
</html>