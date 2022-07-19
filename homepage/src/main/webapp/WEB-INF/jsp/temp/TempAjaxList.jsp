<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<table>
	<thead>
		<tr>
			<th>TEMP_VAL</th>
			<th>관리</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="result" items="${resultList }"
		<tr>
			<td><c:out value="${result.tempVal}"/><td>
			<td>
				<c:url var=""
		
		</tbody>
			</table>
<html>
<head>
<meta http-equiv="Content-Language" content="ko">
<title>AJAX테스트</title>
</head>
<body>
<form id="frm" action="/temp/insertAjax.do" method="post" name="tempVO">
	<label for="tempVal">값정보 : </label>
	<input type="text" id="tempVal" name="tempVal" value="${result.tempVal}"/>
	<button id="btn-submit" type="button">등록</button>
	
</form>

<div id="ajax-box">
	<c:import url="/temp/ajaxList.do" charEncoding="utf-8">
	</c:import>
</div>

<script>
	$(document).ready(function(){
		$("#btn-submit").click(function(){
			var tempVal = $("#tempVal").val();
			
			if(tempVal){
				$.ajax({
					url : "temp/ajaxList.do",
					type :"post",
					data : {"tempVal" : tempVal},
					dataType : "html",
					success : function(data);
						
					},error : function(){
						alert("error : list");
					}
				});
		}else{
			alert("내용을 입력해주세요.");
		}
			
		});
	});
</script>
</body>
</html>
	
					
				



