<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>myLocation.jsp</title>



<c:url var="bootstrap" value="/node_modules/bootstrap/dist/css/bootstrap.css"/>
<c:url var="jquery" value="/node_modules/jquery/dist/jquery.js" />

<link rel="stylesheet" href="${bootstrap}"/>
<script type="text/javascript" src="${jquery}"></script>
<script type="text/javascript">
//준비핸들러
$(document).ready(function() {
	
	$('button').click(function(){
		console.log("button click...");
		
	//	alert("button click...");
		navigator.geolocation.getCurrentPosition(function(position) {
			console.dir(position);
		}, function(error) {
			console.dir(error);
		});
	});
});

</script>





</head>
<body>
<button class="btn btn-primary" >My Location</button>

 

</body>
</html>