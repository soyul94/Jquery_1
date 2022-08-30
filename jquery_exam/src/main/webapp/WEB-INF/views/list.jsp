<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- CSS only : 부트스트랩-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js" 
			integrity="sha512-jGsMH83oKe9asCpkOVkBnUrDDTp8wl+adkB2D+//JtlxO4SrLoJdhbOysIFQJloQFD+C4Fl1rMsQZF76JjV0eQ==" 
			crossorigin="anonymous" 
			referrerpolicy="no-referrer">
</script> -->
<script src="./resources/jquery.js"></script>
<script>
	/* $(document).ready(function(){
		$("tbody tr").eq(1).css("color","yellow").css("border","1px solid #ff00ff");
		$("tbody tr").eq(3).css("color","yellow").css("border","1px solid #ff00ff");
		
		$(".title td:lt(3)").css("color","red").css("border","1px solid #0000ff");
		$(".title td:gt(27)").css("color","red").css("border","1px solid #0000ff");
		$(".title td").eq(13).css("color","blue").css("border","1px solid #00ffff");
		$(".title td").eq(30).css("color","blue").css("border","1px solid #00ffff");
		$(".title td").eq(24).css("color","blue").css("border","1px solid #00ffff");
		
		$(".title:first-of-type").css("color","green").css("border","1px solid #00ffff");
		$(".title:last-of-type").css("color","green").css("border","1px solid #00ffff");	
	}); 
/* 	$(document).ready(function(){
		$(".title td").each(function(i,o){
			console.log(i+" : ",o);
		})
	}) */
	
/* 	$(document).ready(function(){
		var idx= $("th").index($("#th1"));
		console.log(idx);
		var idx= $("td").index($("#title3"));
		console.log(idx);
	});
	
	$(document).ready(function(){
		$(".title td[id]").css({"color":"red"});
		$(".title td[id=no3]").css({"color":"blue"});
		$(".title td[id=title5]").css({"color":"black"});
	});
	
	$(document).ready(function(){
		$("#title3 td").not()
	})
	$(document).ready(function(){
		$("thead th").eq(7).html("hello");
		$(".title td").eq(7).html("언니가 최고양");
		$(".title td").eq(14).html("언니가 최고양");
	})
	$(document).ready(function(){
		var result= $("#body").attr("border");
		consloe.log(result);
		$("#body").attr({"border":result.replace("1","0")});
	}) */ 
	
	$(document).ready(function(){
		$("#body").addClass("table table table-hover"); //클래스 추가
		//$("thead").toggleClass("table-teal"); //클래스 토글(있으면 없애고 없으면 만들고)
		//$("#tr").toggleClass("table-primary");
		var obj= $("tbody").hasClass("table-group-divider");
		console.log(obj);
		$("#body").removeClass("table-striped");
	})
	
	$(document).ready(function(){
		/* $("#btn1").click(function(){
			if(!$("#tr").hasClass("table-success")){
				$("#tr").removeClass("table-primary");
				$("#tr").addClass("table-success");
				console.log($("#tr").hasClass("table-success"));
			}
			else{
				$("#tr").removeClass("table-success");
				$("#tr").addClass("table-primary");
				console.log($("#tr").hasClass("table-success"));
			}	
		}) */
		$("#btn1").click(function(){
			console.log($("#tr").hasClass("table-success"));
			if(!$("#tr").hasClass("table-success")){
				$("#tr").attr('class',$("#tr").attr('class').replace("table-primary","table-success"));
				$("#tr").hasClass("table-success")
			}
			else{
				$("#tr").addClass("table-primary");
			}
		})
		
		var copyobj=$("#thead").clone();
		$("#thead").before(copyobj);
	})

</script>
</head>
<body>


<table id="body" class=" table-striped" border=1>
	<thead id="thead">
		<tr id="tr" class="table-primary">
			<th>교수번호</th>
			<th>교수이름</th>
			<th>학과</th>
			<th>교수직위</th>
			<th>연봉</th>
			<th>임용일</th>
			<th>전공</th>
			<th>캠퍼스</th>
		</tr>
	</thead>
	<tbody class="table-group-divider">
		<c:forEach var="item" items="${list}">
			<tr class="title ">
				<td id="title1">${item.pid}</td>
				<td id="no2">${item.pname}</td>
				<td id="no3">${item.dept}</td>
				<td id="title4">${item.post}</td>
				<td id="title5">${item.pay}</td>
				<td id="no6"><fmt:formatDate value="${item.hire}" pattern="yyyy-MM-dd" /> </td>
				<td id="title7">${item.major}</td>
				<td class="title8">${item.campus}</td>
			</tr>
		</c:forEach>
	</tbody>
	
</table>

<button id="btn1">버튼 1</button>

</body>
</html>