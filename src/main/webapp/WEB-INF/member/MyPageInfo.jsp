<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./../template/top.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.err{
		color: red;
		font-size: 9pt;
	}
	.signup_header{
		font-size: 25px;
	}
	.signup_sub{
		font-size: 15px;
	}
</style>
<link href="resources/bootstrap/css/animate.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
<br><br>
	<div class="col-sm-2"></div>
	<div class="col-sm-7">
	<div class="signup_header">
	<p align="center">회원 수정 페이지</p><br>
	</div>
	<div class="signup_sub">
	<p align="center"><b>${sessionScope.loginfo.id}</b> 님의 회원 정보입니다.<br>
회원정보는 개인정보처리방침에 따라 안전하게 보호되며, 회원님의 명백한 동의 없이 공개 또는 제 3자에게 제공되지 않습니다. <a href="#">개인정보처리방침</a></p>
	</div>
	<br><br>
		<form:form commandName="update" action="update_info.me" method="POST" class="form-horizontal" id="myForm">
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="id">아이디:</label>
				<div class="col-sm-10">
					<input type="hidden" class="form-control" name="id" id="id" value="${member.id}">
					<input type="text" class="form-control" name="id" id="id" value="${member.id}" disabled>
					<form:errors cssClass="err" path="id" />
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="name">이름:</label>
				<div class="col-sm-10">
					<input type="hidden" class="form-control" name="name" value="${member.name}">
					<input type="text" class="form-control" name="name" value="${member.name}" disabled>
					<form:errors cssClass="err" path="name" />
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="nickname">별명:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="nickname" placeholder="별명을 입력하세요." value="${member.nickname}">
					<form:errors cssClass="err" path="nickname" />
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="email">이메일:</label>
				<div class="col-sm-10">
					<input type="email" class="form-control" name="email" placeholder="이메일을 입력해 주세요." value="${member.email}">
					<form:errors cssClass="err" path="email" />
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="phone1">번호:</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="phone1" placeholder="010" value="${member.phone1}" maxlength="3">
					<form:errors cssClass="err" path="phone1" />
				</div>
				<label class="control-label col-sm-1">-</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" name="phone2" placeholder="1234" value="${member.phone2}" maxlength="4">
					<form:errors cssClass="err" path="phone2" />
				</div>
				<label class="control-label col-sm-1">-</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" name="phone3" placeholder="5678" value="${member.phone3}" maxlength="4">
					<form:errors cssClass="err" path="phone3" />
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="zipcode">우편번호:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="zipcode" placeholder="우편번호를 입력하세요. (ex:04122)" value="${member.zipcode}">
					<form:errors cssClass="err" path="zipcode" />
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="address">주소:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="address" placeholder="주소를 입력하세요." value="${member.address}">
					<form:errors cssClass="err" path="address" />
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="ssn">주민등록번호:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="ssn" placeholder="-를 제외하고 숫자만 입력하세요.(ex:9111112345678)" value="${member.ssn}">
					<form:errors cssClass="err" path="ssn" />
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="gender">성별:</label>
				<div class="col-lg-10">
					<label class="radio-inline"> 
					<input type="radio" name="gender" value="남" <c:if test="${member.gender eq '남'}">checked</c:if>> 남
					
					</label> 
					<label class="radio-inline"> 
					<input type="radio" name="gender" value="여" <c:if test="${member.gender eq '여'}">checked</c:if>> 여
					</label>
				</div>
				<form:errors cssClass="err" path="gender" />
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="admin">관리권한:</label>
				<div class="col-lg-10">
					<label class="radio-inline"> 
					<input type="radio" name="admin" value="0" <c:if test="${member.admin eq '0'}">checked</c:if>>관리자
					</label> 
					<label class="radio-inline"> 
					<input type="radio" name="admin" value="1" <c:if test="${member.admin eq '1'}">checked</c:if>>사용자
					</label>
				</div>
			</div>
			
			<div class="form-group">
				<label for="inputEmailReceiveYn" class="col-lg-2 control-label">이메일
					수신여부</label>
				<div class="col-lg-10">
					<label class="radio-inline"> 
					<input type="radio"
						id="emailReceiveYn" name="emailReceiveYn" value="Y" checked="checked">
						동의합니다.
					</label> 
					<label class="radio-inline"> 
					<input type="radio"
						id="emailReceiveYn" name="emailReceiveYn" value="N"> 동의하지
						않습니다.
					</label>
				</div>
			</div>
			<div class="form-group">
				<label for="inputPhoneNumber" class="col-lg-2 control-label">SMS
					수신여부</label>
				<div class="col-lg-10">
					<label class="radio-inline"> <input type="radio"
						id="smsReceiveYn" name="smsReceiveYn" value="Y" checked="checked">
						동의합니다.
					</label> <label class="radio-inline"> <input type="radio"
						id="smsReceiveYn" name="smsReceiveYn" value="N"> 동의하지
						않습니다.
					</label>
				</div>
			</div>
			<br>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10" align="center">
				<a href="#" onclick="history.go(-1)"><button
							class="btn btn-warning" type="button">이전으로</button></a>
					<input type="submit" class="btn btn-danger" value="수정하기" id="update" onClick="return check()">
				</div>
			</div>
			<br>
		</form:form>
		<br>
	</div>
	</div>
</body>
<script type="text/javascript">
	$(function(){
		$("#update").click(function(){
			var pwd1 = $("#pwd").val();
			var pwd2 = $("input[name='passwordcheck']").val();		
			var check;
			
			if(pwd1==pwd2){
				check=true;
			}else{
				check=false;
			}
			
			var bool = $("input[name=bool]").val(check);
			
			$("#myForm").submit();
			
		});
		
		$("#close").click(function(){
			document.location.href='${pageContext.request.contextPath}';
		});
		
	});
	
	function check(){
		if(!($("input:radio[name='emailReceiveYn']").is(":checked"))){
	        alert('이메일 수신여부을 확인하세요.');
	        $("input:radio[name=emailReceiveYn]").eq(0).focus();
	        return false;
	     }
		if(!($("input:radio[name='smsReceiveYn']").is(":checked"))){
	        alert('SMS 수신여부을 확인하세요.');
	        $("input:radio[name=smsReceiveYn]").eq(0).focus();
	        return false;
	     }
	}
	
</script>
</html>
<%@include file="./../template/bottom.jsp" %>