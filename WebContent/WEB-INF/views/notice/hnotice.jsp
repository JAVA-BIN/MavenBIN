<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
  			<h2>JAVABEAN 회원 게시판</h2>
      <table id="cbbs">
		  <tr>
		    <th scope="col" class="tno">NO.</th>
		    <th scope="col" class="tttitle">TITLE</th>
		    <th scope="col" class="twrite">WRITER</th>
		    <th scope="col" class="tdate">DATE</th>
		    <th scope="col" class="tread">READ</th>
		  </tr>
		  
			<c:choose>
			 	<c:when test="${pageInfoMap.count gt 0}"><%-- ${not empty boardList} --%>
				<c:forEach var="board" items="${boardList}">
				   <tr onclick="location.href='hcontent.do?num=${board.num}&pageNum=${pageNum}';">
				  	<td>${board.num}</td>
				  	<td class="left">
				  		<c:if test="${board.reLev gt 0}">
				  			<c:set var="level" value="${board.reLev *10}" />
					        <img src="imgs/level.gif" width="${level}" height="13">
					        <img src="imgs/bullet.gif" >
				        </c:if>
					  	${board.subject}</td>
					  	<td>${board.username}</td>
					  	<td><fmt:formatDate value="${board.regDate}" pattern="yyyy.MM.dd"/></td>
					  	<td>${board.readcount}</td>
					  </tr>
				</c:forEach>
				</c:when>
				<c:otherwise>
				  <tr>
				  	<td colspan="5">게시판 글이 없습니다.</td>
				  </tr>
				</c:otherwise>
			</c:choose>
        </table>
        <div id="page">
        	<ul class="paging">
        	<c:if test="${pageInfoMap.count gt 0}">
				<%-- [이전] 출력 --%>
				<c:if test="${pageInfoMap.startPage gt pageInfoMap.pageBlock}">
					<a href="hnotice.do?pageNum=${pageInfoMap.startPage - pageInfoMap.pageBlock}&search=${search}">[이전]</a> 
				</c:if>
				<%-- 페이지블록 페이지 5개 출력 --%>
				<c:forEach var="i" begin="${pageInfoMap.startPage}" end="${pageInfoMap.endPage}" step="1">
					<a href="hnotice.do?pageNum=${i}&search=${search}">
					<c:choose>
						<c:when test="${i eq pageNum}">
							<span style="font-weight: bold;">[${i}]</span>
						</c:when>
						<c:otherwise>
							${i}
						</c:otherwise>
					</c:choose>
					</a>
				</c:forEach>
				<%-- [다음] 출력 --%>
				<c:if test="${pageInfoMap.endPage lt pageInfoMap.pageCount}">
					<a href="hnotice.do?pageNum=${pageInfoMap.startPage + pageInfoMap.pageBlock}&search=${search}">[다음]</a> 
				</c:if>
			</c:if>
        	</ul>		
        </div>		
        <div class="clear"></div>
        <form id="searchbbs"> 
        	<input type="search" name="search" value="${search}" class="input_box"> 
        	<input type="submit" value="search">
        	 
        </form>
        <div class="bt"><a href="hWriteForm.do"> WRITE </a></div>
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
</body>
</html>