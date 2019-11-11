<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<link href=css/log.css rel="stylesheet" type="text/css">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">
</head>
<body>

<div id="login-page" class="row">
    <div class="col s12 z-depth-4 card-panel">
      <form class="login-form" action="memberLogin.do" method="post" id="join">
        <div class="row">
          <div class="input-field col s12 center">
            <!-- <img src="images/login-logo.png" alt="" class="circle responsive-img valign profile-image-login"/> -->
            <p class="center login-form-text">LOGIN</p>
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <!-- <i class="mdi-social-person-outline prefix"></i> -->
            <i class="material-icons prefix">account_circle</i>
            <input id="id" name="id" type="text" placeholder="ID" style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR4nGP6zwAAAgcBApocMXEAAAAASUVORK5CYII=&quot;); cursor: auto;"/>
            <label for="id" data-error="wrong" class="center-align" data-success="right"></label>            
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <!-- <i class="mdi-action-lock-outline prefix"></i> -->
            <i class="material-icons prefix">vpn_key</i>
            <input id="passwd" name="passwd" type="password" placeholder="PASSWORD" style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR4nGP6zwAAAgcBApocMXEAAAAASUVORK5CYII=&quot;);"/>
            <label for="passwd"></label>
          </div>
        </div>
        
        <div class="row">          
          <div class="input-field col s12 login-text">                   
              <input type="checkbox" id="test6" checked="checked" />
              <label for="test6" class="pointer-events">Remember me</label>
          </div>
        </div>
        
        <div class="row">
          <div class="input-field col s12">
            <button type="submit" class="btn waves-effect waves-light col s12">Login</button>
          </div>
          <div class="input-field col s12">
            <a href="" class="btn waves-effect waves-light col s12 light-blue darken-4">FACEBOOK Login</a>
          </div>
        </div>
        
        <div class="row">
          <div class="input-field col s6 m6 l6">
            <p class="margin medium-small"><a href="memberJoinForm.do">Register Now!</a></p>
          </div>
          <div class="input-field col s6 m6 l6">
              <p class="margin right-align medium-small"><a href="main.do">Main!</a></p>
          </div>          
        </div>
      </form>
    </div>
  </div>



    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>
</body>
</html>