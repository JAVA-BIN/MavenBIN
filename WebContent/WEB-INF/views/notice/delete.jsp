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
				<form action="delete.do" method="post" name="frm" onsubmit="return check();">
				<%-- 수정할 글번호는 눈에 안보이는 hidden 타입 입력요소 사용 --%>
				<input type="hidden" name="pageNum" value="${pageNum}">
				<input type="hidden" name="num" value="${num}">
				<table id="notice">
					<tr>
						<th class="twrite">글 패스워드</th>
						<td><input type="password" name="passwd" /></td>
					</tr>
				</table>
				<div id="table_search">
				<input type="submit" value="글삭제" class="btn" />
				<input type="reset" value="다시작성" class="btn" />
				<input type="button" value="목록보기" class="btn" onclick="location.href='notice.do?pageNum=${pageNum}';"/>
				</div>
				</form>
		</article>  
     <div class="clear"></div>
   <jsp:include page="../include/footer.jsp" />
</div>
<script>
function check() {
	var strPasswd = document.frm.passwd.value.trim();
	if (strPasswd.length == 0) {
		alert('게시글 패스워드는 필수 입력사항입니다.');
		strPasswd.focus(); // 커서가 깜빡이게함
		return false;
	}
}
</script>
<script>
function checkDelete() {
	var result = confirm('${num}번 글을 정말로 삭제하시겠소?');
	if (result == false) {
		location.href = 'delete.do?num=${num}&pageNum=${pageNum}';			
	}
}
</script>
</body>
</html> 