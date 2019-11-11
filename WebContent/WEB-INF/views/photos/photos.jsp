<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.exam.vo.BoardVO"%>
<%@page import="com.exam.dao.BoardDao"%>
<%@page import="java.util.List"%>
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
   
  		<h1 id="community"><div>GALLERY</div></h1>
  		<article>
  			<h2>포토갤러리</h2>
  			<article id="gallery">
  				<figure><a class="fancybox" data-fancybox-group="gallery" href="imgs/P9.jpg"><img src="imgs/P9.jpg"> <figcaption>northern lights</figcaption></a></figure>
				<figure><a class="fancybox" data-fancybox-group="gallery" href="imgs/P3.JPG" title="아름다움이란"><img src="imgs/P3.JPG"> <figcaption>천사 자바빈 </figcaption></a></figure>
				<figure><a class="fancybox" data-fancybox-group="gallery" href="imgs/P4.JPG"><img src="imgs/P4.JPG"> <figcaption>drumheller</figcaption></a></figure>
				<figure><a class="fancybox" data-fancybox-group="gallery" href="imgs/P5.JPG"><img src="imgs/P5.JPG"> <figcaption>canada olympic park</figcaption></a></figure>
				<figure><a class="fancybox" data-fancybox-group="gallery" href="imgs/P6.JPG"><img src="imgs/P6.JPG"> <figcaption>백수 자바빈</figcaption></a></figure>
				<figure><a class="fancybox" data-fancybox-group="gallery" href="imgs/P7.jpg"><img src="imgs/P7.jpg"> <figcaption>프리즌 브레이크</figcaption></a></figure>
				<figure><a class="fancybox" data-fancybox-group="gallery" href="imgs/P0.jpg" title="벗꽃과 직박구리"><img src="imgs/P0.jpg"> <figcaption>미쉐린 자바빈 </figcaption></a></figure>
				<figure><a class="fancybox" data-fancybox-group="gallery" href="imgs/P8.JPG"><img src="imgs/P8.JPG"> <figcaption>삼각관계</figcaption></a></figure>
				<figure><a class="fancybox" data-fancybox-group="gallery" href="imgs/P10.JPG"><img src="imgs/P10.JPG"> <figcaption>레이싱 자바빈 </figcaption></a></figure>			
				<figure><a class="fancybox" data-fancybox-group="gallery" href="imgs/P11.jpg"><img src="imgs/P11.jpg"> <figcaption>스키장의 아름다움 </figcaption></a></figure>	
				<figure><a class="fancybox" data-fancybox-group="gallery" href="imgs/P12.JPG"><img src="imgs/P12.JPG"> <figcaption>세상의 중심에서 </figcaption></a></figure>	
			</article>
			<div class="clear"></div>		
			<div id="page">
				<ul class="paging">
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>	
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">6</a></li>
				</ul>		
			</div>		
			<!-- <div class="bt"><a href="photo_upload.jsp">PHOTO UPLOAD</a></div> -->
  		</article>


  		<aside>
  			<h3><div>JAVA GALLERY</div></h3>

  		</aside>


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