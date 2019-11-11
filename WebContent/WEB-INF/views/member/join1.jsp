<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
       <link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css" rel="stylesheet" type="text/css">
       <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">
      <link href="css/log.css" rel="stylesheet" type="text/css">
<script>

function check() {
   if (frm.id.value.length < 2) {
      alert('ID는 두 글자 이상 사용가능합니다.');
      frm.id.select();
      return false;
   }
   if (frm.passwd.value.length == 0) {
      alert('password는 필수 입력 항목입니다.');
      frm.passwd.focus();
      return false;
   }
   if (frm.name.value.length == 0) {
      alert('name은 필수 입력 항목입니다.');
      frm.name.focus();
      return false;
   }
   if (frm.email.value.length == 0) {
      alert('email은 필수 입력 항목입니다.');
      frm.email.focus();
      return false;
   }
   if (document.frm.passwd.value != document.frm.passwd2.value) {
      alert('password 입력값이 서로 다릅니다.');
      document.frm.passwd.select();
      return false;
   }
   if (frm.email.value != frm.email2.value) {
      alert('email 입력값이 서로 다릅니다.');
      document.frm.email.select();
      return false;
   }
   return true;
}
</script>
</head>
<body>


  <div id="login-page" class="row">
  <div class="col s12 z-depth-4 card-panel">
      <form name="frm" id="join" action="memberJoin.do" method="post" onsubmit="return check();">    
      <div class="row">
        <div class="input-field col s12 center">
          <h4>Register</h4>
          <p class="center">Join to JAVABEAN community now !</p>
        </div>
      </div>

      <div class="row margin">
        <div class="input-field col s20">
          <i class="material-icons prefix">account_circle</i>
          <input id="id" name="id" type="text"  placeholder="ID" style="width: 375px;"/>
          <label for="username"></label>    
        </div>
          <span id="id-message" style="padding-top: 30px; display: inline-block;" ></span>
      </div>
       <div class="row margin">
        <div class="input-field col s20">
          <i class="material-icons prefix">account_circle</i>
          <input id="name" name="name" type="text" placeholder="NAME" style="width: 375px;" />  
          <label for="username"></label>
        </div>
      </div>

      <div class="row margin">
        <div class="input-field col s20">
          <i class="material-icons prefix">vpn_key</i>
          <input id="passwd" name="passwd" type="password"  placeholder="PASSWORD" style="width: 375px;" />
          <label for="passwd"></label>
        </div>
      </div>

      <div class="row margin">
        <div class="input-field col s20">
          <i class="material-icons prefix">vpn_key</i>
          <input id="passwd2" name="passwd2" type="password" placeholder="PASSWORD AGAIN" style="width: 375px;"/>
          <label for="passwd2"></label>
        </div>
         <span id="passwd-message" style="padding-top: 30px; display: inline-block;"></span>
      </div>
       <div class="row margin">
        <div class="input-field col s20"> 
          <!-- <i class="mdi-social-person-outline prefix"></i> -->
          <i class="material-icons prefix">email</i>
          <input id="email" name="email" type="text" placeholder="E-MAIL" style="width: 375px;" />
          <label for="email"></label>
        </div>
      </div>
      <div class="row margin">
        <div class="input-field col s20">
          <!-- <i class="mdi-social-person-outline prefix"></i> -->
          <i class="material-icons prefix">email</i>
          <input id="email2" name="email2" type="text" placeholder="E-MAIL AGAIN" style="width: 375px;"/>
          <label for="email2"> </label>
        </div>
      <span id="email-message" style="padding-top: 30px; display: inline-block;"></span>
      </div>


      <div class="row">
        <div class="input-field col s12">
          <button type="submit" class="btn waves-effect waves-light col s12">REGISTER NOW</button>
          
        </div>
        <div class="input-field col s12">
          <p class="margin center medium-small sign-up">Already have an account? <a href="memberLoginForm.do">Login</a></p>
          <p class="margin center medium-small sign-up">Do you wanna go back? <a href="main.do">Main</a></p>
        </div>
      </div>
      
  
    </form>
  </div>
</div>   
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$('#id').keyup(function () {
   var id = $(this).val();
   console.log(id);
   $.ajax({
      url: 'joinIdDupCheckJson.do',
      data: {id: id},
      success: function (data) {
         console.log(typeof data);
         console.log(data);
         idDupMessage(data);
      }
   });
});
function idDupMessage(isIdDup) {
   if (isIdDup) { // 중복 true
       $('span#id-message').html('중복된 ID').css('color', 'red');
   } else { // 중복아님 false
       $('span#id-message').html('사용가능한 ID').css('color', 'blue');
   }
}

$('#passwd2').keyup(function () {
   if (document.frm.passwd.value != document.frm.passwd2.value) {
      $('span#passwd-message').html('불일치!').css('color', 'red');
   }  else { // 중복아님 false
      $('span#passwd-message').html('일치함!').css('color', 'blue');
   }
});

$('#email2').keyup(function () {
   if (document.frm.email.value != document.frm.email2.value) {
      $('span#email-message').html('불일치!').css('color', 'red');
   }  else { // 중복아님 false
      $('span#email-message').html('일치함!').css('color', 'blue');
   }
});
</script>
</body>
</html>