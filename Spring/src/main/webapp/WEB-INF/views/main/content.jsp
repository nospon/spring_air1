<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

.mySlides {display: none}


/* Slideshow container */
.slideshow-container {
  width: 1910px;		
  margin: 0 auto;	
  margin-left: -352px;
  position: relative;  
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 20px;
  padding: 8px 12px;
  position: absolute;
  margin-left: 50px;
  font-weight: bold;
  top: 8px;
  width: 100%;
  text-align: center;
}


/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  border: 2px solid #cfd2d7;
  background: #dfe2e7;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;  
}


.move{
  margin-top: -60px;
  margin-left: 8px;	
  position: relative;
  z-index: 100;
}
.active, .dot:hover {
  background: #fe5674;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}


.img{
	margin-left: 777.7px;
	margin-top: -100px;
}

.img1{
	margin-left: 781px;
	margin-top: -70px;
}

.slide_text{
	margin-left: -4px;
	font-size: 14px;
}


.slide_text1_1{
	margin-left: -58px;
	font-size: 14px;
}

.slide_text2_1{
	margin-left: 70px;
	color: #252D2E;
}


.slide_text2_2{
	margin-left: -46px;
	color: #252D2E;
	font-size: 15px;
}

</style>
</head>
<body>

<div class="slideshow-container">

<div class="mySlides fade">
  <img src="resources/image/main_images/content1.png" style="width:100%">
  <div class="text">  
  <a href="#"><h3><b>부산 아쿠아리움</b></h3>
  <p class="slide_text1_1">입장료 15%할인</p></a>
  <br>
  <img class="img" src="resources/image/main_images/busan.jpg" width="300px" height="182px">
  
</div>
</div>

<div class="mySlides fade">
  <img src="resources/image/main_images/content2.png" style="width:100%">
  
  <div class="text">
  <a href="#"><h3><b>인천공항 면세점</b></h3>
  <p class="slide_text">신라면세점 선불카드 할인</p></a>
  <img class="img1" src="resources/image/main_images/content2-1.jpg" width="300px" height="182px">
  <br>
</div>
</div>

<div class="mySlides fade"> 
  <img src="resources/image/main_images/content3.png" style="width:100%">
  <div class="text">
  <a href="#"><h3 class="slide_text2_1"><b>LA 디즈니랜드 입장권</b></h3>
  <p class="slide_text2_2">입장료 10% 할인</p></a>
  <img class="img1" src="resources/image/main_images/content3-1.png" width="300px" height="182px">
  <br>
</div>
</div>

<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>
<br>

<div class="move" style="text-align:center">

  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>

<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>

</body>
</html> 