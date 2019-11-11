<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<%-- head part --%>
	<jsp:include page="../include/head.jsp" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="wrap">
			<%-- header part --%>
			<jsp:include page="../include/header.jsp" />
   
  		<h1 id="product"><div>MY PAGE</div></h1>
  		<article>
			<h2>INFORMATION</h2>
		    	<div class="row margin">
        <div class="input-field col s12">
          <!-- <i class="mdi-social-person-outline prefix"></i> -->
          <i class="material-icons prefix">account_circle</i>ID
          <input type="text" name ="id" value="${id}" readonly /><br>
          <label for="username"></label>
        </div>
      </div>
 		<div class="row margin">
        <div class="input-field col s12">
          <!-- <i class="mdi-social-person-outline prefix"></i> -->
          <i class="material-icons prefix">account_circle</i>NAME
          <input type="text" name ="id" value="${member.name}" readonly /><br>
          <label for="username"></label>
        </div>
      </div>
     	 <div class="row margin">
        <div class="input-field col s12">
          <!-- <i class="mdi-social-person-outline prefix"></i> -->
          <i class="material-icons prefix">email</i>EMAIL
          <input type="text" name ="id" value="${member.email}" readonly /><br>
          <label for="email"></label>
        </div>
  		</div>
  
	
  		</article>
		<%-- side part --%>
       <jsp:include page="mypage_side.jsp" />

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