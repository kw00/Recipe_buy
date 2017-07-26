<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var stx = "";
	var sum = $('#rprice2', opener.document).val();
	var check="";
	var stx_1="";
	$("input[id=foodname]").change(function(){
		/* alert(sum); */
			check = $(this).val();
		var isChecked = $(this).is(":checked");
		/* alert(isChecked); */
		if(isChecked){
			var price = $("input[name="+check+"]").val();
			var qty = $("input[name='"+check+"Qty']").val();
			/* alert(qty);
			alert(check);
			alert(price); */
			sum = parseInt(sum)+(parseInt(price)*parseInt(qty));
			stx = "<input type='checkbox' id='"+check+"' name='ringredients' value='"
					+check+"-"+qty+"'checked disabled='disabled'><font id='"+check+"' color='blue'>"
					+check+"</font><font id='"+check+"' color='red'>"+qty+"</font>"+
					"<input type='hidden' id='"+check+"' name='ringredients' value='"
						+check+"-"+qty+"'checked readonly='readonly'>";
			$('#result', opener.document).append(stx);
			$('#rprice', opener.document).val(sum);
			$('#rprice2', opener.document).val(sum);
		}else{
			var price = $("input[name="+check+"]").val();
			var qty = $("input[name='"+check+"Qty']").val();
			/* alert(qty);
			alert(check);
			alert(price); */
			sum = parseInt(sum)-(parseInt(price)*parseInt(qty));
			$("#"+check+"", opener.document).remove();
			$('#rprice', opener.document).val(sum);
			$('#rprice2', opener.document).val(sum);
		}
	});
	
});
	function Plus(p){
		/* alert(p); */
		var qty = parseInt($("input[name='"+p+"']").val())+1;
		/* alert(qty); */
		$("input[name="+p+"]").attr("value",qty);
		
	}
	function Minus(p){
		var qty = parseInt($("input[name='"+p+"']").val())-1;
		if(qty<=0){
			alert("0개 안되요 ㅠㅠ");
		}else{			
		$("input[name="+p+"]").attr("value",qty);
		}
	}

</script>
<body>
	<div align="center">
		<h4>재료 선택창</h4>
		<div>
		 <form action="foodlist.recipe" method="get">
			<select name="whatColumn">
				<option value="fname">식재료 이름</option>
			</select>
			<input type="text" name="keyword">
			<input type="submit" value="검색">
		</form>
		전체 재료 갯수 : ${totalcount}
		</div>
			<c:forEach items="${food}" var="lists" varStatus="status">
			<div>
				<img src="#" alt="${lists.fname }" width="100" height="100">
				<br>
				<input type="checkbox" id="foodname" value="${lists.fname }">${lists.fname }
				<br>
				<input type="text" id="foodQty" name="${lists.fname }Qty" size="1" value="1" disabled="disabled">
				<button onclick="Plus('${lists.fname}Qty')">+</button>
				<button onclick="Minus('${lists.fname}Qty')">-</button>
				<input type="hidden" id="foodprice" name="${lists.fname }" value="${lists.fprice }">
				<input type="hidden" id="rprice2" value="">
				<font color="red">${lists.fprice}</font>원
			</div>
			</c:forEach>
			<div align="center">
			${pageInfo.pagingHtml}
		</div>
				<button onclick="javascript:self.close();">닫기</button>
	</div>
</body>
</html>