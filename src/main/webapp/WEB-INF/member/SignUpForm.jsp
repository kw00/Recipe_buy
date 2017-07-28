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
</style>
<link href="resources/bootstrap/css/animate.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
<br><br>
	<div class="col-sm-2"></div>
	<div class="col-sm-7">
	<div class="signup_header">
	<p align="center">회원 가입</p>
	</div>
	<br><br>
		<form:form commandName="singup" action="signup.me" method="POST" class="form-horizontal" id="myForm">
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="id">아이디:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="id" id="id" placeholder="아이디를 입력하세요." value="${member.id}" onblur="checkId(this.form.id.value)">
					<form:errors cssClass="err" path="id" />
					<label id="checkId"></label>
					<input type="hidden" name="checkIdFlag" id="checkIdFlag" value="0">
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="password">비밀번호:</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" name="password" id="pwd" placeholder="패스워드" >
					<form:errors cssClass="err" path="password" />
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="passwordcheck">비밀번호 확인:</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" name="passwordcheck" placeholder="패스워드 확인">
					<form:errors cssClass="err" path="passwordcheck" />
					<input type="hidden" name="bool" value="true">
					<form:errors cssClass="err" path="bool" />
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="name">이름:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="name" placeholder="이름을 입력하세요" value="${member.name}">
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
				<label class="control-label col-sm-2" for="phone1">핸드폰번호:</label>
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
					<input type="radio" name="gender" value="남" checked="checked"> 남
					
					</label> 
					<label class="radio-inline"> 
					<input type="radio" name="gender" value="여"> 여
					</label>
				</div>
				<form:errors cssClass="err" path="gender" />
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="admin">관리권한:</label>
				<div class="col-lg-10">
					<label class="radio-inline"> 
					<input type="radio" name="admin" value="0" checked="checked">관리자
					</label> 
					<label class="radio-inline"> 
					<input type="radio" name="admin" value="1">사용자
					</label>
				</div>
			</div>
			
			<div class="form-group">
				<label for="inputEmailReceiveYn" class="col-lg-2 control-label">이메일
					수신여부</label>
				<div class="col-lg-10">
					<label class="radio-inline"> 
					<input type="radio"
						id="emailReceiveYn" name="emailReceiveYn" value="Y">
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
			
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10" align="center">
				<a href="#" onclick="history.go(-1)"><button
							class="btn btn-warning" type="button">이전으로</button></a>
					<input type="submit" class="btn btn-danger" value="가입하기" id="insert" onClick="return check()">
				</div>
			</div>
		</form:form>
		<br>
	</div>
	</div>
</body>
<script type="text/javascript">
	var checkIdLabel = document.getElementById("checkId");
	var checkIdFlag = document.getElementById("checkIdFlag");
	var uIdDom = document.getElementById("id");

	var checkId= function(idVal){
		if(idVal){
			var url = "checkId.me/"+idVal;
			var xhttp;
			if(window.XMLHttpRequest){
				xhttp = new XMLHttpRequest();
			}else if (window.ActiveXObject){
				xhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xhttp.onreadystatechange = function(){ //여기를 작성하면 비동기 통신 시 dom을 조작 할 수 있다.
				if(this.readyState==4 && this.status == 200){
					readyIdCheck(JSON.parse(this.responseText));
				}
			}
			xhttp.open("GET", url, true);
			xhttp.send();
		}
	}

	var readyIdCheck = function(idCheckJson){
		console.log(idCheckJson["checkId"]);
		var labelcolor = "red";
		var msg = "사용 중인 아이디 입니다."
		var checkIdFlagValue = "0";
		if(!idCheckJson["checkId"]){
			checkIdFlagValue = "1";
			msg = "사용 가능한 아이디 입니다.";
			labelcolor = "blue";
		}else{
			checkIdFlagValue = "0";
		}
		checkIdLabel.style.color = labelcolor;
		checkIdLabel.innerHTML = msg;
		checkIdFlag.value = checkIdFlagValue;
		uIdDom.style.borderColor = labelcolor;
	}
	
	$(function(){
		$("#insert").click(function(){
			var pwd1 = $("#pwd").val();
			var pwd2 = $("input[name='passwordcheck']").val();		
			var check;
			
			if(pwd1==pwd2){
				check=true;
			}else{
				check=false;
			}
			
			var bool = $("input[name=bool]").val(check);
			
			if($("input[name=checkIdFlag]").val()=='1'){
				$("#myForm").submit();
			}else{
				alert("아이디중복을 확인하세요.");
			}
			
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