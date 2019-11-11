<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html>
<head>
 	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css" rel="stylesheet" type="text/css">
 	<link href="css/log.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div id="login-page" class="row">
  <div class="col s12 z-depth-4 card-panel">
		<form class="login-form" action="memberUpdate.do" method="post">
		<div class="row">
        <div class="input-field col s12 center">
        <h4>UPDATE</h4>
        </div>
      </div>
		
		<div class="row margin">
        <div class="input-field col s12">
          <i class="material-icons prefix">account_circle</i>
          <input type="text" name ="id" value="${id}" readonly /><br>
        </div>
      </div>
       <div class="row margin">
        <div class="input-field col s12">
          <i class="material-icons prefix">vpn_key</i>
          <input type="password" name = "passwd" />
        </div>
      </div>
 		<div class="row margin">
        <div class="input-field col s12">
          <i class="material-icons prefix">account_circle</i>
          <input type="text" name="name" value="${member.name}" />
        </div>
      </div>
     	 <div class="row margin">
        <div class="input-field col s12">
          <i class="material-icons prefix">email</i>
          <input type="email" name="email" value="${member.email}" />
        </div>
  		</div>
 		
 		<div class="row">
          <div class="input-field col s12">
            <button type="submit" class="btn waves-effect waves-light col s12">UPDATE</button>
          </div>
         </div>
         <div class="row">
          <div class="input-field col s12">
            <button type="button" class="btn waves-effect waves-light col s12" onclick="location.href='memberDeleteForm.do';">DELETE</button>
          </div>
         </div>
         <div class="input-field col s12">
              <p class="margin center medium-small sign-up">Do you wanna go back? <a href="main.do">Main</a></p>
          </div>
          
		</form>
  </div>
</div>	
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>
</body>
</html>