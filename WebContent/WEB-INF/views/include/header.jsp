<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%-- ${cookie.쿠키이름.value} 로 접근 --%> 
<c:if test="${not empty cookie.id.value}">
	<c:set var="id" value="{cookie.id.value}" scope="session" />
</c:if>
<div id="logo"><a href="main.do">CB Corp.</a></div>
		<header>
			<div id="hlink">
				<ul>
				<c:choose>
					<c:when test="${empty id}">
	       				<li><a href="memberLoginForm.do">SIGN IN</a></li>
	       			  	<li><a href="memberJoinForm.do">SIGN UP</a></li>
       			  	</c:when>
       			  	<c:otherwise>
       			  	<li>${id}님</li>
       			  		<c:choose>
	       			  	<c:when test="${id eq 'admin'}"> 
	       			  		<li><a href="mypageForm.do">MY PAGE</a></li>
						  	<li><a href="memberLogout.do">LOGOUT</a></li>
						  	<li><a href="memberList.do">MANAGE</a></li>
	       			  	</c:when>
	       			  	<c:otherwise>
						  	<li><a href="mypageForm.do">MY PAGE</a></li>
						  	<li><a href="memberLogout.do">LOGOUT</a></li>
						  	<li><a href="emailForm.do">EMAIL</a></li>
	       			  	</c:otherwise>
	       			  	</c:choose>
					</c:otherwise>
				</c:choose>
				</ul>
			</div>
           
			<nav>
				<ul>
					<li class="n1"><a href="personal.do">PERSONAL</a></li>
					<li class="n2"><a href="experience.do">EXPERIENCE</a></li>
					<li class="n3"><a href="photos.do">GALARY</a></li>
					<c:choose>
					<c:when test="${empty id}">
					<li class="n4"><a href="notice.do">VISITOR</a></li>
					</c:when>
       			  	<c:otherwise>
       			  	<li class="n4"><a href="hnotice.do">VISITOR</a></li>
       			  	</c:otherwise>
					</c:choose>
				</ul>
			</nav>
		</header>