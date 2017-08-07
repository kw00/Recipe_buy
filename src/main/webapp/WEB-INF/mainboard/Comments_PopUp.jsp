<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div align="center">
		<button class="btn btn" type="button" onclick="javascript:window.opener.location.href='detail.mainboard?num=${param.num}'; self.close();" style="width: 100%;">본 문 보 기</button>
		<br><br>
		<c:import url="../mainboard/Comments.jsp">
			<c:param name="board_num">${board.num}</c:param>
		</c:import>	
	</div>
	
</body>
</html>