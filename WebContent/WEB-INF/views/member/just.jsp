<%@page import="java.util.List"%>
<%@page import="com.exam.dao.MemberDao"%>
<%@page import="com.exam.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
//DAO 준비
MemberDao memberDao = MemberDao.getInstance();
// 전체회원정보 가져오기 메소드 호출
List<MemberVO> memberList = memberDao.getMembers();
%>
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
   
  		<h1 id="product"><div>MY PAGE</div></h1>
  		<article>
  			<h2>UPDATE INFORMATION </h2>
		<form action="updateProcess.jsp" method="post">
				<%
		   		if (memberList.size() > 0) {
		        for (MemberVO member : memberList) {
		        %>
  			ID: <input type="text" name = "id" value="<%=member.getId() %>" readonly /><br>
  			PASSWORD: <input type="password" name = "passwd" /><br>
  			NAME: <input type="text" name="name" value="<%=member.getName() %>" /><br>
  			E-MAIL: <input type="email" name="email" value="<%=(member.getEmail() == null) ? "" : member.getEmail() %>" /><br>
  			GENDER: <input type="radio" name="gender" value="남" <%=(member.getGender() != null && member.getGender().equals("남")) ? "checked" : "" %> />남자
          			<input type="radio" name="gender" value="여" <%=(member.getGender() != null && member.getGender().equals("여")) ? "checked" : "" %> />여자<br>
          	LIKE JAVABEAN: <input type="radio" name="bean" value="yes" <%=(member.getBean() != null && member.getBean().equals("yes")) ? "checked" : "" %> />yes
          				   <input type="radio" name="bean" value="no" <%=(member.getBean() != null && member.getBean().equals("no")) ? "checked" : "" %> />no<br>
   				<%}} else { // memberList.size() == 
		        %><tr>
		         <td colspan= "7">
		             회원 데이터가 없습니다.
		         </td>
		        </tr>
		        <%
		    }      
		    %>
 
 
   <button type="submit">UPDATE</button>      
		</form>
		<br>
		<a href="../main/main.jsp">MAIN PAGE</a>		
  		</article>
		<aside>
  			<h3><div>MY PAGE</div></h3>
  			<ul>
  				<li><a href="mypage.jsp">MY PAGE</a></li>
  				<li><a href="withdrawal.jsp">Withdrawal</a></li>
  			</ul>
  		</aside>

        <div class="clear"></div>
       <%-- footer part --%>
       <jsp:include page="../include/footer.jsp" />
	</div>


    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript" src="../scripts/jquery.fancybox.pack.js"></script>
    <script type="text/javascript" src="../scripts/prettify.packed.js"></script>
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