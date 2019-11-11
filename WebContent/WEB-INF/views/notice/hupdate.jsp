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
      <form action="hupdate.do" method="post" name="frm" onsubmit="return check();" enctype="multipart/form-data">
		<input type="hidden" name="pageNum" value="${pageNum}">
		<input type="hidden" name="num" value="${num}">
		<table id="notice">
			    <tr>
			        <th class="twrite">ID</th>
			    <td class="left" width="300">
			    <input type="text" name="username" value="${board.username}" readonly>
			    </td>
			    </tr>
			     <input type="hidden" name="passwd" />
			    <tr>
			        <th class="twrite">제목</th>
			        <td class="left">
			        <input type="text" name="subject" value="${board.subject}">
			        </td>
			    </tr>
				<tr>
         		 <th class="twrite">FILE</th>
      			  <td class="left" >
      			  		<c:if test="${not empty attachList}">
			                <ul>
			                <c:forEach var="attach" items="${attachList}">
			                    <li>
			                    <div class="attach-item">
			                    	${attach.filename}
			                        <span class="del" style="color: red; font-weight: bold;" >X</span>
			                    </div>
			                    <input type="hidden" name="oldFiles" value="${attach.uuid}_${attach.filename}"/>
			                    </li>
			                  </c:forEach>
			                </ul>
			            </c:if>
			            <button type="button" id="btn">새로 업로드</button>
			            <div id="newFilesContainer"></div>
			        </td>
			    </tr>             
			    <tr> 
			        <th class="twrite">한마디</th>
			        <td class="left">
			            <textarea name="content" rows="20" cols="40">${board.content}</textarea>
			        </td>
			    </tr>  
			</table>
			<div id="table_search">
			    <input type="submit" value="글수정"  class="snip1535" />
			    <input type="reset" value="다시작성" class="snip1535" />
			    <input type="button" value="목록보기" class="snip1535" onclick="location.href='hnotice.do?pageNum=${pageNum}';"/>
			</div>
			</form> 
    		</article>

 			<%-- side part --%>
       		<jsp:include page="notice_side.jsp" /> 

       	 <div class="clear"></div>
            <%-- footer part --%>
       		<jsp:include page="../include/footer.jsp" />          
      	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
	var user = document.frm.username.value;
	if (user != "${id}"){        
		alert('${id}님이 쓴글이 아닙니다.')
		return false;
	} 
	// 수정 의도 확인
	var result = confirm('${num}번 글을 정말로 수정하시겠습니까?');
	if (result == false) {
		return false;
	}
	return true;
}
//id btn인 버튼에 클릭이벤트 연결
const btn = document.getElementById('btn');
let num = 1;
btn.onclick = function () {
    let str = '<input type="file" name="newFile' + num + '"><br>';
    let container = document.getElementById('newFilesContainer');
    container.innerHTML += str; // 뒤에 추가
    num++;
};
$('span.del').on('click', function () {  
    var $li = $(this).closest('li');
    $li.children('input[type="hidden"]').attr('name', 'delFiles');
    $li.children('div.attach-item').remove();    
});
</script>
</body>
</html>