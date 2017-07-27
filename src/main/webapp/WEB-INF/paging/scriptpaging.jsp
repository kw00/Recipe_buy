<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>paging</title>
</head>
<body>
<!--
	AJAX로 페이징 하는 곳 action 태그의 href만 다르다.
	loadComments 가 호출될 때 AJAX로 호출되는 페이지
-->
<c:url var="action" value="${param.action}"/>
	<!--1부터 10 까지 있는 페이지의 페이징-->
	<c:if test="${param.prev}">
	<a href = "javascript:${action}(${param.begin-1})">prev</a>
	</c:if>
	<c:forEach begin="${param.begin}" end="${param.end}" step="1" var="index">
		<c:choose>
		<c:when test="${param.page==index}">
			${index}
		</c:when>
		<c:otherwise>
			<a href="javascript:${action}(${index})">${index}</a>
		</c:otherwise>
		 </c:choose>
	</c:forEach>
	<c:if test="${param.next}">
	<a href = "javascript:${action}(${param.end+1})">next</a>
	</c:if>
</body>
</html>