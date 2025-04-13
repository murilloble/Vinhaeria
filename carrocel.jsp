<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
    <link href="./resources/css/carrossel.css" rel="stylesheet"/>
  <script src="./resources/js/carrossel.js" defer ></script>
  <title>Carrossel JSP</title>
</head>
<body>

<div class="container-slider">
	<button id="prev-button">Anterior</button>

	<div class="container-images">
		<img alt="wine" src="./resources/img/img1.png" class="slider on">
		<img alt="wine" src="./resources/img/img2.png" class="slider">
		<img alt="wine" src="./resources/img/img3.png" class="slider">
	</div>
	
	<button id="next-button">Proxímo</button>
</div>
</body>
</html>
