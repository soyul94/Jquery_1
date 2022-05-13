
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<meta charset="UTF-8">
	<title>Home</title>
	<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js" 
			integrity="sha512-jGsMH83oKe9asCpkOVkBnUrDDTp8wl+adkB2D+//JtlxO4SrLoJdhbOysIFQJloQFD+C4Fl1rMsQZF76JjV0eQ==" 
			crossorigin="anonymous" 
			referrerpolicy="no-referrer">
	</script> -->
	<script src="./resources/jquery.js"></script>
	
	<script>
		$(function(){
			$("#title").css("color","red");
		});
	/*  위와 아래는 모두 같은 표현
		$(document).ready(function(){
						  $("#title").css("color","red");
		}); */
	</script>
</head>
<body>
<h1>
	Hello world!  
</h1>

<h1 id="title">JPuery 이해</h1>
<h3 id="title1">선택자</h3>
<h3 id="title2">전체 선택자</h3>
<h3 id="title3">아이디 선택자</h3>
<h3 class="title4">클래스 선택자</h3>

<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
