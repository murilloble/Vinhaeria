<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<jsp:include page="header.jsp"/>
<!-- 	<link href="./resources/css/index.css" rel="stylesheet"/> -->
	<title>Projeto Vinheria</title>
	

	
	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400..900&display=swap" rel="stylesheet">
<script src="./resources/js/app.js" defer></script>
</head>
<body>

<!-- Área de conteúdo -->
<div class="background">
	<div style="height: 100%"><jsp:include page="pageOne.jsp"/></div>
	<div style=""><jsp:include page="pageTwo.jsp"/></div>
</div>

		
</body>
</html>