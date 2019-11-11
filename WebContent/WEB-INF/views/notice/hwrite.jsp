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
  				<h1 id="customer"><div>VISITOR</div></h1>
  		<article>
  			<h2>JAVABEAN 회원 게시판</h2>
      <form action="hWrite.do" method="post" name="frm"  enctype="multipart/form-data">
		<table id="notice">
			    <tr>
			        <th class="twrite">ID</th>
			    <td class="left" width="300">
			    <input type="text" name="username" value="${id}" readonly>
			    </td>
			    </tr>
				      <input type="hidden" name="passwd" />
			    <tr>
			        <th class="twrite">제목</th>
			        <td class="left">
			        <input type="text" name="subject">
			        </td>
			    </tr> 
			    <tr>
  					<th class="twrite">FILE</th>
    				<td class="left">
    					<div id="file_container">
   					 		<input type="file" name="filename">
    					</div>
    				<button type="button" onclick="addFileElement(); ">파일 추가</button>
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
			    <input type="submit" value="글쓰기"  class="snip1535" />
			    <input type="reset" value="다시작성" class="snip1535" />
			    <input type="button" value="목록보기" class="snip1535" onclick="location.href='hnotice.do'"/>
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
		var num = 2; // 초기값 2
		function addFileElement() {
			if (num > 5) { // 파일업로드 최대 5개까지만 허용할 때
				alert('최대 5개까지만 업로드 가능합니다.');
				return;
			}
			// div요소에 file타입 input요소를 추가하기
			var input = '<br><input type="file" name="filename'+num+'">';
			num++; // 다음번 추가를 위해 값을 1 증가
			// id속성값이 file_container인 div요소의 참조 구하기
			var fileContainer = document.getElementById('file_container');
			fileContainer.innerHTML += input;
		}
	</script>
</body>
</html>