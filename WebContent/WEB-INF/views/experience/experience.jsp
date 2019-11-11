<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<%-- head part --%>
	<jsp:include page="../include/head.jsp" />
</head>
<body>
	<div id="wrap">
			<%-- header part --%>
			<jsp:include page="../include/header.jsp" />
   
  		<h1 id="product"><div>EXPERIENCE</div></h1>
  		<article>
  			<h2>YOUNG B </h2>
			<article class="phone">
				<figure class="pimg"><img src="imgs/YB1.jpg"></figure>
				<section>
					<h4>도끼파 JAVABEAN</h4>
					<ul>
						<li>어린체구에서 나오는 끊김없는 양아치의기운</li>
						<li>처음 만나는 100% 리얼 도끼파, Full HD 슈퍼 아몰랑</li>
						<li>모두를 하나로 뭉치다 통합 유치원 시스템</li>
						<li>세상의 언어가 body language로 통하다  </li>
						<li>JAVABEAN Translator</li>
					</ul>
				</section>				
			</article>
			<article class="phone">
				<figure class="pimg"><img src="imgs/YB2.jpg"></figure>
				<section>
					<h4>욕심쟁이 JAVABEAN</h4>
					<ul>
						<li>Full HD 대욕심</li>
						<li>최강 욕심쟁이 후훗 </li>
						<li>생생한 운동회의 전,후 결과</li>
						<li>나를 전혀 이해못하는 스스로 XX</li>
						<li>욕심쟁이 스타일 </li>
					</ul>
				</section>				
			</article>
			<article class="phone">
				<figure class="pimg"><img src="imgs/YB3.jpg" height="150" width="100" ></figure>
				<section>
				<h4>누나와함께 JAVABEAN</h4>
					<ul>
						<li>신세대 누나들만 쫓아다니는 성능 - 완전히 새로운 누나빠</li>
						<li>더 커진 인맥으로 더 많은 볼거리를 - 안좋은 눈 디스플레이</li>
						<li>진정한 LTE - 초고속 달리기 속도 </li>
						<li>더 빠른 달리기,더 큰 욕심, 더 향상된 개드립 사용시간 - 촉촉한 초코 칩 </li>
						<li>어떤 개드립에도 최적화된 획기적인 경험 - 완전히 새로운 DogPods</li>
					</ul>	
				</section>			
			</article>	
  		</article>
		
  		<%-- side part --%>
       <jsp:include page="experience_side.jsp" />


        <div class="clear"></div>
       <%-- footer part --%>
       <jsp:include page="../include/footer.jsp" />
	</div>


    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript" src="scripts/jquery.fancybox.pack.js"></script>
    <script type="text/javascript" src="scripts/prettify.packed.js"></script>
  	<script type="text/javascript">
  		$(document).ready(function() {
			$(".fancybox").fancybox({
				openEffect	: 'none',
				closeEffect	: 'none'
			});
		});
  	</script>
</body>
</html>