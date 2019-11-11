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
  			<h2>CANADA B </h2>
			<article class="phone">
				<figure class="pimg"><img src="imgs/CA1.JPG"></figure>
				<section>
					<h4>INVERMERE</h4>
					<ul>
						<li>1개의 두뇌로 끊김없이 이미지 트레이닝</li>
						<li>처음 만나는 100% 리얼 lake, Full HD 수영 아몰랑</li>
						<li>보드 실력을 하나로 뭉치도 Group Boarding</li>
						<li>스노우 보드가 여기서도 통하다 SNB Translator</li>
						<li>기울기와 체중이동으로 편리하게 제어하는 Smart Wake Board</li>
					</ul>
				</section>				
			</article>
			<article class="phone">
				<figure class="pimg"><img src="imgs/CA2.JPG"></figure>
				<section>
					<h4>허구한날 렌트 JAVABEAN</h4>
					<ul>
						<li>Full HD Ford 대형차 </li>
						<li>최강 몸빵가능 </li>
						<li>생생한 전,후방 카메라 없음</li>
						<li>나의 감으로 간다 스스로 XD</li>
						<li>개망나니 스타일 </li>
					</ul>
				</section>				
			</article>
			<article class="phone">
				<figure class="pimg"><img src="imgs/CA3.jpg"></figure>
				<section>
				<h4>CLIMBING JAVABEAN</h4>
					<ul>
						<li>얇고 세련된 디자인에 뛰어난 성능 - 완전히 잽싼 디자인</li>
						<li>더 커진 근육으로 더 많은 볼거리를 - 그래도 쪼꼬만 디스플레이</li>
						<li>진정한 LTE - 초고속으로 올라가기 </li>
						<li>더 빠른 손 성능,더 빠른 발 속도, 더 향상된 근육 사용시간  </li>
						<li>어떤 곳에서도 해보지않은 첫번째 경험 - 완전히 새로운 도전</li>
					</ul>	
				</section>	
				</article>
			<article class="phone">
				<figure class="pimg"><img src="imgs/CA4.JPG"></figure>
				<section>
				<h4>SKI INSTRUCTOR JAVABEAN</h4>
					<ul>
						<li>얇고 세련된 디자인에 뛰어난 성능 - 한참 돈벌어야딩</li>
						<li>새로 산 스키복으로 더 많은 볼거리를 - 3 종류 스키웨어</li>
						<li>진정한 LTE - 시속 75km의 자동차와 맘먹는 속도 </li>
						<li>더 빠른 속도,더 강해진 말빨, 가끔 술먹으면 힘들엉</li>
						<li>어떠한 술자리에도 돈벌러가는 신기한 경험 </li>
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