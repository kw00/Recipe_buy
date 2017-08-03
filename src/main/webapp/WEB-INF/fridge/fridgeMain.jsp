<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../template/top.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<link
	href='https://fonts.googleapis.com/css?family=Lato:400,900,700,700italic,400italic,300italic,300,100italic,100,900italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Dosis:400,500,700,800,600,300,200'
	rel='stylesheet' type='text/css'>

<title>Insert title here</title>
<style>
.fridge_header {
	font-size: 20px;
	/* 	background: #F6F6F6; */
}

#state_num {
	font-size: 25px;
}

.fridge_button {
	padding-right: 20px;
}

table {
	width: 300px;
	height: 70px;
	font-size: 13px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="fridge_header">
			<br>
			<!-- "table table-hover" -->
			<div class="fridge_state" align=center>
				<table border="0">
					<tr id=state_num>
						<td align=center>3</td>
						<td align=center>2</td>
						<td align=center>1</td>
					</tr>
					<tr>
						<td align=center><img
							src="resources/bootstrap/images/green.png" width=20>&nbsp;신선</td>
						<td align=center><img
							src="resources/bootstrap/images/yellow.png" width=20>&nbsp;보통</td>
						<td align=center><img
							src="resources/bootstrap/images/red.png" width=20>&nbsp;위험</td>
					</tr>
				</table>
			</div>
			<br>
			<div class="fridge_button" align="right">
				<a href="searchfood.fr"><img
					src="resources/bootstrap/images/add.png" title="항목을 추가하려면 클릭하세요." width=35></a>
			</div>
		</div>


	</div>

</body>
</html>