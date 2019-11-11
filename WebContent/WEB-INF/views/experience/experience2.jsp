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
  			<h2>SKI B </h2>
			<article class="phone">
				<figure class="pimg"><img src="imgs/SK1.jpg"></figure>
				<section>
					<h4>ROCKY MOUNTAIN JAVABEAN</h4>
					<ul>
						<li>2개의 다리로 끊김없이 오래오래 무한체력</li>
						<li>처음 만나는 100% 리얼 mountain, Full HD 슈퍼 길몰랑</li>
						<li>외국인들을 하나로 뭉치다 통합 로키 시스템</li>
						<li>스키의 언어가 서로 통하다 Ski Translator</li>
						<li>체중이동으로 편리하게 제어하는 Smart JAVABEAN</li>
					</ul>
				</section>				
			</article>
			<article class="phone">
				<figure class="pimg"><img src="imgs/SK2.JPG"></figure>
				<section>
					<h4>SNOW위의 노숙자 JAVABEAN </h4>
					<ul>
						<li>Full :D 개꿀잠 </li>
						<li>최강 스키웨어 </li>
						<li>생생한 감동의 Gopro 카메라</li>
						<li>나도 가끔 넘어져 XD</li>
						<li>스키선수 스타일 디자인</li>
					</ul>
				</section>				
			</article>
			<article class="phone">
				<figure class="pimg"><img src="imgs/SK3.jpg"></figure>
				<section>
				<h4>SKI LEVEL2 JAVABEAN</h4>
					<ul>
						<li>노력파에 뛰어난 성능 - 완전히 새로운 LEVEL2</li>
						<li>더 커진 스키실력으로 더 많은 볼거리를 - JAVABEAN SKI PLAY </li>
						<li>진정한 LTE - 초고속 스키속도 </li>
						<li>더 빠른 스키속도, 더 길어진 스키, 더 향상된 체력 - 장비빨 </li>
						<li>로키산맥에서 최적화된 획기적인 경험 - 완전히 새로운 NAVI</li>
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