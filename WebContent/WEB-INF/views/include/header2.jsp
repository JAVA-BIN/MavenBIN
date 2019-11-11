<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = null;
//쿠키찾기
Cookie[] cookies = request.getCookies();
if (cookies != null) {
	for (Cookie cookie : cookies) {
		if (cookie.getName().equals("id")) {
			id = cookie.getValue();
			session.setAttribute("id", id);
		}
	}
}
//세션값 가져오기 "id" 
id = (String) session.getAttribute("id"); 
%>
<div id="logo"><a href="../">CB Corp.</a></div>
		<header>
			<div id="hlink">
				<ul>
				<%if(id == null) { // 세션값 없음
       			%><li><a href="../member/login1.jsp">SIGN IN</a></li>
       			  <li><a href="../member/join1.jsp">SIGN UP</a></li><%
       			} else { // id != null 세션값 있음
       			%><li><%=id %>님</li>
				  <li><a href="../member/mypage.jsp">MY PAGE</a></li>
				  <li><a href="../member/logout.jsp">LOGOUT</a></li>
				<%} %>
				</ul>
			</div>

		</header>