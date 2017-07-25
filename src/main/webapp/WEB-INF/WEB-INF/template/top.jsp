<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <style type="text/css">
	a{
		text-decoration: none;
	}
</style>
<%
	String contextPath = request.getContextPath();
	String pattern="###,###";
	DecimalFormat df = new DecimalFormat(pattern);
%>
</head>
<body>

<nav class="navbar navbar-defualt" style="bgColor:red;">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="${pageContext.request.contextPath}">
      <img height="40" src="./resources/images/recipe.jpg"/></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="${pageContext.request.contextPath}">Home</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">레시피
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">인기 레시피</a></li>
		  <li><a href="recipeList.recipe?mcategory=밥류">밥류</a></li>
		  <li><a href="recipeList.recipe?mcategory=국류">국류</a></li>
		  <li><a href="recipeList.recipe?mcategory=면류">면류</a></li>
		  <li><a href="recipeList.recipe?mcategory=기타">기타</a></li>
        </ul>
      </li>
      <li><a class="dropdown-toggle" data-toggle="dropdown" href="#">게시판
      <span class="caret"></span></a>
         <ul class="dropdown-menu">
           <li><a href="list.nt">공지사항</a></li>
            <li><a href="board.mainboard">자유 게시판</a></li>
            <li><a href="#">질문 게시판</a></li>
            <li><a href="#">요청 게시판</a></li>
            <li><a href="#">갤러리</a></li>
        </ul>
      </li>
      <li><a class="dropdown-toggle" data-toggle="dropdown" href="#">식재료
      <span class="caret"></span></a>
         <ul class="dropdown-menu">
           <li><a href="list.fd">전체</a></li>
            <li><a href="list.fd?whatColumn=fcategory&keyword=채소">채소</a></li>
            <li><a href="list.fd?whatColumn=fcategory&keyword=육류">육류</a></li>
            <li><a href="list.fd?whatColumn=fcategory&keyword=어류">어류</a></li>
            <li><a href="list.fd?whatColumn=fcategory&keyword=가공">가공</a></li>
            <li><a href="list.fd?whatColumn=fcategory&keyword=양념">양념</a></li>
        </ul>
      </li>
    </ul>
    <form class="navbar-form navbar-left">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form>

	<c:choose>
		<c:when test="${sessionScope.loginfo==null}">
		    <form class="navbar-form navbar-right" action="login.me" method="POST">
		      <div class="form-group">
		        <button type="button" class="btn btn-default" onclick="javascript:location.href='signupAssent.me'">회원 가입</button>
		        <button type="button" class="btn btn-default" onclick="javascript:location.href='find.me'">가입정보찾기</button>
		        <input type="text" class="form-control" name="id" placeholder="아이디">
		        <input type="password" class="form-control" name="password" placeholder="비밀번호">
		        <button class="btn btn-default" type="submit">
		           <i class="glyphicon glyphicon-log-in"></i>
		        </button>
		      </div>
		    </form>
		</c:when>
		<c:otherwise>
			<table border="1" align="right">
   				<tr>
   					<th>아이디 </th>
   					<td>${sessionScope.loginfo.id}</td>
   					<td rowspan="2"><button type="button" onclick="javascript:location.href='logout.me'">로그아웃</button></td>
   				</tr>
   				<tr>
   					<th>닉네임 </th>
   					<td>${sessionScope.loginfo.nickname}</td>
   				</tr>
  			</table>
		</c:otherwise>
	</c:choose>
  </div>
</nav>

</body>
</html>
