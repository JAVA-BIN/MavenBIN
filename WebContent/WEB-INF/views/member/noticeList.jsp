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
		top:50px;
		margin:auto;
		font-size:larger;
	} 
</style>
<title>I'm JAVABEAN</title>
</head>
<body>
	<form action="noticeListDelete.do" method="post">
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
		    <th>NO.</th>
		    <th>TITLE</th>
		    <th>WRITER</th>
		    <th>DATE</th>
		    <th>READ</th>
		    <th>DELETE</th>
		  </tr>
		  <c:choose>
		 	<c:when test="${pageInfoMap.count gt 0}"><%-- ${not empty boardList} --%>
			<c:forEach var="board" items="${boardList}">
				<%-- <tr onclick="location.href='content.do?num=${board.num}&pageNum=${pageNum}';"> --%>
				<td>${board.num}</td>
				<td class="left">
					<c:if test="${board.reLev gt 0}">
						<c:set var="level" value="${board.reLev * 10}" />
				        <img src="imgs/level.gif" width="${level}" height="13">
				    </c:if>
				    ${board.subject}</td>
				  	<td>${board.username}</td>
				  	<td><fmt:formatDate value="${board.regDate}" pattern="yyyy.MM.dd"/></td>
				  	<td>${board.readcount}</td>
				  	<td><input type="checkbox" name="nums" value="${board.num}"></td>
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
					<a href="noticeList.do?pageNum=${pageInfoMap.startPage - pageInfoMap.pageBlock}&search=${search}">[이전]</a> 
				</c:if>
				<%-- 페이지블록 페이지 5개 출력 --%>
				<c:forEach var="i" begin="${pageInfoMap.startPage}" end="${pageInfoMap.endPage}" step="1">
					<a href="noticeList.do?pageNum=${i}&search=${search}">
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
					<a href="noticeList.do?pageNum=${pageInfoMap.startPage + pageInfoMap.pageBlock}&search=${search}">[다음]</a> 
				</c:if>
			</c:if>
			</ul>		
        </div>
       <p>
		<input type="submit" value="DELETE">
		<input type="reset" value="RESET" >
	  </p> 
	</form>	
        <form id="searchbbs"> 
        	<input type="search" name="search" value="${search}" class="input_box"> 
        	<input type="submit" value="search">
        </form>
	
	
</body>
</html>