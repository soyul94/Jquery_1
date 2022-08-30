<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="./resources/jquery.js"></script>
<script>
	$(function() {
		var obj1=$("#index1").children().clone();
		$("#index2").remove();
		$("#index3").empty();
		$("#index3").append(obj1);
	});
</script>
	
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3 id="title">JQuery 이해</h3>
	<div id="index1">
		<section name="sec1" id="sec1">
			<h3>선택1</h3>
			<h3>선택2</h3>
			<h3>선택3</h3>
		</section>
	</div>
	<div id="index2">
		<section name="sec2" id="sec2">
			<h3>선택4</h3>
			<h3>선택5</h3>
			<h3>선택6</h3>
		</section>
	</div>
	<div id="index3">
		<section name="sec3" id="sec3">
			<h3>선택7</h3>
			<h3>선택8</h3>
			<h3>선택9</h3>
		</section>
	</div>

</body>
</html>