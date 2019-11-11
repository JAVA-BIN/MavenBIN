<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  				<h1 id="customer"><div>VISITOR</div></h1>
  		<article>
  			<h2>JAVABEAN 비회원 게시판</h2>
      <form action="update.do" method="post" name="frm" onsubmit="return check();">
		<input type="hidden" name="pageNum" value="${pageNum}">
		<input type="hidden" name="num" value="${board.num}">
		<table id="notice">
			<c:choose>
				<c:when test="${empty id}">
			    <tr>
			        <th class="twrite">NAME</th>
			    <td class="left" width="300">
			    <input type="text" name="username" value="${board.username}" readonly="readonly">
			    </td>
			    </tr>
			    <tr>
			        <th class="twrite">NOTICE PASSWORD</th>
			        <td class="left">
			        <input type="password" name="passwd">
			        </td>
			    </tr> 
				</c:when>
				<c:otherwise>
			    <tr>
			        <th class="twrite">NAME</th>
			    <td class="left" width="300">
			    <input type="text" name="username" value="${id}" readonly>
			    </td>
			    </tr>
				</c:otherwise>
			</c:choose>
				
			    <tr>
			        <th class="twrite">제목</th>
			        <td class="left">
			        <input type="text" name="subject">
			        </td>
			    </tr> 
			    <tr>
			        <th class="twrite">한마디</th>
			        <td class="left">
			            <textarea name="content" rows="20" cols="40"></textarea>
			        </td>
			    </tr>  
			    
			</table>
			<div id="table_search">
			    <input type="submit" value="글수정"  class="snip1535" />
			    <input type="reset" value="다시작성" class="snip1535" />
			    <input type="button" value="목록보기" class="snip1535" onclick="location.href='notice.do';"/>
			</div>
			</form> 
    		</article>

 			<%-- side part --%>
       		<jsp:include page="notice_side.jsp" /> 

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
  	<script>
		function check() {
			var strPasswd = document.frm.passwd.value.trim();
			if (strPasswd.length == 0) {
				alert('게시글 패스워드는 필수 입력사항입니다.');
				//strPasswd.focus(); // 커서가 깜빡이게함
				return false;
			} 
			// 수정 의도 확인
			var result = confirm('${board.num}번 글을 정말로 수정하시겠소?');
			if (result == false) {
				return false;
			}
		}
</script>
</body>
</html>