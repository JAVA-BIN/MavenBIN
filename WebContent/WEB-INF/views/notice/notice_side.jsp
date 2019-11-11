<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<%-- ${cookie.쿠키이름.value} 로 접근 --%> 
<c:if test="${not empty cookie.id.value}">
	<c:set var="id" value="{cookie.id.value}" scope="session" />
</c:if>
		<aside>
  			<h3><div>COMMUNITY</div></h3>
  			<ul>
  			<c:choose>
				<c:when test="${empty id}">
  				<li><a href="notice.do">비회원게시판</a></li>
  				</c:when>
       			<c:otherwise>
  				<li><a href="hnotice.do">회원게시판</a></li>
  				</c:otherwise>
			</c:choose>
  				<li><a href="chat.do">채팅방</a></li>
  			</ul>
  		</aside>