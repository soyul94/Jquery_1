
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<meta charset="UTF-8">
	<title>Home</title>
<!--<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js" 
			integrity="sha512-jGsMH83oKe9asCpkOVkBnUrDDTp8wl+adkB2D+//JtlxO4SrLoJdhbOysIFQJloQFD+C4Fl1rMsQZF76JjV0eQ==" 
			crossorigin="anonymous" 
			referrerpolicy="no-referrer">
	</script> -->
	<script src="./resources/jquery.js"></script>
	
	<script>
		$(function(){
			$("h1").css("color","green").css("border","1px solid #0000ff");		//요소선택자 : 해당되는 모든 요소를 선택
			$("#title").css("color","red").css("border","1px solid #000000"); 	//id선택자	
			$(".title4").css("color","blue");	//class선택자
			$(".title5, #title3, h2").css("color","pink").css("border","2px dotted #eee"); //그룹선택자 : 다 때려넣는 기법 ! 선택자기호랑 ,로 구분지음
			$("h3#title3, h3.title6").css("color","skyblue"); //종속선택자 : 특정 요소나 클래스에 종속된 요소나 클래스를 선택
			$("#title2").parent().css("color","gray"); //부모요소 선택자
			$("#division ul").css("color","#bbb");//하위요소 선택자
			$("#division>h2").css("color","yellowgreen").css("border","2px dotted #151515");//자식요소 선택자1			
			$("#division").children("#title3").css("color","yellowgreen").css("border","1px solid #f5f515");//자식요소 선택자2
			$("#division>#title2").css("color","yellowgreen").css("border","2px dotted #151515");//자식요소 선택자1
			$("li#title2").prev().css("color","black");//이전요소 선택자
			$("p#title3").next().css("color","yellow");//다음요소 선택자
			$(".title4").prevAll().css("color","red").css("border","")//지정된 선택자를 포함하지 않고 이전 것들을 모두 선택
			$("p#title3").nextAll().css("color","red").css("border","")//지정된 선택자를 포함하지 않고 이후 것들을 모두 선택
			$("li#title2").siblings().css("color","blue");//전체 형제요소 선택자 : 지정한 요소나 클래스와 같은 계층의 형제들을 모두 선택(본인은 포함X)
			$("#nextUntil").nextUntil("#title2").css("color","#2a8618");//지정한 선택자부터 다음 지정 선택자 사이의 모든 요소와 클래스 선택
			$("#prevUntil").prevUntil("#title3").css("color","#cd86fa");//지정한 선택자부터 이전 지정 선택자 사이의 모든 요소와 클래스 선택 
			$(".parents").parents().css("color","yellow").css("border","1px solid #0ff");//이거 이해가 안가. 다시 알아보기
			$("#title1").parents().css("color","#72a4c0").css("border","1px solid #03f");//이거 이해가 안가. 다시 알아보기
			$("li.title6").closest("div").css("color","red").css("border","1px solid #0000ff");//이거 이해가 안가. 다시 알아보기
		});
	/*  위와 아래는 모두 같은 표현
		$(document).ready(function(){
						  $("#title").css("color","red");
		}); */
	</script>
</head>
<body>
<h1 id="nextUntil">Hello world!</h1>
<P>  The time on the server is ${serverTime}. </P>
<br>

<h1 id="title">JPuery 이해</h1>
<h2 class="parents">선택자 연습하기</h2>
<h3 id="title1">아이디 선택자 title1</h3>
<h3 id="title2">아이디 선택자 title2</h3>
<h3 id="title3">아이디 선택자 title3</h3>
<h3 class="title4">클래스 선택자 title4</h3>
<h3 class="title5">클래스 선택자 title5</h3>
<h3 class="title6">클래스 선택자 title6</h3>
<p>제이쿼리에서는 선택자의 우선순위가 없고, 순차적 진행문으로 마지막 수행이 HTML에 적용된다.</p>

<div id="division">
	<h2>h2요소</h2>
	<p id="title3">id="title3"</p>
	<p>이거 적용되나 ?</p>
	<ol>
		<li id="title">id="title"</li>
			<ul>
				<li id="title1">상위요소 : parent</li>
				<li id="title2">하위요소 : </li>
				<li class="title5">id="title5"</li>
			</ul>
		<li class="title6">class="title6"</li>
	</ol>
	<p id="prevUntil"></p>
</div>
</body>
</html>
