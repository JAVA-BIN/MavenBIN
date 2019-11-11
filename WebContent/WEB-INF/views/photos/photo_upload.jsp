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
   
  		<h1 id="community"><div>GALLERY</div></h1>
		<article>
			<h2>PHOTO UPLOAD </h2>
			<form id="upphoto" action="photo_uploadProcess.jsp" method="post" name="frm" enctype="multipart/form-data">
			<div id="photoframe"> 
				<img id="imgBG" src="../imgs/upphoto.gif" class="photoplace"> 
			</div> 
			<p><label>NAME</label><input type="text"></p>
			<p><label>PIC DETAIL</label><textarea></textarea></p>
			<div class="bt"><a href="photo_upload.jsp">UPLOAD</a></div>
		    <%-- <input name="" type="button" value="전송 하기 "> --%>
		</form>	
  		</article>
		
		
  		<aside>
  			<h3><div>JAVA GALLERY</div></h3>
  			
  		</aside>


<script type="text/javascript"> 
	var dropbox = document.getElementById('imgBG'); 

	// Setup drag and drop handlers. 
	dropbox.addEventListener('dragenter', stopDefault, false); 
	dropbox.addEventListener('dragover', stopDefault, false); 
	dropbox.addEventListener('dragleave', stopDefault, false); 
	dropbox.addEventListener('drop', onDrop, false); 

	function stopDefault(e)  
	{ 
	  e.stopPropagation(); 
	  e.preventDefault(); 
	} 
	function onDrop(e)  
	{ 
	e.stopPropagation(); 
	e.preventDefault(); 

	var readFileSize = 0; 
	var files = e.dataTransfer.files; 

	file = files[0]; 
	readFileSize += file.fileSize; 


	// Only process image files. 
	var imageType = /image.*/; 

	if (!file.type.match(imageType))  
	{ 
	return; 
	} 
	var reader = new FileReader(); 


	reader.onerror = function(e)  
	{ 
	alert('Error code: ' + e.target.error); 
	}; 


	// Create a closure to capture the file information. 
	reader.onload = (function(aFile)  
	{ 
	return function(evt)  
	{ 
	dropbox.src = evt.target.result; 
	} 
	})(file); 

	// Read in the image file as a data url. 
	reader.readAsDataURL(file); 
} 
</script> 

		
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