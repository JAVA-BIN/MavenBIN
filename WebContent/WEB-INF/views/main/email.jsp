<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
<head>
	<meta charset="UTF-8">
	<title>I'm JAVABEAN</title>
    <link href="css/reset5.css" rel="stylesheet" type="text/css">
    <link href="css/front.css" rel="stylesheet" type="text/css">
    <link  href="css/themes/default/default.css" rel="stylesheet" type="text/css">
    <link href="css/nivo-slider.css" rel="stylesheet" type="text/css">
    <link href="css/bjqs.css" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Droid+Sans' rel='stylesheet' type='text/css'>
	
<style>
	body{
     	background-color: #B0E0E6; 
		background-image:url('imgs/email2.JPG');
		background-repeat:no-repeat;
		background-position:center;
		background-size:1000px 1200px;
		color:			#FF4500;
		text-align: center;
		font-size:xx-large;
	}
	input[type=text] {
				padding:5px 5px 5px 10px;
				border-radius:2px;
				border:1px solid #ccc;
	}
</style> 
</head>
<body>
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
				  	<li><a href="main.do">MAIN</a></li>
				  	<li><a href="memberLogout.do">LOGOUT</a></li>
					</c:otherwise>
				</c:choose>
				</ul>
			</div>
		</header>
<fieldset>
	<legend>사용자 문의</legend><br><br>
	<form action="email.do" method="post">
	<h1>TITLE </h1>
	<input type="text" placeholder="TITLE" name="title" /><br><br>
	<h1>NAME </h1>    
	<input type="text" placeholder="NAME" name="name" /><br><br>
	<h1>CONTENT </h1>
	<textarea cols="50" rows="20" placeholder="CONTENT" name="content"></textarea><br><br>
	<input type="submit" value="보내기">
	<input type="reset" value="초기화">   
	</form>
</fieldset>
<script>
	var dropbox = document.getElementById('imgBG'); 
	// Setup drag and drop handlers. 
	dropbox.addEventListener('dragover', stopDefault, false); 
	dropbox.addEventListener('drop', onDrop, false); 
	 function stopDefault(e) { 
	      e.stopPropagation(); 
	      e.preventDefault(); 
	    } 
	    function onDrop(e) { 
	        e.stopPropagation(); 
	        e.preventDefault(); 
	        var readFileSize = 0; 
	        var files = e.dataTransfer.files; 
	        // $('#imgFile').prop('files', files);
	        var fileElem = document.getElementById('imgFile');
	        fileElem.files = files; // 파일리스트를 파일요소에 설정
	        file = files[0]; 
	        readFileSize += file.fileSize; 
	        // Only process image files. 
	        var imageType = /image.*/; 
	        if (!file.type.match(imageType)) { 
	            return; 
	        } 
	        var reader = new FileReader(); 
	        reader.onerror = function(e) { 
	            alert('Error code: ' + e.target.error); 
	        }; 
	        // Create a closure to capture the file information. 
	        reader.onload = function(evt) {
	            // evt.target은 FileReader
	            console.log(evt.target);
	            console.log(evt.target.result);
	            dropbox.src = evt.target.result; 
	        } 
	        // Read in the image file as a data url.   
	        reader.readAsDataURL(file); 
	    } 
</script>
</body>
</html>    