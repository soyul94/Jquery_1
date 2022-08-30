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
<script src="./resources/jquery.js"></script>

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



<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">교수리스트</div>
			<div class="panel-body wrap"></div>
		</div>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">학생리스트</div>
			<div class="panel-body wrap2"></div>
		</div>
	</div>
</div>

<script>
$(function(){
	$.ajax({
		url:"/sample/getList/444.json",
		dataType:"JSON",
		success:function(data){
			if(data.length>0){
				//var tb=$(".wrap").html();
				var tb=$('<table class="table table-striped table-bordered table-hover"/>');
				var head=$("<tr/>").append($("<td/>").text("교수번호"),
										   $("<td/>").text("교수이름"),
										   $("<td/>").text("학과"),
										   $("<td/>").text("교수직위"),
										   $("<td/>").text("연봉"),
										   $("<td/>").text("임용일"),
										   $("<td/>").text("전공"),
										   $("<td/>").text("캠퍼스"));
				console.log(tb);
				tb.append(head);
				//$(".wrap").empty();
				var html="";
				for(var i in data){
					var $pid = data[i].pid;
					var $pname = data[i].pname;
					var $dept = data[i].dept;
					var $post = data[i].post;
					var $pay = data[i].pay;
					var $hire = new Date(data[i].hire).toLocaleDateString();
					var $major = data[i].major;
					var $campus = data[i].campus;
					var row = $("<tr/>").append($("<td/>").text($pid),
												$("<td/>").text($pname),
												$("<td/>").text($dept),
												$("<td/>").text($post),
												$("<td/>").text($pay),
												$("<td/>").text($hire),
												$("<td/>").text($major),
												$("<td/>").text($campus));
					tb.append(row); 
				}
				console.log(tb);
				$(".wrap").append(tb);
			}
		}
	});
	
});

$(function(){
	$.ajax({
		url:"/sample/getStudentList.json",
		dataType:"JSON",
		success:function(data){
			if(data.length>0){
				//var tb=$(".wrap").html();
				var tb=$('<table class="table table-striped table-bordered table-hover"/>');
				var head=$("<tr/>").append($("<td/>").text("학생번호"),
										   $("<td/>").text("학생이름"),
										   $("<td/>").text("학과"),
										   $("<td/>").text("생년월일"),
										   $("<td/>").text("성별"),
										   $("<td/>").text("고유번호"));
				console.log(tb);
				tb.append(head);
				
				var html="";
				for(var i in data){
					html+="<tr>";
					html+="<td>"+data[i].sid+"</td>";
					html+="<td>"+data[i].sname+"</td>";
					html+="<td>"+data[i].dept+"</td>";
					html+="<td>"+data[i].birth+"</td>";
					html+="<td>"+data[i].sex+"</td>";
					html+="<td>"+data[i].pid+"</td>";
					html+="</tr>";
				}
				tb.append(html);
				console.log(tb);
				$(".wrap2").append(tb);
			}
		}
	});
	
});
</script>

</body>
</html>