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
  			<h2>JAPAN B </h2>
			<article class="phone">
				<figure class="pimg"><img src="imgs/JA1.JPG"></figure>
				<section>
					<h4>기모노 JAVABEAN</h4>
					<ul>
						<li>짧은시간에 오래오래 뽕뽑투어</li>
						<li>두번째 입어보는 100% 리얼 기모노, NONO JAPAN 아몰랑</li>
						<li>일본인인척 하다 Group JAPANESE</li>
						<li>일본 언어가 일본어로 통하다 </li>
						<li>기모노와 일본 스타일로 편리하게 누비는 Smart Japanese</li>
					</ul>
				</section>				
			</article>
			<article class="phone">
				<figure class="pimg"><img src="imgs/JA2.jpg"></figure>
				<section>
					<h4>인형뽑기의 신 JAVABEAN</h4>
					<ul>
						<li>Full HD 많은 인형 </li>
						<li>최강 뽑기의 신 </li>
						<li>생생한 인형뽑기 전,후의 블랙리스트</li>
						<li>인형뽑기를 이해하는 인형뽑기 시스템 </li>
						<li>다가질꺼야 아몰랑</li>
					</ul>
				</section>				
			</article>
			<article class="phone">
				<figure class="pimg"><img src="imgs/JA3.JPG"></figure>
				<section>
				<h4>Apple을 좋아하는 JAVABEAN</h4>
					<ul>
						<li>세련된 디자인에 비싼건 무조건 좋은 성능 - 완전히 똑같은 디자인</li>
						<li>더 커진 디스플레이로 더 많은 돈을 내야행</li>
						<li>진정한 LTE - 초고속 무선 네트워크는 따로구매 </li>
						<li>이때 부터 개발자인척 - 완전히 새로운 Programming</li>
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