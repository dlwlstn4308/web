<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	@keyframes xxx {
	0%{
		opacity : 0.0;
	}
	50@ {
		transform : rotatex(360deg);
	}
	 100%{
	 	background-color:  red;
	 		opacity : 1.0;
	 		transform : rotatey(360deg);
	 }
	}
	h1{
		animation : xxx 3s;
		
	 }
	

</style>
</head>
<body>
<h1>Virtual Tomcat Test</h1>
</body>
</html>