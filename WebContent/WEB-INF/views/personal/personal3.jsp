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
  			<h2>Chef JAVABEAN</h2>
  			 <figure> 
				<img src="imgs/CC.jpg" alt="JAVABEAN" width="350" height="450">
				<figcaption>Chef BIN</figcaption> 
  			</figure>
  			<h1>채빈이 하고싶은거 다 해</h1>
  			<p>CANADA에서 server로 많은 돈을 벌던 채빈은 server보다는 주방에서 일하는 게 영주권을 따기 쉽다는 것을 알게 되고..
  			주방으로 들어가게 되는데 sushi집에서 일본인들과 일본어로 대화를 하며 경력을 쌓게 되면서 영주권 스폰 해주는 곳을 알아보게 된다.
  			<p>Restaurant & Bar를 함께 하고 있는 재오픈한지 얼마 되지않은 곳에서 새롭게 요리를 배우며 차근차근 준비해나가고 영주권 뿐만
  			아니라 수쉐프의 자리까지도 차지하게 되는데.. 운은 따라주지 않는지 비자는 쉽게 나오지 않고 큰 교통사고와 함께 악재의 연속으로
  			그리고 주방에서 일하는 것이 자신의 미래를 위한 것이 아니라 단순히 영주권을 위한 것이라는 걸 알게 되는데....</p></article>
		
		
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