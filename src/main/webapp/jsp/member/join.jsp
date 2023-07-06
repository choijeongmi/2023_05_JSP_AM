<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

    <script>
/*       function joinFormSubmit() {
        var loginPw = document.getElementById( 'loginPw' ).value;
        var loginPwChk = document.getElementById( 'loginPwChk' ).value;
        if ( loginPw != loginPwChk ) {
          alert( 'Confirm Password!' );
          return false;
        }
      } */
      
      function joinFormSubmit(form) {
    	  
    	  form.name.value = form.name.value.trim();
    	  form.loginId.value = form.loginId.value.trim();
    	  form.loginPw.value = form.loginPw.value.trim();
    	  form.loginPwChk.value = form.loginPwChk.value.trim();
    	  
    	  if(form.name.value.length == 0) {
    		  alert('이름을 입력해주세요');
    		  form.name.focus();
    		  return;
    	  }
    	  if(form.loginId.value.length == 0) {
    		  alert('아이디를 입력해주세요');
    		  form.loginId.focus();
    		  return;
    	  }
    	  if(form.loginPw.value.length == 0) {
    		  alert('비밀번호를 입력해주세요');
    		  form.loginPw.focus();
    		  return;
    	  }
    	  if(form.loginPwChk.value.length == 0) {
    		  alert('비밀번호확인을 입력해주세요');
    		  form.loginPwChk.focus();
    		  return;
    	  }
    	  else if(form.loginPwChk.value != form.loginPwChk.value) {
    		  alert('비밀번호를 확인해주세요');    		  
    		  form.loginPw.value = null;
    		  form.loginPwChk.value = null;
    		  form.loginPw.focus();
    		  return;
    	  }
    	  form.submit();
      }
    </script>
    
</head>
<body>
	<h1>회원정보</h1>
	
	
	
	<form action="doJoin" method="POST" onsubmit="joinFormSubmit(this); return false;">
		<div>
			이름 : <input name="name" type="text" placeholder="이름을 입력해주세요" autocomplete= "off" />
		</div>
		<div>
			아이디 : <input name="loginId" type="text" placeholder="아이디를 입력해주세요" autocomplete= "off" />
		</div>
		<div>
			비밀번호 :<input type= "password" name="loginPw" type="text" placeholder="비밀번호를 입력해주세요" autocomplete= "off" /> 
		</div>
		<div>
			비밀번호 확인 : <input type= "password" name="loginPwChk" type="text" placeholder="비밀번호확인을 입력해주세요" autocomplete= "off" />
		</div>
		 
		<div>
			<button>가입</button>
			
			<a href="../home/main">뒤로가기</a>
		</div>
	</form>
</body>
</html>