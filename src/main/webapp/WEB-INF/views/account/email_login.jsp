<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="keywords" content="BAND" />
<meta name="description" content="BAND" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<title>밴드-이메일로 로그인</title>
<meta id="viewport" name='viewport' content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1">
<link rel="SHORTCUT ICON" href="https://ssl.pstatic.net/cmstatic/auth/res/2259197735a706bc5c9bb216c00b5d91582b1b9c/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/cmstatic/auth/res/2259197735a706bc5c9bb216c00b5d91582b1b9c/css/band_login.css">

<script type="text/javascript" src="https://ssl.pstatic.net/cmstatic/auth/js/4cde3822592d2013ad657bb7e7a71b27738fda64/all.js"></script>	
<!--[if lt IE 9]>
<script src="https://ssl.pstatic.net/cmstatic/auth/js/4cde3822592d2013ad657bb7e7a71b27738fda64/html5shiv.min.js"></script>
<script src="https://ssl.pstatic.net/cmstatic/auth/js/4cde3822592d2013ad657bb7e7a71b27738fda64/respond.min.js"></script>
<![endif]-->

<script type="text/javascript">
	$.getScript( "/get_time_correction?d=d&" + (new Date().getTime()), function( data, textStatus, jqxhr ) {
		bandAuth.request.timeCorrectionLoaded = true;
	});

   var bandAuth = window.bandAuth || {};
   bandAuth.msg = {
		   temporarilyUnavailableError : "Temporary error occurred.",
		   invalidPassword : "전화번호 또는 비밀번호가 일치하지 않습니다.\u003Cbr\/\u003E다시 시도해주세요.",
		   invalidEmail : "등록한 이메일 주소와 비밀번호를 입력하세요.",
		   invalidPhoneNumber : "휴대폰 번호를 정확히 입력해주세요."
	};
   
   
   function alertTemporarilyUnavailableError() {
	   alert(bandAuth.msg.temporarilyUnavailableError);
   }
      
   function alertInvalidPassword() {
	   alert(bandAuth.msg.invalidPassword);
   }
   
   function alertInvalidPhoneNumber() {
	   alert(bandAuth.msg.invalidPassword.invalidPhoneNumber);
   }
   
   function alertWaitAMoment() {
	   alert('잠시후 요청해주세요.');
   }
   
   function showInputError(el) {
	   //el.trigger("showError");
   }


   function hideInputError(el) {
	   //el.trigger("hideError");
   }
   
   function showInputError2(el) {
	   //$(this).parents(".uInput").addClass('-error2');
   }


   function hideInputError2(el) {
	   //$(this).parents(".uInput").removeClass('-error2');
   }
   
   $(document).ready(function(){
       $('input, textarea').placeholder();
              
       var inputs = $(".uInput input");
       inputs.blur(function(event) {
    	   $(this).parents(".uInput").removeClass('-on');
       });
       
       inputs.focus(function(event) {
    	   $(this).parents(".uInput").addClass('-on');
       }); 
              
       inputs.on('showError', function(event) {
    	   $(this).parents(".uInput").addClass('-error');
       });
       
       inputs.on('hideError', function(event) {
    	   $(this).parents(".uInput").removeClass('-error');
       });
       
       
       if(bandAuth.request.timeCorrectionLoaded == false) {
	       bandAuth.request.ciphertext = sjcl.codec.base64.toBits('u74U80hT9HR6zqaL1yqQTq2AEpkjOaJhjefkoFpQT8A=');
	       bandAuth.request.iv =  sjcl.codec.base64.toBits('/mkBTG0eslDHmzz96WfF3w==');
	       bandAuth.request.key = sjcl.codec.base64.toBits('/mkBTG0eslDHmzz96WfF3w==');
       }
	   
   });
</script>
<script src='https://www.google.com/recaptcha/api.js?onload=bandAuth.recaptcha.ready&render=explicit'></script>
</head>
<body class="">
<div id="wrap">
	<h1 id="topLogo" class=""><a href="/account/email_login"><span class="gSrOnly">BAND</span></a></h1><div id="content">
		<section>
	<h1 class="uTitH1">이메일로 로그인</h1>
	
	<form id="email_login_form" method="post" action="/account/email_login">
		<!-- [D] input focus, blur 시 .uInput에 "-on" 클래스 토글 -->
		<div class="uInput">
			<label for="input_email" class="gSrOnly">이메일</label>
			<input id="input_email" type="email" name="email" value="" placeholder="이메일">			
		</div>
		<div class="uInput gMG1 ">
			<label for="input_password" class="gSrOnly">비밀번호</label>
			<input id="input_password" type="password" name="password" autocomplete="off"  placeholder="비밀번호">			
		</div>
		<input type="hidden" name="rkey"  value="AAABWZFrlWQAAAAAAdr8LW8L2YovZ26MnAE6aajsbbUR8cAIrg0gEbTu1NkFFnX-">
<input type="hidden" name="signature">
<input type="hidden" name="akey" value="abcf2g68v100v172dkdk6v9edkfk9wl1">
<input type="hidden" name="timestamp"><button type="submit" class="uBtn -tcType -confirm gMG2" disabled="disabled">로그인</button>
    </form>

    <p class="uDesc gMat27"><a href="/send_password_reset_email">비밀번호를 잊으셨나요?</a></p>
    <p class="uDesc">밴드가 처음이신가요?  <a href="/account/email_sign_up">회원가입</a></p>
</section>
<script type="text/javascript">
   $(document).ready(function(){	   

	   bandAuth.request.ciphertext = sjcl.codec.base64.toBits('u74U80hT9HR6zqaL1yqQTq2AEpkjOaJhjefkoFpQT8A=');
	   bandAuth.request.iv =  sjcl.codec.base64.toBits('/mkBTG0eslDHmzz96WfF3w==');
	   bandAuth.request.key = sjcl.codec.base64.toBits('/mkBTG0eslDHmzz96WfF3w==');
	   	   
	   bandAuth.msg.emailLoginForm = {			   
			   invalidEmail : "등록한 이메일 주소와 비밀번호를 입력하세요.",
			   invalidPassword : "등록한 이메일 주소와 비밀번호를 입력하세요."
	   };
		   	   
        $( "#email_login_form" ).submit(function(event) {
        	if(!validateInput(this)) {
        		return false;
        	}
        	
        	bandAuth.request.prepareFormSubmit(this);
        }); 
        
        
        $('input, textarea, select').on('input change blur keyup', function(event) {
        	if(validateInput($("#email_login_form"))) {
        		$("#email_login_form > :submit").prop( "disabled", false );
        	} else {
        		$("#email_login_form > :submit").prop( "disabled", true );
        	}
        }); 
        
        if( $('.uInput.-error > input').size() > 0 ) {
        	$('.uInput.-error > input')[0].focus();
        }
   });
   
   function validateInput(form) {
		var success = true;

		var emailInput = $("input[name='email']", form);
		if(!isValidEmail(emailInput.val())) {
			showInputError(emailInput);
			success = false;
		} else {
			hideInputError(emailInput);
		}
		
	    var passwordInput =  $("input[name='password']", form);
	    if(!isValidPassword(passwordInput.val())) {
	    	showInputError(passwordInput);
	    	success = false;
	    } else {
	    	hideInputError(passwordInput);
	    }
	    
	    return success;
	}   
</script></div>
</div>
</body>       
</html>