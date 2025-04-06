<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Carrossel JSP</title>
  <style>
    * {
      box-sizing: border-box;
    }

    body {
      font-family: Arial, sans-serif;
      background: #f4f4f4;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .carousel {
      position: relative;
      width: 80%;
      max-width: 600px;
      overflow: hidden;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0,0,0,0.3);
    }

    .carousel-images {
      display: flex;
      width: 300%; /* 3 imagens → 300% */
      transition: transform 0.5s ease-in-out;
    }

    .carousel-images img {
      width: 100%;
      height: 350px;
      object-fit: cover;
      flex-shrink: 0;
    }

    .controls {
      position: absolute;
      top: 50%;
      width: 100%;
      display: flex;
      justify-content: space-between;
      transform: translateY(-50%);
    }

    .controls button {
      background-color: rgba(0, 0, 0, 0.5);
      border: none;
      color: white;
      font-size: 2rem;
      padding: 0.5rem 1rem;
      cursor: pointer;
    }

    .controls button:hover {
      background-color: rgba(0, 0, 0, 0.8);
    }
  </style>
</head>
<body>

<div class="carousel">
  <div class="carousel-images" id="carousel-images">
    <img src="${pageContext.request.contextPath}/resources/img/img1.png" alt="1">
    <img src="${pageContext.request.contextPath}/resources/img/img2.png" alt="2">
    <img src="${pageContext.request.contextPath}/resources/img/img3.png" alt="3">
  </div>
  <div class="controls">
    <button onclick="prevSlide()">‹</button>
    <button onclick="nextSlide()">›</button>
  </div>
</div>

<script>
  let currentIndex = 0;
  const carouselImages = document.getElementById("carousel-images");
  const totalSlides = carouselImages.children.length;

  function showSlide(index) {
    currentIndex = (index + totalSlides) % totalSlides;
    carouselImages.style.transform = `translateX(-${currentIndex * 100}%)`;
  }

  function nextSlide() {
    showSlide(currentIndex + 1);
  }

  function prevSlide() {
    showSlide(currentIndex - 1);
  }
</script>

</body>
</html>
