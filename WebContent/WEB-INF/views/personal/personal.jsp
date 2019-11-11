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
  			<h2>Programmer JAVABEAN</h2>
  			 <figure> 
				<img src="imgs/P.jpg" alt="JAVABEAN" width="350" height="450">
				<figcaption>JAVABEAN</figcaption> 
  			</figure>
  			<h1>IT계의 루키 JAVABEAN</h1>
  			<p>CANADA에서 CHEF의 길을 걸어가던 중 큰 교통사고와 여러가지 문제들로 인해 한국행을 결심하여 한국으로 돌아온 채빈은
  			진정으로 자신이 하고싶은 일이 무엇인지 고민하던 도중 CANADA에서부터 도전해보고 싶었던 IT의 길을 가게 되었는데..
  			<p>2019년 IT를 처음 접한 채빈은 시작과 동시에 큰 주가를 올리기 시작했고 JAVABEAN이라는 별칭을 얻으며,
  			지금의 모습까지 쉬지않고 달려왔고 달려가고 있다. 하지만 여기까지 오는 것에는 당연히 얻어지는 결과가 아니라
  			그 전의 많은 직업과 학생시절부터의 많은 노력과 경험이 있었으므로 지금의 이 자리까지 오게되었다고 한다.
  			<p>IT를 처음접하고 기본지식조차 없던 시절부터 남들보다 늦게 배워가기 시작하여 남들보다 빠르게 익혀 나가고 있다고 한다.</article>
		
		
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