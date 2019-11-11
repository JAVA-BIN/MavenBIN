<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
<head>
	<meta charset="UTF-8">
	<title>I'm JAVABEAN</title>
    <link href="css/reset5.css" rel="stylesheet" type="text/css">
    <link href="css/front.css" rel="stylesheet" type="text/css">
    <link  href="css/themes/default/default.css" rel="stylesheet" type="text/css">
    <link href="css/nivo-slider.css" rel="stylesheet" type="text/css">
    <link href="css/bjqs.css" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Droid+Sans' rel='stylesheet' type='text/css'>
	
</head>
<body>
	<div id="wrap">
		<%-- header part --%>
		<jsp:include page="../include/header.jsp" />
        <div class="slider-wrapper theme-default">
            <div id="slider" class="nivoSlider">
                <img src="imgs/main1.jpg" width="950" height="500"> 
                <img src="imgs/main2.JPG" width="950" height="500"> 
                <img src="imgs/main3.PNG" width="950" height="500"> 
                <img src="imgs/main4.PNG" width="950" height="500"> 
                <img src="imgs/main5.JPG" width="950" height="500"> 
            </div>
        </div>    
        <div class="clear"></div>
        <div id="justar">
        	<h1>두둠칫</h1>
        	<figure id="slide">
        	<ul class="bjqs">
        		<li><img src="imgs/두.jpg" width="161" height="125"></li>
        		<li><img src="imgs/둠.jpg" width="161" height="125"></li>
        		<li><img src="imgs/칫.jpg" width="161" height="125"></li>
        	</ul> 
        	</figure>	
        </div>
        <div id="notinews">
        	<div class="container">
            <ul class="tabs">
                <li><a href="#tab1">게시판</a></li>
                <li><a href="#tab2">News</a></li>        
            </ul>
            	<div class="tab_container">
                    <div id="tab1" class="tab_content">
                         
                        <c:choose>
             		 		<c:when test="${count gt 0}"><%-- ${not empty boardList} --%>
             				<c:forEach var="board" items="${boardList}">
                        	<ul>
	                            <li><a href="content.do?num=${board.num}&pageNum=${pageNum}">${board.subject}</a></li>
	                        </ul>
	        				</c:forEach>
							</c:when>
							<c:otherwise>
							</c:otherwise>
						</c:choose>
		
                    </div>
                    <div id="tab2" class="tab_content">
                         <ul>
                            <li><a href="#">여기는 뉴스가 들어가는 곳입니다.</a></li>
                            <li><a href="#">여기는 뉴스가 들어가는 곳입니다.</a></li>
                            <li><a href="#">여기는 뉴스가 들어가는 곳입니다.</a></li>
                            <li><a href="#">여기는 뉴스가 들어가는 곳입니다.</a></li>
                            <li><a href="#">여기는 뉴스가 들어가는 곳입니다.</a></li>                        
                        </ul>
                    </div>        
            	</div>
       		</div>
        </div>
        
		<div id="social">
        <h3>JAVABEAN BLOG</h3>
            <ul>
                <li><a href="https://blog.naver.com/chea__" onmouseover="fun1();">
                <img src="imgs/N.png" width="396" height="374"></a></li>
            </ul>
        </div>    
        <div class="clear"></div>
        <%-- footer part --%>
		<jsp:include page="../include/footer.jsp" />
</div>


    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript" src="scripts/jquery.nivo.slider.js"></script>
    <script type="text/javascript" src="scripts/bjqs-1.3.min.js"></script>
    <script type="text/javascript">
   $(window).load(function() {
        $('#slider').nivoSlider();
    });
	// 아래는 tab 메뉴 
	$(document).ready(function() {
	//Default Action
		$(".tab_content").hide(); //Hide all content
		$("ul.tabs li:first").addClass("active").show(); //Activate first tab
		$(".tab_content:first").show(); //Show first tab content	
		//On Click Event
		$("ul.tabs li").click(function() {
			$("ul.tabs li").removeClass("active"); //Remove any "active" class
			$(this).addClass("active"); //Add "active" class to selected tab
			$(".tab_content").hide(); //Hide all tab content
			var activeTab = $(this).find("a").attr("href"); //Find the rel attribute value to identify the active tab + content
			$(activeTab).fadeIn(); //Fade in the active content
			return false;
		});
	});
	//
      $(document).ready(function() {
        
        $('#slide').bjqs({
          'animtype' : 'slide',
          showcontrols : false,
          showmarkers : false,
          'width' : 165,
          'height' : 130
        });
        
      });
	function fun1() {
		location.href = 'https://blog.naver.com/chea__';
	}
    </script>
</body>
</html>