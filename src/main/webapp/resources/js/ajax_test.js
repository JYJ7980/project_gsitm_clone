$(document).ready(function() {
	var allData;
//	const contextPath = sessionStorage.getItem("contextpath");
//	console.log(contextPath);
$("#search").on("click", function(){
	var keyword = $("#pic_name").val().trim();
	if (keyword == "") {
	      alert('아이디를 입력하세요');
	} else {
	    	var keyname = "keyword";
	        var obj = {};
	        obj[keyname] = keyword;
	        $.ajax({
	        	url : `/homework/searchAjax`,
	        	type : "post",
	            data : JSON
	                .stringify(obj),
	            dataType : "json",
	            contentType : "application/json",
	            success : function(picDto) {
	                $("#result").empty();
	                var str = "<tr><td>부   서 : <input type='text' name='tkcg_dept_nm' value='" + picDto[0].tkcg_dept_nm +"'></td></tr>" +
	                "<tr><td>직   위 : <input type='text' name='pic_position' value='" + picDto[0].pic_position + "'></td></tr>" +
	                "<tr><td>연락처 : <input type='text' name='pic_phone' value='" + picDto[0].pic_phone + "'></td></tr>";
	                console.log(str);
	                $("#result").append(str);
	        },
	        	error : function(
	                errorThrown) {
	              alert(errorThrown.statusText);
	        	}
	        });
	    }
	});
});