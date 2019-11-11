<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
<head>
	<%-- head part --%>
	<jsp:include page="../include/head.jsp" />
  <style>
	 table {
    width: 80%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
  }
  </style>
</head>
<body>
	<div id="wrap">
		<%-- header part --%>
	 	<jsp:include page="../include/header.jsp" />
  		<h1 id="customer"><div>VISITOR</div></h1>
  		<article>
  			<h2>JAVABEAN 비회원 게시판</h2>
			<table id="notice">
			    <tr>
			        <th class="twrite">글번호</th>
			        <td class="left" width="200">${board.num}</td>
			        <th class="twrite">조회수</th>
			        <td class="left" width="200">${board.readcount}</td>
			    </tr> 
			    <tr>
			          <th class="twrite">작성자명</th>
			        <td class="left">${board.username}</td>
			        <th class="twrite">작성일자</th>
			        <td class="left"><fmt:formatDate value="${board.regDate}" pattern="yyyy년 MM월 dd일" /></td>
			    </tr> 
			    <tr>
			          <th class="twrite">글제목</th>
			        <td class="left" colspan="3">${board.subject}</td>
			    </tr>  
			    <tr>
			          <th class="twrite">글내용</th>
			        <td class="left" colspan="3"><pre>${board.content}</pre></td>
			    </tr> 
			</table><br><br><br>
				<div id="table_search">
				<input type="button" value="답글쓰기" class="snip1535" onclick="location.href='reWriteForm.do?reRef=${board.reRef}&reLev=${board.reLev}&reSeq=${board.reSeq}';"/>
			    <input type="button" value="글수정" class="snip1535" onclick="location.href='updateForm.do?num=${board.num}&pageNum=${pageNum}';"/>
				<input type="button" value="글삭제" class="snip1535" onclick="checkDelete();"/>
				</div>
		</article>
			<%-- side part --%>
       		<jsp:include page="notice_side.jsp" /> 

        <div class="clear"></div>
            <%-- footer part --%>
       		<jsp:include page="../include/footer.jsp" />          
      	</div>
<script>
	function checkDelete() {
		var result = confirm('${board.num}번 글을 정말로 삭제하시겠소?');
		if (result == true) {
		location.href = 'deleteForm.do?num=${board.num}&pageNum=${pageNum}';			
		}
	}
</script>

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