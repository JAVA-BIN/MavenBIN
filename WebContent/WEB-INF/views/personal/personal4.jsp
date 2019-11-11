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
  			<h2>JAPAN JAVABEAN</h2>
  			 <figure> 
				<img src="imgs/J1.JPG" alt="J.JAVABEAN" width="350" height="450">
				<figcaption>Japan BIN</figcaption> 
  			</figure>
  			<h1>이제는 자신의 길로..</h1>
  			<p>항상 부모님의 바램대로 공부만 해왔던 채빈은 전역 후 스키장에서 일하면서 가장 자기가 하고싶은 일을 해보게 되었는데,
  			그 이후로 대학교를 다니면서 자신의 미래에 대해 곰곰히 생각해보게 된다. 해외 경험도 없고 스키도 더 개발하고 싶은 마음을 가지고
  			CANADA와 JAPAN WORKING HOLIDAY를 생각하게 되는데, 캐나다는 합격하기가 어려움으로 일본을 먼저 합격받고, 일본에서 캐나다
  			워킹홀리데이를 신청하는 큰 꿈을 가지게 된다..
  			<p>스키장에서 일하기 위해 겨울이 아닌 언어 실력을 쌓기 위해 여름에 나가게 되는데.. 물론 일본에 가기전까지는 일본어를 하나도 못하던 상태였다..
  			하지만 하고싶은 일이 있으니 남들처럼 아르바이트 이후에 놀지 않고 공부를 하게 되었다.. 그리고 한국인이 없는 일본 스키장에 들어가서 잠시나마
  			일을 하게 된다.. 하지만 외국인 노동자의 현실을 파악하고 오래 견디지 못하고 그만 두게 된다.. 그리고 인터넷 쇼핑몰에서 남은 기간을 채우며..
  			일본어 공부와 캐나다 워킹홀리데이를 준비하게 되는데..</p></article>
		
		
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