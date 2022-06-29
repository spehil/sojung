<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Language" comtent="ko">
<title>데이터 가져오기</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
${result.tempVal}

<div class="box-btn">
<c:url var="uptUrl" value="/temp2/tempRegist.do">
	<c:param name="tempId" value="${result.tempId}"/>
</c:url>
<a href= "${uptUrl}">수정</a>

<c:url var="delUrl" value="/temp2/delete.do">
	<c:param name="tempId" value="${result.tempId}"/>
</c:url>
<a href= "${delUrl}" class="btn-del">삭제</a>
<a href= /temp2/selectList.do>목록</a>

</div>

<script>
$(document).ready(function(){
	$(".btn-del").click(function(){
		if(!confirm("삭제하시겠습니까?")){
			return false;
		}
	});
});

</script>
</body>

</html>