<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="./resources/jquery.js"></script>
<script>
	$(document).ready(function(){
		var obj=$("#sec1").html();
		console.log(obj);
		$("#sec1 h3[id=opt1]").html("<a herf=\"#\">링크1</a>");
		var obj1=$("#sec2").text();
		console.log(obj1);
		$("#opt4").text("select4");
	})
	$(document).ready(function(){
		var obj=$("#link a").attr("href");
		console.log(obj);
		
		$("#link a").attr("href",$("#link a").attr('href').replace("kopo.ac.kr","naver.com")).text("네이버");
	})
	$(document).ready(function(){
		$("#opt1").addClass("color1"); //클래스 추가
		$("#opt2").toggleClass("color2"); //클래스 토글(있으면 없애고 없으면 만들고)
		var obj= $(".opt3").hasClass("color3");
		console.log(obj);
		$(".opt3").removeClass("color3");
	})
</script>
<style>
	.color1{background-color: #ff0000;}
	.color2{background-color: #00ff00;}
	.color3{background-color: #0000ff;}
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3 id="title" style="display:none">JQuery 이해</h3>
	<div id="index">
		<section name="sec1" id="sec1">
			<h3 id="opt1">선택1</h3>
			<h3 id="opt2">선택2</h3>
			<h3 class="opt3 color3">선택3</h3>
		</section>
	</div>
	<div id="index1">
		<section name="sec2" id="sec2">
			<h3 id="opt4">선택4</h3>
			<h3 id="opt5">선택5</h3>
			<h3 class="opt6">선택6</h3>
		</section>
	</div>
	<div id="link">
		<a href="http://kopo.ac.kr">KOPO</a>
	</div>
</body>
</html>