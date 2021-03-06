<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<table class="table" id="commentslist" style="width:80%; border: 1px solid lightgray;">
			<tbody class="title">
				<tr align="center">
					<!-- 
						<th>num</th>
						<th>memnum</th> 
						<td>이름</td>
					-->
					<td style="width:20%;">아이디</td>
					<td style="width:60%;">내용</td>
					<td style="width:20%;">글쓴날</td>
				</tr>
			</tbody>
			<tbody class="list">
			</tbody>
		</table>
			<div id="pagingDiv"></div>
		<form action="<c:url value='/comments/insert.do'/>">
			<table>
				<tr valign="middle">
					<td>
						<input type="hidden" name="boardnum" value="${param.num}">
						<input type="hidden" name="memnum" value="${loginfo.num}"> 
						<textarea rows=3px" cols="100px" name="content"></textarea>
					</td>
					<td>
						<button class="btn btn" style="width: 100px; height: 80px" type="button" onclick="comm_insert(this.form)">작성</button>
					</td>
				</tr>
				
			</table>
		</form>
	</div>
<script>
window.onload = function(){
	loadComments();
}
var contextPath = "${requestScope['javax.servlet.include.context_path']}";

var pagingLoad = function(pagingJson){
	var pagingDiv = document.querySelector("#pagingDiv");
	var http;
	if(window.XMLHttpRequest){
		http=new XMLHttpRequest();
	}else if(window.ActiveXObject){
		http = new ActiveXObject();
	}
	var url = "scriptpaging.mainboard";
	url+="?action=loadComments";
	url+="&page="+pagingJson["page"];
	url+="&begin="+pagingJson["beginPage"];
	url+="&end="+pagingJson["endPage"];
	url+="&prev="+pagingJson["prev"];
	url+="&next="+pagingJson["next"];
	http.onreadystatechange=function(){
		if(this.readyState==4){
			if(this.status==200){
				var pagingHtml = this.responseText;
				console.log(pagingHtml);
				pagingDiv.innerHTML = pagingHtml;
			}
		}
	}
	http.open("GET", url, true);
	http.send();
}

var loadComments = function(paraPage){
	var http;
	if(window.XMLHttpRequest){
		http = new XMLHttpRequest();
	}else if(window.ActiveXObject){
		http = new ActiveXObject();
	}
	var page = (paraPage)?paraPage:1;
	var url = "colist.mainboard?boardnum=${param.num}&page="+page;
	http.onreadystatechange = function(){ //여기를 작성하면 비동기 통신 시 dom을 조작 할 수 있다.
		//보통 this는 window지만 객체의 함수 내부에서는 객체
		if(this.readyState==4){
			if(this.status == 200){
				var commentsList = JSON.parse(this.responseText);
				commentListready(commentsList["list"]);
				console.log(commentsList["paging"]);
				pagingLoad(commentsList["paging"]);
			}else if(this.status==400){
				alert("comments를 읽어오지 못했습니다.");
			}
		}
	}
	http.open("GET", url, true);
	http.send();
}//ajax 구현


var comm_delete = function(num, memNum){
	var confirm = window.confirm("삭제 하시겠습니까?");
	if(confirm){
		var http;
		var url = "codelete.mainboard?boardnum="+num+"&memnum="+memNum;
		if(window.XMLHttpRequest){
			http = new XMLHttpRequest();
		}else if(window.ActiveXObject){
			http = new ActiveXObject();
		}
		
		http.onreadystatechange = function(){
			if(this.readyState==4){
				if(this.status == 200){
					var deleteJson = JSON.parse(this.responseText);
					if(deleteJson["del"]>0){
						loadComments();
					}
				}
			}
		}
		http.open("DELETE", url, true);
		http.send();
	}
}

	var comm_insert = function(formVal){
		var http;
 		var url = "coinsert.mainboard";
		url+="?boardnum="+formVal.boardnum.value;
		url+="&memnum="+formVal.memnum.value;
		url+="&content="+encodeURIComponent(formVal.content.value); //javascript %encoding
		if(window.XMLHttpRequest){
			http = new XMLHttpRequest();
		}else if(window.ActiveXObject){
			http = new ActiveXObject();
		}
		
		http.onreadystatechange = function(){
			if(this.readyState==4){
				if(this.status == 200){
				var insertJson = JSON.parse(this.responseText);
				if(insertJson["insert"]>0){
					loadComments();
				}
			}else if(this.status == 500){
				alert("로그인시 이용 가능합니다.");
			}
		}
	}
		http.open("POST", url, true);
		http.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
		http.send();	
		//@RequestBody가 받는다.
		formVal.content.value = "";
}//ajax 구현


var commentListready = function(commentsList){
	var tableList = document.querySelector("#commentslist .list");
	var htmlList = "";
	var i = 0;
	var length = commentsList.length;
	for(i=0; i<length; i++){
		htmlList+="<tr align='center'>";
		//htmlList+="<td>"+commentsList[i]["num"]+"</td>";
		//htmlList+="<td>"+commentsList[i]["memnum"]+"</td>";
		htmlList+="<td style='background-color:lightgray;'><b>"+commentsList[i]["id"]+"</b><br>("+commentsList[i]["name"]+")"+"</td>";
		htmlList+="<td>"+commentsList[i]["content"]+"</td>";
		htmlList+="<td>"+commentsList[i]["indate"]+"<c:if test='${loginfo.num eq 1}'><a style='cursor:pointer' herf='#' onclick='comm_delete("+commentsList[i]["num"]+","+commentsList[i]["memnum"]+")'><img src='resources/images/xxx.jpg' width='20px' height='20px'></a></c:if></td>";
		htmlList+="</tr>";
	}
	tableList.innerHTML = htmlList;
}
</script>	
</body>
</html>