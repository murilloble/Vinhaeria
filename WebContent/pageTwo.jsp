<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="./resources/css/pageTwo.css" rel="stylesheet"/>
	  <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</head>
<div class="container02">
   
   <div class="div01">
   		<div><jsp:include page="cardVinho.jsp"/></div>
   </div>
   <div class="div02">
   		<div class="textTitulo"><h2>Vinhos personalizados</h2></div>
   		<div class="textSubTitle"><p>Planos de assinatura feitos sob medida</p></div>
   		<div class="imgsPageTwo">
   			<div class="layoutImgPageTwo">
   				<div class="imgPagetwo"><img alt="img01" src="./resources/img/img1.png"></div>
   				<div class="textImgPageTwo">
   					<p>Vinhos orgânicos e veganos, selecionados para você descobrir.</p>
   				</div>
   			</div>
   			<div class="layoutImgPageTwo">
   				<div class="imgPagetwo">
   					<img alt="img02" src="./resources/img/img2.png">
   				</div>
   				<div class="textImgPageTwo">
   					<p>Edições premium: histórias de vinhas ancestrais.</p>
   				</div>
   			</div>
   			<div class="layoutImgPageTwo">
   				<div class="imgPagetwo"><img alt="img03" src="./resources/img/img3.png"></div>
   				<div class="textImgPageTwo">
   					<p>30/10: Caixa premium com rótulos raros e vegan</p>
   				</div>
   			</div>
   		</div>
   		<div class="divBotton">
   			<div class="divInternoBotton">
   				<a href=""><button><p class="bottonAssinar">Assinar</p></button></a>
    		</div>
   		</div>
   </div>
   <div class="div03">
   		<div class="container">
    <p class="subtitle">Discover</p>
    <h2>The Process Of WineMaking</h2>
    <p class="subtitleBaixo">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.</p>

    <div class="grid">
      <div class="grid-side">
        <div class="step">
          <i class="fas fa-wine-bottle"></i>
          <h3>Harvesting</h3>
          <p>Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit. Morbi Hendrerit Elit Turpis, A Porttitor Tellus Sollicitudin At.</p>
        </div>
        <div class="step">
          <i class="fas fa-wine-barrel"></i>
          <h3>Fermentation</h3>
          <p>Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit. Morbi Hendrerit Elit Turpis, A Porttitor Tellus Sollicitudin At.</p>
        </div>
      </div>

      <div class="center-img">
      	 <img alt="wine02" src="./resources/img/wineFinal.png">
      </div>

      <div class="grid-side">
        <div class="step">
          <i class="fas fa-wine-glass-alt"></i>
          <h3>Crushing & Pressing</h3>
          <p>Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit. Morbi Hendrerit Elit Turpis, A Porttitor Tellus Sollicitudin At.</p>
        </div>
        <div class="step">
          <i class="fas fa-glass-cheers"></i>
          <h3>Ageing & Bottling</h3>
          <p>Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit. Morbi Hendrerit Elit Turpis, A Porttitor Tellus Sollicitudin At.</p>
        </div>
      </div>
    </div>

    <div class="button">
      <a href="#">Learn More</a>
    </div>
  </div>
   </div>
   
</div>

