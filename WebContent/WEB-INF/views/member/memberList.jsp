<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link href="css/front.css" rel="stylesheet" type="text/css">
    <link  href="css/themes/default/default.css" rel="stylesheet" type="text/css">
    <link href="css/nivo-slider.css" rel="stylesheet" type="text/css">
    <link href="css/bjqs.css" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Droid+Sans' rel='stylesheet' type='text/css'>
	
<style>
	body{
     	background-color: 	#F5F5F5; 
		background-image:url('imgs/List.JPG');
		background-repeat:no-repeat;
		background-position:center;
		background-size:1400px 1200px;
		color: 			black;
		text-align: center; 
		font-size:larger;
		font-family :papyrus;
	}
	table,td,th {
		border: 4px outset #C0C0C0;
		border-spacing: 0px; 
		top:50px;
		margin:auto;
		font-size:larger;
	}
</style>
<title>I'm JAVABEAN</title>
</head>
<body> 
	<form action="memberListDelete.do" method="post">
	<header>
		<div id="hlink">
				<ul>
       			  	<li>${id}님</li>
				  	<li><a href="main.do">MAIN</a></li>
				  	<li><a href="memberLogout.do">LOGOUT</a></li>
				</ul>
			</div>
		</header>
	<table>
	<tr>
		<th colspan="3"><a href="memberList.do">회원 관리</a></th>
		<th colspan="3"><a href="noticeList.do">글 관리</a></th>
	</tr>
	<tr>
		<th>ID</th>
		<th>PASSWD</th>
		<th>NAME</th>
		<th>EMAIL</th>
		<th>DELETE</th>
	</tr>
	<c:choose>
		<c:when test="${not empty members}">
		<c:forEach var="member" items="${members}">
		<tr>
			<td>${member.id}</td>
			<td>${member.passwd}</td>
			<td>${member.name}</td>
			<td>${member.email}</td>
			<td><input type="checkbox" name="ids" value="${member.id}"></td>
		</tr>
		</c:forEach>
		</c:when>
		<c:otherwise>   
				<tr>
					<td colspan="5">맴버가 없습니다.</td>
				</tr>
		</c:otherwise>
	</c:choose>
	</table>
	<p>
	<input type="submit" value="DELETE">
	<input type="reset" value="RESET" >
	</p>		
	</form>

</body>
</html>