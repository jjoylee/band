<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="keywords" content="BAND" />
<meta name="description" content="BAND" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<title>밴드-이메일로 회원가입</title>
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
	       bandAuth.request.ciphertext = sjcl.codec.base64.toBits('/OyWC8y16Qii4IUERRikOmD7WvI8KyV316GNjlRyIUo=');
	       bandAuth.request.iv =  sjcl.codec.base64.toBits('lFvpzBgdJQ/WSfPL2XcnMw==');
	       bandAuth.request.key = sjcl.codec.base64.toBits('lFvpzBgdJQ/WSfPL2XcnMw==');
       }
	   
   });
</script>
<script src='https://www.google.com/recaptcha/api.js?onload=bandAuth.recaptcha.ready&render=explicit'></script>
</head>
<body class="">
<div id="wrap">
	<h1 id="topLogo" class=""><a href="/account/email_login"><span class="gSrOnly">BAND</span></a></h1><div id="content">
		<section>
	<h1 class="uTitH1">회원 가입</h1>
	<form id="email_sign_up_form" method="post" action="/account/email_sign_up">
		<!-- [D] input focus, blur 시 .uInput에 "-on" 클래스 토글 -->
		<div class="uInput">
			<label for="input_name" class="gSrOnly">이름</label>
			<input id="input_name" type="text" name="name" value="" maxlength="20" placeholder="이름" />           
       </div>

       <div class="uInput gMG1">
           <label for="input_email" class="gSrOnly">이메일</label>
           <input id="input_email" type="email" name="email" value="" placeholder="이메일">           
       </div>

       <div class="uInput gMG2 ">
           <label for="input_passwd" class="gSrOnly">비밀번호</label>
           <input type="password" id="input_passwd"  name="password" autocomplete="off"  placeholder="비밀번호">           
       </div>

       <div class="uInput gMG1 ">
           <label for="input_password_confirm" class="gSrOnly">비밀번호 확인</label>
           <input id="input_password_confirm"  type="password" name="confirm_password" value="" autocomplete="off"  placeholder="비밀번호 확인">           
       </div>
       
       <script type="text/javascript">
$(document).ready(function(){     
    $(':input[name="agree_all"]').change(function(event) {
    	$(this).next("span").toggleClass("checked", this.checked);
    	var checked = this.checked;    	
		var checkedInput = $(":input[name='agree']");
		checkedInput.each(function() {			
			this.checked = checked;		
			$(this).next("span").toggleClass("checked", checked);   
		});
    });
    
    $(':input[name="agree"]').change(function(event) {
    	$(this).next("span").toggleClass("checked", this.checked);    	
    	if(!this.checked) {
    		$(':input[name="agree_all"]').attr("checked", false).next("span").toggleClass("checked", this.checked);
    	} 
    });    
});


function checkAgree(form) {
	var termChecked = false;
	var privacyChecked = false;
	var checkedInput = $(":input[name='agree']:checked", form);
	checkedInput.each(function() {
		if(this.value == 'term') {
			termChecked = true;
		}
		
		if(this.value == 'privacy') {
			privacyChecked = true;
		}
	});
	
	return (termChecked == true && privacyChecked == true);
}	
</script>
<div class="uCheckbox -bLine gMG4">
           <label>
               <input name="agree_all" type="checkbox">
               <span><strong>전체동의</strong>(선택 항목 포함)</span>
           </label>
       </div>

       <div class="uCheckbox gMat10">
           <label>
               <input name="agree" value="term" type="checkbox">
               <span>이용약관<em>(필수)</em></span>
           </label>
           <a href="http://www.band.us/policy/terms" target="_blank">보기</a>
       </div>

       <div class="uCheckbox gMat10">
           <label>
               <input name="agree" value="privacy" type="checkbox">
               <span>개인정보 수집 및 이용에 대한 안내<em>(필수)</em></span>
           </label>
           <a href="/policy/privacy_summary" target="_blank">보기</a>
       </div>

       <div class="uCheckbox gMat10">
           <label>
               <input name="agree" value="service_notification" type="checkbox">
               <span>이벤트, 서비스 안내 수신<em>(선택)</em></span>
           </label>
       </div>
 <!-- <div id="recaptcha" class="gMat20" style="display:none"></div>
       <script type="text/javascript">
		bandAuth.recaptcha = {				
			isReady : false,
			isShow : false,
			isDone : false,
			
			ready : function() {
				this.isReady = true;
				if(bandAuth.recaptcha.isShow) {
					show();
				}
			},
			
			show : function() {
				if(!bandAuth.recaptcha.isShow) {					
					grecaptcha.render('recaptcha', {
				         'sitekey' : '6LcvVRUTAAAAAMs1aUjP6WcNaRtsfMgupnVArHqP',
				         'callback' : this.verifyCallback,
				         'expired-callback' : this.expiredCallback 
					});
					$('#recaptcha').show();
				}
				bandAuth.recaptcha.isShow = true;
			},
			
			verifyCallback : function(response) {
				bandAuth.recaptcha.isDone = true;
			},
			
			expiredCallback : function(response) {
				bandAuth.recaptcha.isDone = false;
			}  			
		} */       
		</script>    -->
       		
		<input type="hidden" name="rkey"  value="AAABWZEcuHIAAAAAAdr8LZh9zK5Uo1r0Y38VMmE_N1Vi-eBJ3m8JQoQU9izf-_TD">
<input type="hidden" name="signature">
<input type="hidden" name="akey" value="abcf2g68v100v172dkdk6v9edkfk9wl1">
<input type="hidden" name="timestamp"><button type="submit" class="uBtn -tcType -confirm gMG4" >가입하기</button>
   </form>              
   <p class="uDesc gMat27">이미 가입하셨다면?&nbsp;<a href="email_login">로그인</a></p>
</section>

<script type="text/javascript">
$(document).ready(function(){	
    $( "#email_sign_up_form" ).submit(function(event, needSuccessAlert) {
    	
    	
    	if (!validateInputName(this)) {
    		alert('이름을 입력해주세요.');
    		return false;
    	}
    	
		if (!validateInputEmail(this)) {
			alert('올바른 이메일 주소가 아닙니다. 다시 입력해주세요.');
			return false;
    	}
		
		if (!validateInputPassword(this)) {
			alert('비밀번호는 숫자와 알파벳을 포함하여 6자 이상이어야 합니다. 다시 입력해주세요.');
			return false;
    	}
		
		if (!validateInputConfirmPassword(this)) {
			alert('입력하신 비밀번호가 일치하지 않습니다. 다시 입력해주세요.');
			return false;
    	}
		
		if (!checkAgree()) {
			alert('밴드 이용약관에 동의해주세요.');
			return false;
    	}
		
		/*if (!checkRecaptcha(this)) {
			alert('캡챠 화면을 확인해주세요.');
			return false;
    	}*/
		
    	bandAuth.request.prepareFormSubmit(this);
    	return true;

    });
    
    $(':checkbox').change(function(event) {
    	if(checkAgree()) {
    		bandAuth.recaptcha.show();
    	}
    }); 
});

function validateInputName(form) {
	var nameInput = $("input[name='name']", form);
	if(!isValidName(nameInput.val())) {
		showInputError(nameInput);
		return false;
	} else {
		hideInputError(nameInput);
		return true;
	}
} 


function validateInputEmail(form) {
	var emailInput = $("input[name='email']", form);
	if(!isValidEmail(emailInput.val())) {
		showInputError(emailInput);
		return false;
	} else {
		hideInputError(emailInput);
		return true;
	}
}

function validateInputPassword(form) {
	var passwordInput =  $("input[name='password']", form);
    if(!isValidPassword(passwordInput.val())) {
    	showInputError(passwordInput);
    	return false;
    } else {
    	hideInputError(passwordInput);
    	return true;
    }
}

function validateInputConfirmPassword(form) {
	var passwordInput =  $("input[name='password']", form);
	var confirmPasswordInput = $("input[name='confirm_password']", form);
    if(passwordInput.val() != confirmPasswordInput.val()) {
    	showInputError(confirmPasswordInput);
    	return false;
    } else {
    	hideInputError(confirmPasswordInput);
    	return true;
    }
}

var result = '${result}';
if(result == 'registered') alert("이미 등록된 이메일 입니다.")

/*function checkRecaptcha(form) {
	if(bandAuth.recaptcha.isDone) {
		return true;
	}  else {
		return false;
	}
}*/

</script>
</body>
</html></div>
</div>
</body>       
</html>