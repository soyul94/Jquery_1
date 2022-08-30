<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="./resources/jquery.js"></script>

<script>
	$(function(){
		$.each($("#index1 li"), function(i){
			$(this).css("color","red");	
		});
	});
	$(document).ready(function(){
		$("#index1 li[id]").css({"color":"green"}).css({"border":"1px solid #0000ff"});
		$("#index2 li[id=title7]").css({"color":"yellow"}).css({"border":"1px solid #ff0000"});
		
	})
	
	
	$(function(){
		var obj=[{"En":"영어"},{"Math":"수학"},{"Ko":"국어"}];
		$(obj).each(function(i,o){
			console.log(i+" - ",o);
		});
	});
	
	$(document).ready(function(){
		var obj= [{"subject":"영어","score":"100"},{"subject":"수학","score":"80"},{"subject":"국어","score":"50"}];
		
		var obj_1= $.map(obj,function(a,b){
			if(a.subject=="수학"){
				return a;
			}
		});
		console.log(obj_1);
		
		var obj_2= $.grep(obj, function(a,b){
			if(a.score=="100"){
				return true;
			}
			else{
				return false;
			}
		});
		console.log(obj_2);
	});
	
	$(document).ready(function(){
		var obj=["영어","수학","국어"]
		var obj_1=["100","80","50"]
		var obj_2=[{"subject":"영어","score":"100"},{"subject":"수학","score":"80"},{"subject":"국어","score":"50"}];
	
		var idx= $.inArray("국어",obj);
		console.log(idx);
		var isArray= $.isArray(obj_2);
		console.log(isArray);
		var merg= $.merge(obj, obj_1);
		console.log(merg);
	});
	
	$(document).ready(function(){
		var idx= $("li").index($("#title1"));
		console.log(idx);
	});

	
	$(document).ready(function(){
		var obj1= $("#index3 :selected").val();
		console.log(obj1);
		
		var obj2= $("#index5 :checked").val();
		console.log(obj2);
		
		var obj3= $("#index6 :checked").val();
		console.log(obj3);
		
		if($("#index3 :selected").val() == "선택 2"){
			$("h3:hidden").css({"display":"inline","background":"#f0f0f0"});			
		}
	})
	
	$(document).ready(function(){
		$("#index4 label:contains(사용자)").css({"color":"red"});
		$("#form div:has(input)").css({"color":"pink"});
		$("#index3 select").contents().css({"color":"yellowgreen"});
		$("#index2 li").not(":first").css({"color":"skyblue"});
	})
	
	$(document).ready(function(){
		$("#index2 ul li").filter(function(idx,obj){
			console.log(idx);
			return idx%2==0;
		}).css({"border":"1px dashed #0000ff"})
	}) 
		
</script>

</head>
<body>

<h3 id="title">JQuery 이해</h3>
<h3 id="title" style="display:none">display:none한 문장</h3>

<div>
<ol id="index1">
	<li id="title1">선택자 1</li>
	<li id="title2">선택자 2</li>
	<li id="title3">선택자 3</li>
	<li id="title4">선택자 4</li>
	<li class="title5">클래스선택자 1</li>
</ol>


<div id="index2">
	<ul >
		<li id="title6">선택자 5</li>
		<li id="title7">선택자 6</li>
		<li id="title8">선택자 7</li>
		<li id="title9">선택자 8</li>
		<li class="title10">클래스선택자 2</li>
	</ul>
</div>

<form action="#" id="form">
	<div div id="index3">
		<select name="option-kind">
			<option value="opt1">선택 1</option>
			<option value="opt2">선택 2</option>
			<option value="opt3" selected>선택 3</option>
		</select>
	</div>
	<div div id="index4">
		<label for="id">사용자</label>
		<input thpe="text" name="id" id="id" /><br>
		<label for="pass">비빌번호</label>
		<input thpe="text" name="pass" id="pass" /><br>
	</div><br>
	<div div id="index5">
		<input type="checkbox" name="chk_1" value="체크_1"  > 체크 1
		<input type="checkbox" name="chk_2" value="체크_2" checked > 체크 2
	</div><br>
	<div div id="index6">
		<input type="radio" name="rad_1" value="선택_1" checked > 선택 1
		<input type="radio" name="rad_2" value="선택_2" > 선택 2
	</div><br>
</form>

</body>
</html>