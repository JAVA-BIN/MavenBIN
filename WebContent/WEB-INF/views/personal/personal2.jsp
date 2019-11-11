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
   
  		<h1 id="company"><div>JAVABEAN</div></h1>
  		<article>
  			<h2>SKI Instructor JAVABEAN</h2>
  			 <figure> 
				<img src="imgs/ski.GIF" alt="S.JAVABEAN" >
				<figcaption>Ski BIN</figcaption> 
  			</figure>
  			<h1>SKI INSTRUCTOR BIN</h1>
  			<p>군대에 전역한 이후 2012년 겨울 뭔가 좀 더 인생에 큰 변화를 줄 만한 일이 무엇이 있을까 생각하던 중 스키장 아르바이트 공고를 보게 되었고,
  			한치의 고민도 없이 스키를 배워보기 위하여 강원도로 향했다.. 아니 처음에는 보드가 너무 타기 좋아보였고 도전하게 되었으며 누구한테 배우지 않고
  			스스로 많은 기술을 익혔고 이해하게 되었다. 그러던 도중 스키에도 관심이 생겼고, 같은원리를 적용하여서 타게 된다면 그리 큰 문제가 없을것이라 판단
  			스키에도 도전하게 되었다.
  			<p>그리고 스키와 보드 LEVEL 1에 도전하게 되는데 시험을 치는 것에 대해 반대도 많이 있었다. 다른사람들은 꼬박 1-2년 많게는 3년도 자격증을 따기위해
  			준비를 하는데 1년에 스키와 보드 둘다 마음대로 타고 자격증에 응시하는 사람은 없다고 했다.
  			하지만 내 생각은 조금 달랐다 스키를 탈 때 스키를 타는사람보다 더 많이 준비했고 보드를 탈 때 보드를 타는사람보다 더 많은 시간을 투자했다.
  			그 결과 첫번째 시험에서 스키에 합격 후 남아있었던 보드시험에도 응시하여 1년만에 2가지 모두 따게되었다.
  			<p>그 후 대학생 신분으로써도 최선을 다해야 했기 때문에 학업에 충실히 하였다. 4학년1학기에 모든 학업을 마치고 새롭게 도전하기 위해 일본과 캐나다에
  			가기로 마음을 먹고 working holiday를 신청하게 된다. 그 후 캐나다에서 스키 LEVEL 2를 따게되고 로키산맥에서 많은 경험을 하게 된다.
  			캐나다 이외의 모든 국가에는 LEVEL 3까지 있으며, LEVEL 3를 위한 노력이 계속 되고 있다.<p>
  			<img src="imgs/CS.jpg" alt="certification" ></article>
		
		
  		<%-- side part --%>
		<jsp:include page="personal_side.jsp" /> 


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