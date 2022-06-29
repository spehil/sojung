<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script>
 $(document).ready(function(){
	 //파일 다운로드
	 $(".file-down").click(function(){
		 var href = $(this).attr("href");
		 
		 window.open(href);
		 return false;
	 });
 
	 //파일삭제
	$(".file-del").click(function(){
		var atchFileId = $(this).data("id"),
			fileSn = $(this).data("sn");
		
		forms = document.getElementsByTagName("form");
		for (var i = 0; i < forms.length; i++) {
			if (typeof(forms[i].atchFileId) != "undefined") {
				form = forms[i];
			}
		}
		
		form.atchFileId.value = atchFileId;
		form.fileSn.value = fileSn;
		form.action = "<c:url value='/cmm/fms/deleteFileInfs.do'/>";
		form.submit();
		
		return false;
	});
 });
</script>

<input type="hidden" name="atchFileId" value="${atchFileId}">
<input type="hidden" name="fileSn" >
<input type="hidden" name="filelistCnt" value="${fileListCnt}">
<ul class= "file-list">
	<c:forEach var="fileVO" items="${fileList}" varStatus="status">
		<li>
			<c:choose>
				<c:when test="${updateFlag=='Y'}">
					<i class= "ico-file-down"></i>
					<span><c:out value="${fileVO.orignlFileNm}"/></span>
					<span><c:out value="${fileVO.fileMg}"/> byte</span>
					<span class='del'>
			<a href="#" class="file-del" data-id="${fileVO.atchFileId}" data-sn="${fileVO.fileSn}">
			<img src="/asset/BBSTMP_0000000000001/images/btn_sdelete.gif" alt="첨부된 파일 삭제">
			</a>
				</span>
			</c:when>
			<c:otherwise>
			<c:url var="download" value="/cmm/fms/FileDown.do">
				<c:param name="atchFileId" value="${fileVO.atchFileId}"/>
				<c:param name="fileSn" value="${fileVO.fileSn}"/>
			</c:url>
			<a href="${download}" class="file-down">
			<i class="ico-file-down"></i>	
			<span><c:out value="${fileVO.orignlFileNm}"/></span>
				<span>(<c:out value="${fileVO.fileMg}"/> byte)</span>
				</a>
			</c:otherwise>
		</c:choose>
	</li>
	</c:forEach>
</ul>
<c:if test="${fn:length(fileList) ==0 }"></c:if>