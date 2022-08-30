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
		var obj= $("#id").val();
		console.log(obj);
		$("#pass").val("JQuery");
		var obj1= $("#pass").prop("defaultValue");
		console.log(obj1);
	})
	$(document).ready(function(){
		var obj= $("#id").val();
		console.log(obj);
		var obj1=$("#chk3").prop("checked");
		console.log(obj1);
		$("#chk2").prop("checked",true);
		var obj2=$("#option-kind").prop("selectedIndex");
		console.log(obj2);
	})
	$(document).ready(function() {
		var obj=$("#content1").width();
		console.log(obj);
		var obj1=$("#content1").height();
		console.log(obj1);
		var obj2=$("#content1").innerWidth();
		console.log(obj2);
		var obj3=$("#content1").outerWidth();
		console.log(obj3);
		$("#content2").outerWidth(200);
		$("#content2").outerHeight(200);
		var obj=$("#content2").width();
		console.log(obj);
		var obj1=$("#content2").height();
		console.log(obj1);
		var obj2=$("#content2").innerWidth();
		console.log(obj2);
		var obj3=$("#content2").outerWidth();
		console.log(obj3);
	})
	$(document).ready(function() {
		var obj1=$("#content3").offset().top;
		console.log(obj1);
		var obj2=$("#content3").position().top;
		console.log(obj2);
	})
	$(document).ready(function() {
		$("#sec1 h3:eq(1)").after("<h3>After</h3>"); //위아래 문장은 동일하며 순서대로 삽입
		$("<h3>InsertAfter</h3>").insertAfter("#sec1 h3:eq(1)"); 
		$("#sec1 h3:eq(0)").before("<h3>Before</h3>");
		$("<h3>InsertBefore</h3>").insertBefore("#sec1 h3:eq(1)");
	})
	$(document).ready(function() {
		$("#opt2").prepend("<h3>prepend</h3>");
		$("<h3>append</h3>").appendTo("#opt2");
	})
</script>

<style>
	*{
		margin:0; padding:0;
	}
	#title {
		width: 400px;
		height:400px;
		margin:50px auto 0;
		position : relative;
		background-color:#0000ff;
	}
	#content1, #content2 {
		width: 50px;
		height:50px;
		padding:10px;
		border:5px solid #ff0000;
		background-color:#0000ff;
	}
	#content3{
		width: 100px;
		height:100px;
		padding:10px;
		left:100px;
		top:100px;
		position : absolute;
		background-color:#ff0000;
	}

</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3 id="title" style="display:none">JQuery 이해</h3>
	
	<div id="title">JQuery 이해
		<h4 id="content3">본문1</h4>
	</div>
	
	<h4 id="content1">본문1</h4>
	<h4 id="content2">본문2</h4>
	
	<form action="#" id="form">
		<div id="index">
			<select name="option-kind" id="option-kind">
				<option value="opt1">선택1</option>
				<option value="opt2">선택2</option>
				<option value="opt3" selected>선택3</option>
			</select>
			<section name="sec1" id="sec1">
				<h3 id="opt1">선택1</h3>
				<h3 id="opt2">선택2</h3>
				<h3 id="opt3"class="color3">선택3</h3>
			</section>
		</div>
		<br>
		<div id="index1">
			<label for="id">사용자</label>
			<input type="text" name="id" value="tom" id="id">
			<label for="pass">비번</label>
			<input type="text" name="pass" value="12345" id="pass">
			<section name="sec2" id="sec2">
				<h3 id="opt4">선택4</h3>
				<h3 id="opt5">선택5</h3>
				<h3 class="opt6">선택6</h3>
			</section>
		</div>
		<div id="index2">
			<input type="checkbox" name="chk1" id="chk1" value="체크1">체크1
			<input type="checkbox" name="chk2" id="chk2" value="체크2">체크2
			<input type="checkbox" name="chk2" id="chk3" value="체크3" checked>체크3
		</div>
	</form>
	<div id="link">
		<a href="http://kopo.ac.kr">KOPO</a>
	</div>
</body>
</html>