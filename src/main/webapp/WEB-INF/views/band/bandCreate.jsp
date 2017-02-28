<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE html>
<!-- saved from url=(0028)http://band.us/#!/bandCreate -->
<html lang="ko" class="win win81 chrome chrome55 webkit webkit537">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>밴드 만들기</title>
<script type="text/javascript" src="/resources/source/jquery-1.10.2.js"></script>
<link rel="stylesheet" type="text/css"  href = "/resources/source/jquery-ui.css">
<link rel="stylesheet" type="text/css" href = "/resources/source/jquery-ui.min.css">
<script type="text/javascript" src = "/resources/source/jquery-ui.min.js"></script>
<script type="text/javascript" src="/resources/source/jquery-ui.js"></script>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="format-detection" content="telephone=no">
<link rel="shortcut icon"
	href="http://s.cmstatic.net/webclient/res/20170111180714/images/favicon.ico">
<link rel="icon" sizes="96x96"
	href="http://s.cmstatic.net/webclient/res/20170111180714/images/favicon.png">

<link rel="apple-touch-icon"
	href="http://s.cmstatic.net/webclient/res/20170111180714/images/favicon.png">
<link rel="publisher" href="https://plus.google.com/+BandUsTogether">

<link rel="alternate" hreflang="en" href="http://band.us/en">
<link rel="alternate" hreflang="tw" href="http://band.us/zh-TW">
<link rel="alternate" hreflang="ja" href="http://band.us/ja">
<link rel="alternate" hreflang="ko" href="http://band.us/ko">

<meta name="description"
	content="밴드 소개
BAND는 나와 연결된 모임을 더 끈끈하게 만들어주는 모바일 커뮤니티 서비스입니다.학교, 회사, 동창회, 동호회 모임부터 가족, 커플, 친구 모임까지 이제, BAND로 연결하세요.
누구나 쉽게 밴드를 만들어, 간단하게 멤버를 초대하고, 우리만의 공간을 만드는 것.
서로의 기념일을 챙기거나 모두가 참석 가능한 일정, 모임 장소를 정하는 것.
이 모든 것이 BAND 하나로 간편해집니다 !!">

<meta name="keywords"
	content="group,community,message,chat,그룹,투표,모임,커뮤니티,일정,채팅,캘린더,사진,앨범,메신저,동아리,팀플, 동호회, 프로젝트, 앨범, 공유,스티커, 조모임,밴드">

<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage"
	content="http://s.cmstatic.net/webclient/res/20170111180714/images/favicon_144x144.png">
<meta name="application-name" content="Band">

<meta name="viewport" content="width=1119">
<link rel="stylesheet" type="text/css" href="http://s.cmstatic.net/webclient/dres/20170113111927/css/bandComponent.css?_=20170113111927">
<link rel="stylesheet" type="text/css" href="http://s.cmstatic.net/webclient/dres/20170113111927/css/band.css?_=20170113111927">
<link rel="stylesheet" type="text/css" href="http://s.cmstatic.net/webclient/dres/20170113111927/css/bandLayout.css?_=20170113111927">

<script>
</script>

<script type="text/javascript">
</script>


<style>
.cke {
	visibility: hidden;
}
</style>
<script>
$(document).ready(function(){
	<!--커버 이미지 소스 바꾸기!-->
	$('div.bandCover a').click(function(){
		 	$("span.on").removeClass("on");
		 	$("div.uCover").find("img").attr("src", $(this).find("img").attr("src"));
		 	$(this).find('span').addClass("on");
		 	$("input[name='bandImgUrl']").val($(this).find("img").attr("src"));
	 });
	 
	<!--color 버튼 열기, 닫기!-->
	 $("button.colorChange").click(function(){
		if($(".skinColorLayer").css("display") == "none")$(".skinColorLayer").css("display", "block");
		else $(".skinColorLayer").css("display", "none")
	 });
	 
	 <!--모든 라인색깔 바꾸기!-->
	 $("span.fakeCheck").click(function(){
		 var color = $(this).parent().parent().attr('class').split(' ')[1];
		 var name = $(".bandCover").attr("class").split(' ')[1];
		 $("div.bandCover").removeClass(name).addClass(color);
		 $("div.bandUri").removeClass(name).addClass(color);
		 $("input[name='color']").val(color);
	 });
	 
	 <!--밴드이미지 페이지 버튼!-->
	 $(".coverListPaging button").click(function(){
		 $(this).parent().find("button").removeClass("on");
		 $(this).addClass("on");
	 });
	 
	 <!-- form submit !-->
	 $("button.uButtonPoint").click(function(){
		 if($("#name").val().length === 0 ) return false;
		 else $("#frmBandWrite").submit();
	 });
	 
	 <!-- 밴드이름 같이 변하게 !-->
	 $("#name").keyup(function(){
		  if($(this).val().length === 0 ) $("span.uriText").text("밴드 이름");
		  else $("span.uriText").text($(this).val());
	 });
});

</script>
</head>
<body style="" class="skin skin0" data-viewtype="">
	<div data-uiselector="bodyRegion" class="bodyRegion">
		<div data-viewname="DWebMainLayoutView" id="wrap">
			<div data-uiselector="gnbRegion" style="display: block;">
				<header data-viewname="DGnbMenuView" id="header" class="sf_beforeBg">
				<div class="goOutIE">
					<div class="goodByeIE">
						<p>
							<a
								href="http://windows.microsoft.com/ko-kr/internet-explorer/download-ie"
								target="_blank">인터넷 익스플로러 9 이하 버전을 사용하고 계십니다. 보다 원활한 환경에서
								밴드를 사용하시려면 브라우저를 업그레이드하세요. 상반기 이후에는 하위버전 지원이 종료될 예정입니다.</a>
						</p>
					</div>
				</div>
				<div class="inner">
					<h1>
						<a href="http://band.us/#!/home" class="gIcon icon-gnb-bandlogo">BAND</a>
					</h1>
					<form action="http://band.us/">
						<fieldset class="topInputSearch _searchBox">
							<legend class="gSrOnly">밴드, 게시글 검색</legend>
							<input type="text" id="input_search_view24"
								class="_gnbInputSearch" title="밴드, 게시글 검색하기"
								placeholder="밴드, 게시글을 검색해 보세요" autocomplete="off">
							<button type="submit" class="gIcon icon-search" id="btn_search">
								<span class="gSrOnly">검색</span>
							</button>
						</fieldset>
					</form>
					<ul class="widget">
						<li class="newFeedLink"><a href="http://band.us/#!/feed">새글
								피드 <mark class="_feedCount" style="display: none;">5</mark>
						</a></li>
						<li class="bandFindLink"><a href="http://band.us/#!/discover">밴드
								찾기</a></li>
						<li class="push"><button id="btnShowNews" type="button"
								class="gIcon icon-push-on" data-uiselector="btnShowNews">
								<span class="gSrOnly">새소식</span>
								<mark class="_newsCount" style="display: none;">2</mark>
							</button>
							<article class="cRecentList news _newsRegion"
								style="display: none;"></article></li>
						<li class="chat"><button id="btnShowChannels" type="button"
								class="gIcon icon-chat-on" data-uiselector="btnShowChannels">
								<span class="gSrOnly">채팅</span>
								<mark class="_unreadChatCount" style="display: none;"></mark>
							</button>
							<article class="cRecentList chat _chatRegion"
								style="display: none;"></article></li>
						<li class="setting"><a href="http://band.us/#"
							class="user _settingRegion"> <!--/#!/setting/profile-->
								<img src="http://s.cmstatic.net/webclient/dres/20170113111927/images/template/profile_60x60.gif" width="31" height="31" alt="" class="globalFaceImage"><span
								class="bu"></span> <span class="gSrOnly">설정 페이지 이동</span> <span
								class="gSrOnly">내 프로필</span></a>
						<article class="cUserInfo">
							<div class="main">
								<ul>
									<li><a href="http://band.us/#!/setting/profile">내 정보</a></li>
									<li><div class="sub">
											<ul>
												<li><a href="http://band.us/#!/findingInviation">초대
														코드 입력</a></li>
												<li><a href="http://band.us/cs/#!/notice">공지사항</a></li>
												<li><a href="http://band.us/#!/setting">설정</a></li>
											</ul>
										</div></li>
									<li class="_btnLogout"><a href="http://band.us/#">로그아웃</a></li>
								</ul>
							</div>
							</article></li>
					</ul>
				</div>
				</header>
			</div>
			<div id="container" data-uiselector="containerRegion"
				class="fullWide">
				<div data-viewname="DHomeLayoutView">
					<aside id="asideWrap" data-uiselector="regionLeftAsideContent"></aside>
					<main id="content" data-uiselector="regionContent">
					<div data-viewname="DBandCreateView">
						<section class="bandMake">
						<h1 class="title">밴드 만들기</h1>
						<p>가족, 친구, 팀, 동호회 그룹을 밴드로 만들어보세요.</p>
						<div class="uInput inputBand"
							data-uiselector="inputBandNameWrapper">
						<form id="frmBandWrite" method="post"  action="/band/bandCreate">
							<label class="gSrOnly" for="ex_name">그룹 이름을 입력하세요.</label> <input
								type="text" id="name" name="name" placeholder="그룹 이름을 입력하세요." value=""
								maxlength="50" data-uiselector="inputBandName"/>
							<input type="hidden" name="bandImgUrl" value = "/resources/img/6b0Ud0159r1tc3sh4416_5ksoqj.jpg"/>
							<input type="hidden" name="color" value = "skin10"/>
						
						</form>
						</div>
						<div class="uCover" data-type="type7">
							<div class="bandUri skin10" data-uiselector="panelThemePreview">
								<span class="coverChange gIcon icon-camera js-fileapi-wrapper"
									data-uiselector="coverImageUploader"><span
									class="gSrOnly">커버 변경하기</span> <input type="file"
									class="imageUpload" title="추가" accept="image/*"
									name="attachment"></span>
								<div class="cover sf_beforeBg">
									<img class="coverImg" src="/resources/img/6b0Ud0159r1tc3sh4416_5ksoqj.jpg" alt="" data-uiselector="coverImagePreview">
								</div>
								<button type="button"
									class="colorChange sf_bg gIcon icon-bandcolor"
									data-uiselector="btnChangeColor">
									<span class="bg">밴드컬러 선택</span>
								</button>
								<div class="bandName">
									<div class="bandWrap">
										<span class="uriText" data-uiselector="textBandName">밴드
											이름</span>
									</div>
								</div>
							</div>
							<div class="skinColorLayer" data-uiselector="regionColorList">
								<div data-viewname="DColorSelectView">
									<ul>
										<li class="item skin1"><label for="band_1"
											class="uCheckbox" data-type="type7"
											data-uiselector="itemThemeColorLabel" data-idx="1"><input
												type="radio" class="checkInput" id="band_1"
												name="select_belt" data-uiselector="colorItem"> <span
												class="checkLabel">Color theme 1</span><span
												class="fakeCheck bdNone sf_bg gIcon icon-select03"></span></label></li>
										<li class="item skin2">
										    <label for="band_2" class="uCheckbox" data-type="type7" data-uiselector="itemThemeColorLabel" data-idx="2"><input
												type="radio" class="checkInput" id="band_2"
												name="select_belt" data-uiselector="colorItem"> 
												<span class="checkLabel">Color theme 2</span>
												<span class="fakeCheck bdNone sf_bg gIcon icon-select03"></span>
											</label>
										</li>
										<li class="item skin3"><label for="band_3"
											class="uCheckbox" data-type="type7"
											data-uiselector="itemThemeColorLabel" data-idx="3"><input
												type="radio" class="checkInput" id="band_3"
												name="select_belt" data-uiselector="colorItem"> <span
												class="checkLabel">Color theme 3</span><span
												class="fakeCheck bdNone sf_bg gIcon icon-select03"></span></label></li>
										<li class="item skin4"><label for="band_4"
											class="uCheckbox" data-type="type7"
											data-uiselector="itemThemeColorLabel" data-idx="4"><input
												type="radio" class="checkInput" id="band_4"
												name="select_belt" data-uiselector="colorItem"> <span
												class="checkLabel">Color theme 4</span><span
												class="fakeCheck bdNone sf_bg gIcon icon-select03"></span></label></li>
										<li class="item skin11"><label for="band_5"
											class="uCheckbox" data-type="type7"
											data-uiselector="itemThemeColorLabel" data-idx="5"><input
												type="radio" class="checkInput" id="band_5"
												name="select_belt" data-uiselector="colorItem"> <span
												class="checkLabel">Color theme 5</span><span
												class="fakeCheck bdNone sf_bg gIcon icon-select03"></span></label></li>
										<li class="item skin5"><label for="band_6"
											class="uCheckbox" data-type="type7"
											data-uiselector="itemThemeColorLabel" data-idx="6"><input
												type="radio" class="checkInput" id="band_6"
												name="select_belt" data-uiselector="colorItem"> <span
												class="checkLabel">Color theme 6</span><span
												class="fakeCheck bdNone sf_bg gIcon icon-select03"></span></label></li>
										<li class="item skin6"><label for="band_7"
											class="uCheckbox" data-type="type7"
											data-uiselector="itemThemeColorLabel" data-idx="7"><input
												type="radio" class="checkInput" id="band_7"
												name="select_belt" data-uiselector="colorItem"> <span
												class="checkLabel">Color theme 7</span><span
												class="fakeCheck bdNone sf_bg gIcon icon-select03"></span></label></li>
										<li class="item skin7"><label for="band_8"
											class="uCheckbox" data-type="type7"
											data-uiselector="itemThemeColorLabel" data-idx="8"><input
												type="radio" class="checkInput" id="band_8"
												name="select_belt" data-uiselector="colorItem"> <span
												class="checkLabel">Color theme 8</span><span
												class="fakeCheck bdNone sf_bg gIcon icon-select03"></span></label></li>
										<li class="item skin8"><label for="band_9"
											class="uCheckbox" data-type="type7"
											data-uiselector="itemThemeColorLabel" data-idx="9"><input
												type="radio" class="checkInput" id="band_9"
												name="select_belt" data-uiselector="colorItem"> <span
												class="checkLabel">Color theme 9</span><span
												class="fakeCheck bdNone sf_bg gIcon icon-select03"></span></label></li>
										<li class="item skin9"><label for="band_10"
											class="uCheckbox" data-type="type7"
											data-uiselector="itemThemeColorLabel" data-idx="10"><input
												type="radio" class="checkInput" id="band_10"
												name="select_belt" data-uiselector="colorItem"> <span
												class="checkLabel">Color theme 10</span><span
												class="fakeCheck bdNone sf_bg gIcon icon-select03"></span></label></li>
										<li class="item skin10"><label for="band_11"
											class="uCheckbox" data-type="type7"
											data-uiselector="itemThemeColorLabel" data-idx="11"><input
												type="radio" class="checkInput" id="band_11"
												name="select_belt" data-uiselector="colorItem"> <span
												class="checkLabel">Color theme 11</span><span
												class="fakeCheck bdNone sf_bg gIcon icon-select03"></span></label></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="desc" data-uiselector="bandNameNotice">
							<p>밴드명 변경시 멤버에게 알림이 전송됩니다.</p>
						</div>
						<div class="desc" data-uiselector="modifiableBandNameNotice"
							style="display: none;">
							<p>
								밴드명 변경시 멤버에게 알림이 전송됩니다.<br> 멤버 5천명 미만일 때만, 밴드명을 변경할 수 있습니다.
							</p>
							<p>
								<a href="http://band.us/cs/#!/help/detail/643">더 알아보기<span
									class="gIcon icon-right"></span></a>
							</p>
						</div>
						<div class="coverSelect" data-uiselector="regionCoverList">
							<div data-viewname="DCoverSelectView">
								<div class="coverWrap">
									<h2 class="gSrOnly">밴드 이름 및 커버 설정</h2>
									<div class="slideWrap" data-uiselector="coverListSlider">
										<div class="slide" style="width: 610px; overflow: visible;">
											<ul style="float: none; display: block; position: absolute; top: 0px; left: 0px; width: 610px;">
												<li>
												<div class="photoCover">
														<div class="btn gIcon icon-camera js-fileapi-wrapper"
															data-uiselector="coverImageUploader">
															<span class="txt">사진 선택</span> 
															<input type="file" class="imageUpload" title="추가" accept="image/*" name="attachment">
														</div>
														<div class="mask" data-uiselector="coverImageMasking" style="display: none;"></div>
														<span class="img" data-uiselector="coverImage" style="display: none; background-image: url()"></span>
													</div>
												</li>
												<li>
												<div class="bandCover skin10" data-uiselector="panelItemImage">
													<a href="#">
														<div class="cover sf_beforeBg">
																<span class="gIcon icon-select01 on" data-uiselector="imageStyle"></span>
																 <img class="coverImg" src="/resources/img/<% %>6b0Ud0159r1tc3sh4416_5ksoqj.jpg" alt="" data-uiselector="itemImage">
													    </div>
														<span class = "bandName">밴드 이름</span>
													 </a>
												</div>
												</li>
												<li>
												<div class="bandCover skin10"
																		data-uiselector="panelItemImage">
																		<a href="#">
																		<div class="cover sf_beforeBg">
																				<span class="gIcon icon-select01"
																					data-uiselector="imageStyle"></span> 
																					<img class="coverImg" src="/resources/img/7f5Ud0155waqfh7iezh9_5ksoqj.jpg" alt="" data-uiselector="itemImage">
																			</div>
																			<span class = "bandName">밴드 이름</span>
																	</a>
																	</div>
												</li>
												<li>
												<div class="bandCover skin10" data-uiselector="panelItemImage">
													<a href="#">
													<div class="cover sf_beforeBg">
															<span class="gIcon icon-select01" data-uiselector="imageStyle"></span> <img class="coverImg" src="/resources/img/ajdUd01511odpeysin1et_5ksoqj.jpg" alt="" data-uiselector="itemImage">
													</div> 
													<span class="bandName">밴드 이름</span></a>
												</div>
												</li>
												<li>
												<div class="bandCover skin10"
																		data-uiselector="panelItemImage">
																		<a href="#"><div
																				class="cover sf_beforeBg">
																				<span class="gIcon icon-select01"
																					data-uiselector="imageStyle"></span><img class="coverImg" src="/resources/img/c54Ud0151b051ydyk1gvt_5ksoqj.jpg" alt="" data-uiselector="itemImage">
																			</div> <span class="bandName">밴드 이름</span></a>
																	</div>
												</li>
												<li>
												<div class="bandCover skin10" data-uiselector="panelItemImage">
													<a href="#">
													<div class="cover sf_beforeBg">
														<span class="gIcon icon-select01" data-uiselector="imageStyle"></span> 
														<img class="coverImg" src="/resources/img/edeUd0151jv45pjboxwg5_5ksoqj.jpg" alt="" data-uiselector="itemImage">
													</div> 
													<span class="bandName">밴드 이름</span>
													</a>
												</div>
											   </li>
												<li>
												<div class="bandCover skin10"data-uiselector="panelItemImage">
																		<a href="#"><div
																				class="cover sf_beforeBg">
																				<span class="gIcon icon-select01"
																					data-uiselector="imageStyle"></span> <img class="coverImg" src="/resources/img/gg3Ud0151zqj3fbf4d53_5ksoqj.jpg" alt="" data-uiselector="itemImage">
																			</div> <span class="bandName">밴드 이름</span></a>
																	</div>
												</li>
												<li>
												<div class="bandCover skin10"
																		data-uiselector="panelItemImage">
																		<a href="#">
																		<div
																				class="cover sf_beforeBg">
																				<span class="gIcon icon-select01"
																					data-uiselector="imageStyle"></span> <img class="coverImg" src="/resources/img/ibaUd01539m1gvhpzd21_5ksoqj.jpg" alt="" data-uiselector="itemImage">
																			</div> 
																			<span class="bandName">밴드 이름</span></a>
																			</div>
												</li>
												<li>
												<div class="bandCover skin10"
																		data-uiselector="panelItemImage">
																		<a href="#"><div
																				class="cover sf_beforeBg">
																				<span class="gIcon icon-select01"
																					data-uiselector="imageStyle"></span> <img class="coverImg" src="/resources/img/jfgUd01512drdn2v586vm_5ksoqj.jpg" alt="" data-uiselector="itemImage">
																			</div> <span class="bandName">밴드 이름</span></a>
																	</div>
												</li>
												<li>
												<div class="bandCover skin10"
																		data-uiselector="panelItemImage">
																		<a href="#"><div
																				class="cover sf_beforeBg">
																				<span class="gIcon icon-select01"
																					data-uiselector="imageStyle"></span> <img class="coverImg" src="/resources/img/18aUd015f6anox25rtzm_5ksoqj.jpg" alt="" data-uiselector="itemImage">
																			</div> <span class="bandName">밴드 이름</span></a>
																	</div>
												</li>
											</ul>
										</div>
										<div class="slide" style="width: 610px; overflow: visible;">
											<ul style="float: none; display: block; position: absolute; top: 0px; left: 610px; width: 610px;">
												<li>
												<div class="photoCover">
														<div class="btn gIcon icon-camera js-fileapi-wrapper"
															data-uiselector="coverImageUploader">
															<span class="txt">사진 선택</span> <input type="file"
																class="imageUpload" title="추가" accept="image/*"
																name="attachment">
														</div>
														<div class="mask" data-uiselector="coverImageMasking"
															style="display: none;"></div>
														<span class="img" data-uiselector="coverImage"
															style="display: none; background-image: url()"></span>
													</div>
												</li>
												<li>
												<div class="bandCover skin10"
														data-uiselector="panelItemImage">
														<a href="#"><div
																class="cover sf_beforeBg">
																<span class="gIcon icon-select01"
																	data-uiselector="imageStyle"></span> <img class="coverImg" src="/resources/img/2adUd015dxxc1lkmmlmh_5ksoqj.jpg" alt="" data-uiselector="itemImage">
																	</div> <span class="bandName">밴드 이름</span></a>
													</div>
												</li>
												<li>
												<div class="bandCover skin10"
														data-uiselector="panelItemImage">
														<a href="#"><div
																class="cover sf_beforeBg">
																<span class="gIcon icon-select01"
																	data-uiselector="imageStyle"></span> <img class="coverImg" src="/resources/img/431Ud0151bxt5chl4a7mh_5ksoqj.jpg" alt="" data-uiselector="itemImage">
															</div> <span class="bandName">밴드 이름</span></a>
													</div>
												</li>
												<li>
												<div class="bandCover skin10"
														data-uiselector="panelItemImage">
														<a href="#"><div
																class="cover sf_beforeBg">
																<span class="gIcon icon-select01"
																	data-uiselector="imageStyle"></span> <<img class="coverImg" src="/resources/img/7agUd015867sh8k2mbh1_5ksoqj.jpg" alt="" data-uiselector="itemImage">
															</div> <span class="bandName">밴드 이름</span></a>
													</div>
												</li>
												<li>
												<div class="bandCover skin10"
														data-uiselector="panelItemImage">
														<a href="#"><div
																class="cover sf_beforeBg">
																<span class="gIcon icon-select01"
																	data-uiselector="imageStyle"></span> <img class="coverImg" src="/resources/img/963Ud015jwmmquz4iv25_5ksoqj.jpg" alt="" data-uiselector="itemImage">
															</div> <span class="bandName">밴드 이름</span></a>
													</div>
												</li>
												<li>
												<div class="bandCover skin10"
														data-uiselector="panelItemImage">
														<a href="#"><div
																class="cover sf_beforeBg">
																<span class="gIcon icon-select01"
																	data-uiselector="imageStyle"></span> <img class="coverImg" src="/resources/img/b1aUd015qdxqdqv1sm35_5ksoqj.jpg" alt="" data-uiselector="itemImage">
															</div> <span class="bandName">밴드 이름</span></a>
													</div>
												</li>
												<li>
												<div class="bandCover skin10"
														data-uiselector="panelItemImage">
														<a href="#"><div
																class="cover sf_beforeBg">
																<span class="gIcon icon-select01"
																	data-uiselector="imageStyle"></span> <img class="coverImg" src="/resources/img/cd0Ud0151dzqlgdizelll_5ksoqj.jpg" alt="" data-uiselector="itemImage">
															</div> <span class="bandName">밴드 이름</span></a>
													</div>
												</li>
												<li>
												<div class="bandCover skin10"
														data-uiselector="panelItemImage">
														<a href="#"><div
																class="cover sf_beforeBg">
																<span class="gIcon icon-select01"
																	data-uiselector="imageStyle"></span> <img class="coverImg" src="/resources/img/fb5Ud0151enxsvzq782j5_5ksoqj.jpg" alt="" data-uiselector="itemImage">
															</div> <span class="bandName">밴드 이름</span></a>
													</div>
												</li>
												<li>
												<div class="bandCover skin10"
														data-uiselector="panelItemImage">
														<a href="#"><div
																class="cover sf_beforeBg">
																<span class="gIcon icon-select01"
																	data-uiselector="imageStyle"></span> <img class="coverImg" src="/resources/img/ggaUd015v6nqvoq7ffxb_5ksoqj.jpg" alt="" data-uiselector="itemImage">
															</div> <span class="bandName">밴드 이름</span></a>
													</div>
												</li>
												<li>
												<div class="bandCover skin10"
														data-uiselector="panelItemImage">
														<a href="#"><div
																class="cover sf_beforeBg">
																<span class="gIcon icon-select01"
																	data-uiselector="imageStyle"></span> <img class="coverImg" src="/resources/img/f98Ud0151l9enwiigyjjk_5ksoqj.jpg" alt="" data-uiselector="itemImage">
															</div> <span class="bandName">밴드 이름</span></a>
													</div>
												</li>
											</ul>
										</div>
										<div class="slide" style="width: 610px; overflow: visible;">
											<ul style="float: none; display: block; position: absolute; top: 0px; left: 1220px; width: 610px;">
												<li>
												<div class="photoCover">
														<div class="btn gIcon icon-camera js-fileapi-wrapper"
															data-uiselector="coverImageUploader">
															<span class="txt">사진 선택</span> <input type="file"
																class="imageUpload" title="추가" accept="image/*"
																name="attachment">
														</div>
														<div class="mask" data-uiselector="coverImageMasking"
															style="display: none;"></div>
														<span class="img" data-uiselector="coverImage"
															style="display: none; background-image: url()"></span>
													</div>
												</li>
												<li>
												<div class="bandCover skin10"
														data-uiselector="panelItemImage">
														<a href="#"><div
																class="cover sf_beforeBg">
																<span class="gIcon icon-select01"
																	data-uiselector="imageStyle"></span> <img class="coverImg" src="/resources/img/ffdUd0151pb0p75i5xpaw_5ksoqj.jpg" alt="" data-uiselector="itemImage">
															</div> <span class="bandName">밴드 이름</span></a>
													</div>
												</li>
												<li>
												<div class="bandCover skin10"
														data-uiselector="panelItemImage">
														<a href="#"><div
																class="cover sf_beforeBg">
																<span class="gIcon icon-select01"
																	data-uiselector="imageStyle"></span> <img class="coverImg" src="/resources/img/h15Ud0151ac057zzlko0i_5ksoqj.jpg" alt="" data-uiselector="itemImage">
															</div> <span class="bandName">밴드 이름</span></a>
													</div>
												</li>
												<li>
												<div class="bandCover skin10"
														data-uiselector="panelItemImage">
														<a href="#"><div
																class="cover sf_beforeBg">
																<span class="gIcon icon-select01"
																	data-uiselector="imageStyle"></span> <img class="coverImg" src="/resources/img/h6hUd015i2iokpg9rtpm_5ksoqj.jpg" alt="" data-uiselector="itemImage">
															</div> <span class="bandName">밴드 이름</span></a>
													</div>
												</li>
												<li>
												<div class="bandCover skin10"
														data-uiselector="panelItemImage">
														<a href="#"><div
																class="cover sf_beforeBg">
																<span class="gIcon icon-select01"
																	data-uiselector="imageStyle"></span> <img class="coverImg" src="/resources/img/4i2Ud0151lbhfwvi9ykhw_5ksoqj.jpg" alt="" data-uiselector="itemImage">
															</div> <span class="bandName">밴드 이름</span></a>
													</div>
												</li>
												<li>
												<div class="bandCover skin10"
														data-uiselector="panelItemImage">
														<a href="#"><div
																class="cover sf_beforeBg">
																<span class="gIcon icon-select01"
																	data-uiselector="imageStyle"></span> <img class="coverImg" src="/resources/img/i3gUd01514xuawqyb3dvm_5ksoqj.jpg" alt="" data-uiselector="itemImage">
															</div> <span class="bandName">밴드 이름</span></a>
													</div>
												</li>
												<li>
												<div class="bandCover skin10"
														data-uiselector="panelItemImage">
														<a href="#"><div
																class="cover sf_beforeBg">
																<span class="gIcon icon-select01"
																	data-uiselector="imageStyle"></span> <img class="coverImg" src="/resources/img/10gUd0151eh0k0xf0gavm_5ksoqj.jpg" alt="" data-uiselector="itemImage">
															</div> <span class="bandName">밴드 이름</span></a>
													</div>
												</li>
												<li>
												<div class="bandCover skin10"
														data-uiselector="panelItemImage">
														<a href="#"><div
																class="cover sf_beforeBg">
																<span class="gIcon icon-select01"
																	data-uiselector="imageStyle"></span><img class="coverImg" src="/resources/img/4gaUd0151kgpqys8mv06a_5ksoqj.jpg" alt="" data-uiselector="itemImage">
															</div> <span class="bandName">밴드 이름</span></a>
													</div>
												</li>
												<li>
												<div class="bandCover skin10"
														data-uiselector="panelItemImage">
														<a href="#"><div
																class="cover sf_beforeBg">
																<span class="gIcon icon-select01"
																	data-uiselector="imageStyle"></span> <img class="coverImg" src="/resources/img/97cUd015hwteos21jne_5ksoqj.jpg" alt="" data-uiselector="itemImage">
															</div> <span class="bandName">밴드 이름</span></a>
													</div>
												</li>
												<li>
												<div class="bandCover skin10"
														data-uiselector="panelItemImage">
														<a href="#"><div
																class="cover sf_beforeBg">
																<span class="gIcon icon-select01"
																	data-uiselector="imageStyle"></span> <img class="coverImg" src="/resources/img/bj5Ud0151fdqezthoggd8_5ksoqj.jpg" alt="" data-uiselector="itemImage">
															</div> <span class="bandName">밴드 이름</span></a>
													</div>
												</li>
											</ul>
										</div>
										<div class="slide" style="width: 610px; overflow: visible;">
											<ul style="float: none; display: block; position: absolute; top: 0px; left: 1830px; width: 610px;">
												<li><div class="photoCover">
														<div class="btn gIcon icon-camera js-fileapi-wrapper"
															data-uiselector="coverImageUploader">
															<span class="txt">사진 선택</span> <input type="file"
																class="imageUpload" title="추가" accept="image/*"
																name="attachment">
														</div>
														<div class="mask" data-uiselector="coverImageMasking"
															style="display: none;"></div>
														<span class="img" data-uiselector="coverImage"
															style="display: none; background-image: url()"></span>
													</div></li>
												<li><div class="bandCover skin10"
														data-uiselector="panelItemImage">
														<a href="#"><div
																class="cover sf_beforeBg">
																<span class="gIcon icon-select01"
																	data-uiselector="imageStyle"></span> <img class="coverImg" src="/resources/img/ea5Ud01514dvlq3qyua9r_5ksoqj.jpg" alt="" data-uiselector="itemImage">
															</div> <span class="bandName">밴드 이름</span></a>
													</div></li>
												<li><div class="bandCover skin10"
														data-uiselector="panelItemImage">
														<a href="#"><div
																class="cover sf_beforeBg">
																<span class="gIcon icon-select01"
																	data-uiselector="imageStyle"></span> <img class="coverImg" src="/resources/img/h09Ud0151bvy3xz3d3wf4_5ksoqj.jpg" alt="" data-uiselector="itemImage">
															</div> <span class="bandName">밴드 이름</span></a>
													</div></li>
												<li><div class="bandCover skin10"
														data-uiselector="panelItemImage">
														<a href="#">
														<div class="cover sf_beforeBg">
																<span class="gIcon icon-select01"
																	data-uiselector="imageStyle"></span> <img class="coverImg" src="/resources/img/i6hUd015376j9tmdmdh9_5ksoqj.jpg" alt="" data-uiselector="itemImage">
															</div> <span class="bandName">밴드 이름</span></a>
													</div></li>
												<li><div class="bandCover" data-cover="off"></div></li>
												<li><div class="bandCover" data-cover="off"></div></li>
												<li><div class="bandCover" data-cover="off"></div></li>
												<li><div class="bandCover" data-cover="off"></div></li>
												<li><div class="bandCover" data-cover="off"></div></li>
												<li><div class="bandCover" data-cover="off"></div></li>
											</ul>
										</div>
									</div>
									<button type="button" class="prev gIcon icon-arrow-prev"
										data-uiselector="btnPrev">이전</button>
									<button type="button" class="next gIcon icon-arrow-next"
										data-uiselector="btnNext">다음</button>
									<div class="coverListPaging" data-uiselector="pagingWrap">
										<button type="button" class="on">1페이지</button>
										<button type="button" >2페이지</button>
										<button type="button">3페이지</button>
										<button type="button">4페이지</button>
									</div>
								</div>
							</div>
						</div>
			<script>
			$(document).ready(function(){
				$("div.coverListPaging button").click(function(){
				    var index = $(this).index();
					$('div.coverListPaging').find("button").each(function(idx){ 
						var left = (idx * 610)+(-610 *(index));
						$($('.slide')[idx]).find("ul").css("left" , left + "px");
					});
				});
			});
		
			</script>
						<div class="btnFooterCover">
							<button type="button" class="uButton uButtonDefault"
								data-width="large" data-height="xLarge"
								data-uiselector="btnCancel">취소</button>
							<button type="button" class="uButton uButtonPoint"
								data-width="large" data-height="xLarge"
								data-uiselector="btnConfirm">완료</button>
						</div>
						</section>
					</div>
					</main>
				</div>
			</div>
		
			<footer id="footer">
			<h1 class="gSrOnly">운영정책 및 약관안내</h1>
			<nav class="copy"> <a href="http://band.us/cs/#!/notice"
				target="_blank">공지사항</a> <a
				href="https://partners.band.us/partners/ko/main.nhn" target="_blank">파트너</a>
			<a href="https://ad.band.us/" target="_blank">광고</a> <a
				href="http://band.us/policy/terms" target="_blank">이용약관</a> <a
				href="http://band.us/policy/privacy" target="_blank"><strong>개인정보처리방침</strong></a>
			<a href="http://band.us/policy/youthpolicy" target="_blank">청소년
				보호정책</a> <a href="http://band.us/policy/operating" target="_blank">운영정책</a>
			<a href="http://band.us/policy/usurpation" target="_blank">권리침해
				신고안내</a> <a href="https://developers.band.us/" target="_blank">개발자</a> <a
				href="http://band.us/cs/#!/help" target="_blank">도움말</a>
			<address>
				<a href="http://www.campmobile.com/" target="_blank"><strong>BAND</strong></a>
				© 2016
			</address>
			</nav></footer>
			<div id="layerContainer"></div>
			<div id="mentionParent"></div>
		</div>
	</div>
	