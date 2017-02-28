<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!-- saved from url=(0049)http://band.us/#!/band/64444986?isBandCreate=true -->
<html lang="ko" class="win win81 chrome chrome55 webkit webkit537">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>${band.name}</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="format-detection" content="telephone=no">
<script type="text/javascript" src="/resources/source/jquery-1.10.2.js"></script>
<link rel="shortcut icon"
	href="http://s.cmstatic.net/webclient/res/20170111180714/images/favicon.ico">
<link rel="icon" sizes="96x96"
	href="http://s.cmstatic.net/webclient/res/20170111180714/images/favicon.png">

<link rel="apple-touch-icon"
	href="http://s.cmstatic.net/webclient/res/20170111180714/images/favicon.png">
<link rel="publisher" href="https://plus.google.com/+BandUsTogether">
<link rel="stylesheet" type="text/css"
	href="http://s.cmstatic.net/webclient/dres/20170113111927/css/bandComponent.css?_=20170113111927">
<link rel="stylesheet" type="text/css"
	href="http://s.cmstatic.net/webclient/dres/20170113111927/css/band.css?_=20170113111927">
<link rel="stylesheet" type="text/css"
	href="http://s.cmstatic.net/webclient/dres/20170113111927/css/bandLayout.css?_=20170113111927">

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
<link rel="stylesheet" type="text/css"
	href="/resources/css/bandComponent.css">
<link rel="stylesheet" type="text/css" href="/resources/css/band.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css/bandLayout.css">

<style>
.cRecentList .main li .cell:first-child span[data-img=birth], .cRecentList .main li .cell:first-child span[data-img=cong], .lyMenu .shareMenu .band:before, .lyMenu .shareMenu .facebook:before, .lyMenu .shareMenu .googlePlus:before, .lyMenu .shareMenu .naverCafe:before, .lyMenu .shareMenu .twitter:before, .lyMenu .shareMenu .urlCopy:before, .newIcon, .officialBand.typeA, .officialBand.typeA2, .officialBand.typeB, .officialBand.typeB2, .officialBand.typeC, .officialBand.typeD, .uIconangry, .uIconangry22, .uIconbest, .uIconbest22, .uIconenvious, .uIconenvious22, .uIconlike, .uIconlike22, .uIconsad, .uIconsad22, .uIconsmile, .uIconsmile22, .uIconsurprise, .uIconsurprise22
{
	background-image:url("http://s.cmstatic.net/webclient/dres/20170118112756/images/spr_img.png");
	overflow:hidden;
	display:inlint-block;
	text-indent:-999px;
	background-repeat:no-repeat;
	content:'';
}
</style>
<script type="text/javascript">

	// IE console 에러 방어 코드
	if (!window.console) {
		window.console = {
			log : function() {
			}
		};
	}

	// CKEditor Base Path
	window.CKEDITOR_BASEPATH = window.scriptBaseUrl + '/_libs/ckeditor/';
</script>

<script>
	$(document).ready(function(){
		var toggle = false;
		$("div.uThumb").addClass("${band.color}");
		
		
		$("div.postWriteForm").click(function(){
			$('[data-viewname="DPostEditorLayerView"]').css("visibility","visible");
			$("body.skin").css("overflow","hidden").css("padding-right","17px");		
		});
		
		$("div.postBody").click(function(){
			$('[data-viewname="DPostDetailLayerView"]').css("visibility","visible");
			$("body.skin").css("overflow","hidden").css("padding-right","17px");		
			var text = $(this).find("p").html();
			$('[data-viewname="DPostDetailLayerView"]').find("p").html(text);
		});
		
		$("button.btnLyClose").click(function(){
			$('[data-viewname="DPostEditorLayerView"]').css("visibility","hidden");
			$('[data-viewname="DPostDetailLayerView"]').css("visibility","hidden");
			$("body.skin").css("overflow","visible").css("padding-right","0px");
		});
		
		
		
		$("button.commentToggle").click(function(){
			if(toggle == false) 
		    {
				$(this).removeClass("icon-dselect-down").addClass("icon-dselect-up");
				$("div.cPost").data( "type", "comment" );
				$("div._commentRegion").children().css("display","block");
				$("div.cCommentWrite").css("display","block");
				toggle = true;
		    }
			else
			{
				$(this).removeClass("icon-dselect-up").addClass("icon-dselect-down");
				$("div.cPost").removeData("type", "comment" );
				$("div._commentRegion").children().css("display","none");
				$("div.cCommentWrite").css("display","none");
				toggle = false;
			}
		});
		
		$("a.icon-comment-off").click(function(){
			$("div.cPost").data( "type", "comment" );
			$("div._commentRegion").children().css("display","block");
			$("div.cCommentWrite").css("display","block");
			toggle = true;
		});
		
		$("a._btnInputEmotion").click(function(){
			if($("div.emoticonFace").css("display") == 'none')$("div.emoticonFace").css("display","table");
			else $("div.emoticonFace").css("display","none");
		});
		
		$("button._btnSubmitPost").click(function(){
			var text = "";
			$("div.contentEditor").find("p").each(function(idx){ 
				text += $($("div.contentEditor").find("p")[idx]).text() + '<br/>';
			});
			$("input[name='text']").val(text);
			var sticker = "";
			$("div.bandWidgetContent").each(function(idx){
				sticker += ($($("div.bandWidgetContent")[idx]).find("img").attr("src") + " ");
			});
			$("input[name='sticker']").val(sticker);
			$("#frmPostWrite").submit();
		});
		
		$("button.postSet").click(function(){
			if($(this).parent().find("div").css("display")=="none"){
				
				$(this).parent().addClass("menuOn");
				$(this).parent().find("div").css("display","block");
			}else{
				$(this).parent().removeClass("menuOn");
				$(this).parent().find("div").css("display","none");
			}
		});
		
		$("button.sticker").click(function(){
			$('[data-viewname="DEditorStickerAttachView"]').css("visibility", "visible");
			$($("[data-uiselector *='spriteRegion']")[0]).css("display","block");
			var url = $($("li.sf_border").find("button")[0]).css("background-image")
			var newUrl = url.replace("off","on");
			$($("li.sf_border").find("button")[0]).css("background-image", newUrl);
			$(("li.sf_border")[0]).addClass("on");
		});
		
		$("li.sf_border").find("button").click(function(){
			var index = $("li.sf_border").index($(this).parent());
			var url = $("li.sf_border.on").find("button").css("background-image");
			var newUrl = url.replace("on","off");
			$("li.sf_border.on").find("button").css("background-image", newUrl);
			$("li.sf_border.on").removeClass("on");
			
			url = $(this).css("background-image");
			newUrl = url.replace("off","on");
			$("li.sf_border").removeClass("on");
			$(this).parent().addClass("on");
			$(this).css("background-image", newUrl);
			
			$("[data-uiselector *='spriteRegion']").css("display","none");
			$($("[data-uiselector *='spriteRegion']")[index]).css("display","block");
		});
		
		$("button.prev").click(function(){
			var left = parseInt($("div.stickerNav").find("ul").css("left")) + 51;
			console.log(left);
			$("div.stickerNav").find("ul").css("left", left + "px");
			if(left === 0)
			{
				$("button.next").attr("data-status","");
				$("button.next").attr('disabled',false);
				$("button.prev").attr("data-status","");
				$("button.prev").attr("disabled",true);
			}
			else 
			{
				$("button.next").attr("data-status","");
				$("button.next").attr('disabled',false);	
				$("button.prev").attr("data-status","active");
				$("button.prev").attr("disabled",false);
			}
		});
		
		$("button.next").click(function(){
			var left = parseInt($("div.stickerNav").find("ul").css("left")) - 51;
			$("div.stickerNav").find("ul").css("left", left + "px");
			if(left === -102)
			{ 
				$("button.prev").attr("data-status","active");
				 $("button.prev").attr("disabled",false);
				 $("button.next").attr("data-status","");
				 $("button.next").attr('disabled',true);
				 
			}
			else{
				$("button.prev").attr("data-status","active");
				$("button.prev").attr("disabled",false);
				$("button.next").attr("data-status","active");
				$("button.next").attr("disabled",false);
			}
		});
	
		var longHtml
		$("button.thumb").click(function(){
			var span = $(this).find("span").text();;
			var stickerUrl = span.split('-');
			longHtml = $('<div tabindex="-1" contenteditable="false" data-cke-widget-wrapper="1" data-cke-filter="off" class="cke_widget_wrapper cke_widget_block cke_widget_selected" data-cke-display-name="band:attachment" data-type="sticker" type="sticker" data-cke-widget-id="2">'
					+ '<band:attachment type="sticker" id="c1866"'
					+	'data-model="%7B%22packNo%22%3A272%2C%22stickerId%22%3A%221%22%2C%22imageUrl%22%3A%22http%3A%2F%2Fs.cmstatic.net%2Fband%2Fsticker%2F272%2Fxhdpi%2F1%22%7D"'
					+	'data-cke-widget-keep-attr="0" data-widget="sticker"'
					+	'class="cke_widget_element" data-cke-widget-data="%7B%22modelJSON%22%3A%22%257B%2522packNo%2522%253A272%252C%2522stickerId%2522%253A%25221%2522%252C%2522imageUrl%2522%253A%2522http%253A%252F%252Fs.cmstatic.net%252Fband%252Fsticker%252F272%252Fxhdpi%252F1%2522%257D%22%2C%22id%22%3A%22%22%2C%22widgetName%22%3A%22sticker%22%2C%22classes%22%3Anull%7D">'
					+	'<div class="bandWidgetBtnWrap"> <button type="button" id="delete" class="bandWidgetBtn -del uButton -h29 sf_bg _btnDelete">삭제</button> </div>'
					+	'<div class="bandWidgetContent sf_tOutline">'
					+		'<img src="http://s.cmstatic.net/band/sticker/' + stickerUrl[0]+ '/xhdpi/' + stickerUrl[1] + '"'
					+			'width="130"> </div> </band:attachment>'
					+ '<span class="cke_reset cke_widget_drag_handler_container" style="background: url(http://s.cmstatic.net/webclient/script/20170124144259/_libs/ckeditor/plugins/widget/images/handle.png) rgba(220, 220, 220, 0.498039); width: 130px; top: -15px; left: 0px; display: block;"><img class="cke_reset cke_widget_drag_handler" data-cke-widget-drag-handler="1" src="data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw=="'
					+	'width="15" title="움직이려면 클릭 후 드래그 하세요" height="15"></span></div>');
				$("div.postWriteForm").find("p").last().append(longHtml);
				$('[data-viewname="DEditorStickerAttachView"]').css("visibility", "hidden");	
		});

		$('body').on('click', 'button.bandWidgetBtn', function(){
			$($(this).parent().parent().parent()).remove();
		});
	});
	
</script>
</head>
<body style="padding-right: 0px; overflow: visible;" class="skin ${band.color}"
	data-viewtype="">
	<div data-uiselector="bodyRegion" class="bodyRegion">
		<div data-viewname="DWebMainLayoutView" id="wrap">
			<div data-uiselector="gnbRegion" style="display: block;">
				<header data-viewname="DGnbMenuView" id="header" class="sf_beforeBg"
					style="padding-right: 0px;">
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
								<input type="text" id="input_search_view27"
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
							<li class="bandFindLink"><a
								href="http://band.us/#!/discover">밴드 찾기</a></li>
							<li class="push"><button id="btnShowNews" type="button"
									class="gIcon icon-push-on" data-uiselector="btnShowNews">
									<span class="gSrOnly">새소식</span>
									<mark class="_newsCount" style="display: block;">3</mark>
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
									<img src="/resources/img/profile.gif" width="31"
									height="31" alt="" class="globalFaceImage"> <span
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
				class="topBarVisible">
				<div data-viewname="DBandLayoutView">
					<div id="lnb" class="sf_bg">
						<div data-viewname="DLnbMenuView">
							<ul class="_joinedLnb">
								<li class="on"><a href="http://band.us/#!/band/64444986"
									class="sf_tBorder _fullArticleLnbBtn _eachLnbMenu"><span>전체글</span></a></li>
								<li><a href="http://band.us/#!/band/64444986/album"
									class="sf_tBorder _albumLnbBtn _eachLnbMenu _unclickableMenu"><span>사진첩</span></a></li>
								<li><a href="http://band.us/#!/band/64444986/calendar"
									class="sf_tBorder _calendarLnbBtn _eachLnbMenu _unclickableMenu"><span>일정</span></a></li>
								<li><a href="http://band.us/#!/band/64444986/member"
									class="sf_tBorder _memberLnbBtn _eachLnbMenu _unclickableMenu"><span>멤버</span></a></li>
							</ul>
						</div>
					</div>
					<aside id="info" data-uiselector="leftSection">
						<div data-uiselector="bandCoverRegion">
							<div data-viewname="DBandCoverItemView" class="infoInner">
								<div class="uCover aside" data-type="type2">
									<div class="bandUri">
										<div class="cover">
											<div class="uThumb" data-type="type2">
												<a href="http://band.us/#!/band/64444986"
													class="inner coverDefault sf_beforeBg"> <img
													class="coverImg"
													src="${band.imgUrl}"
													alt="">
												</a>
											</div>
										</div>
										<div class="bandName">
											<div class="bandWrap">
												<p class="uriText">
													<a href="http://band.us/#!/band/64444986">${band.name}</a>
												</p>
											</div>
										</div>
									</div>
								</div>
								<div class="coverInfo">
									<div class="bandInfo">
										<div class="meta">
											<p class="member -type2">
												<a href="http://band.us/#" class="_memberLink ">멤버 1</a> <a
													href="http://band.us/#!/band/64444986/invite"
													class="btnInvite sf_color sf_tBorder gIcon icon-btn-add-file2">초대</a>
											</p>
											<div class="set">
												<a href="http://band.us/#!/band/64444986/bandSetting"
													class="config gIcon icon-setting03"
													data-uiselector="anchorTag">밴드 설정</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</aside>
					<main id="content" data-uiselector="contentRegion">
					<section data-viewname="DBandBoardLayoutView" class="boardList">
						<div class="searchWrap" data-uiselector="postSearchWrap">
							<form data-uiselector="searchForm" autocomplete="off">
								<h2 class="gSrOnly">검색 입력 폼</h2>
								<div class="uInputSearch -type2"
									data-uiselector="inputSearchWrap">
									<label class="gSrOnly" for="input_search">이름, 글내용,
										해시태그로 검색</label> <input type="text" id="input_search"
										placeholder="이름, 글내용, 해시태그로 검색" maxlength="200"
										autocomplete="off" data-uiselector="searchTxt">
									<button type="submit" class="gIcon icon-search02">
										<span class="gSrOnly">검색</span>
									</button>
								</div>
								<div class="searchHint" data-uiselector="searchHint">
									<h3 class="gSrOnly">검색 옵션 및 힌트</h3>
									<p class="old _focusableItem">
										<a href="http://band.us/#" class="gIcon icon-right"
											data-uiselector="searchOldPosts">예전글 보기</a>
									</p>
								</div>
							</form>
						</div>
						<div class="writeWrap" data-uiselector="postWriteRegion">
							<div data-viewname="DPostFakeEditorView" class="cPostWrite">
								<h3 class="gSrOnly">글쓰기</h3>
								<a href="#"
									class="cPostWriteEventWrapper _btnOpenWriteLayer"><div
										class="postWriteForm -standby">
										<div class="contentEditor">멤버들에게 전할 소식을 남겨주세요.</div>
									</div>
									<div class="buttonArea">
										<ul class="sf_color">
											<li>
												<button class="sticker gIcon icon-sticker-off" type="button">
													<span class="tooltip sf_tBg">스티커</span>
												</button>
											</li>
											<li><label class="photo gIcon icon-write-camera-off"><span
													class="tooltip sf_tBg">사진</span></label></li>
											<li><label class="movie gIcon icon-movie-off"><span
													class="tooltip sf_tBg">동영상</span></label></li>
											<li>
												<button class="vote gIcon icon-vote-off" type="button">
													<span class="tooltip sf_tBg">투표</span>
												</button>
											</li>
											<li><label class="file gIcon icon-file02"><span
													class="tooltip sf_tBg">파일</span></label></li>
											<li>
												<button class="todo gIcon icon-todo-off" type="button">
													<span class="tooltip sf_tBg">TO DO</span>
												</button>
											</li>
											<li>
												<button class="calendar gIcon icon-etc-event" type="button">
													<span class="tooltip sf_tBg">일정</span>
												</button>
											</li>
											<li>
												<button class="n gIcon icon-n-off" type="button">
													<span class="tooltip sf_tBg">N빵</span>
												</button>
											</li>
											<li>
												<button class="reserve gIcon icon-setting _btnWriteSetting"
													type="button">
													<span class="tooltip sf_tBg">글쓰기 설정</span>
												</button>
											</li>
										</ul>
									</div></a>
							</div>
						</div>
						<div class="reserveWrap" data-uiselector="reservedPostInfoWrap"></div>
						<div class="_bandTagRegion">
							<div data-viewname="DBandBoardTagView" style="display: none;">
							</div>
						</div>
						<div data-uiselector="bandNoticeRegion">
							<div data-viewname="DBandBoardNoticeView" class="noticeWrap"
								style="display: none;"></div>
						</div>
						
						
						<div class="postWrap" data-uiselector="postListRegion">
							<div data-viewname="DPostListView">
							<c:forEach items="${list}" var="post">
								<div data-viewname="DPostLayoutView">
								<div class="cPost  _postMainWrap">
										<div class="_moreOptionListRegion">
											<div data-viewname="DPostMoreOptionListView">
												<div class="postFunction _postFunctionWrap">
													<button type="button"
														class="postSet _btnPostMore gIcon icon-more">글 옵션</button>
													<div class="lyMenu _postMoreMenu"
														style="min-width: 145px; display: none;">
														<ul class="_postMoreMenuUl">
															<li><a href="#" data-menueventname="postMoreAction:modifyPost">글 수정</a></li>
															<li><a href="#" data-menueventname="postMoreAction:setNotice">공지로 등록</a></li>
															<li><a href="#" data-menueventname="postMoreAction:copyPost">다른 밴드에 올리기</a></li>
															<li><a href="#" data-menueventname="postMoreAction:deletePost">글 삭제</a></li>
															<li><a href="#" data-menueventname="postMoreAction:showPostUrl">게시글 URL 보기</a></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
										<div class="_postShareOptionListRegion">
											<div data-viewname="DPostShareOptionListView">
												<div class="lyMenu -lyShare _lyShare"
													style="width: 220px; display: none;">
													<ul class="shareMenu">
														<li class="band _btnShareBand"><a
															href="http://band.us/#" class="_btnShareBand">다른 밴드로
																공유</a></li>
														<li class="band _btnShareBandOriginPost"><a
															href="http://band.us/#" class="_btnShareBandOriginPost">다른
																밴드로 공유</a></li>
														<li class="facebook"><a href="http://band.us/#"
															class="_btnShareFacebook">Facebook</a></li>
														<li class="twitter"><a href="http://band.us/#"
															class="_btnShareTwitter">Twitter</a></li>
														<li class="googlePlus"><a href="http://band.us/#"
															class="_btnShareGoogle">Google+</a></li>
														<li class="naverCafe"><a href="http://band.us/#"
															class="_btnShareCafe">네이버 카페</a></li>
														<li class="urlCopy"><a href="http://band.us/#"
															class="_btnDetailUrl">URL복사</a></li>
													</ul>
												</div>
											</div>
										</div>
										<div class="postMain _postRegion">
											<div data-viewname="DPostListItemView">
												<div class="_postAuthorRegion">
													<div data-viewname="DPostAuthorView">
														<div class="postWriter ">
															<a href="http://band.us/#" class="profileImg _authorImg"><img
																src="/resources/img/profile.gif" alt="${post.writer}">
																<span class="uLeaderBand -typeA gIcon icon-leader"><span
																	class="gSrOnly">리더</span></span></a>
															<div class="profileText _profileText">
																<span class="textName"><strong class="name">${post.writer}</strong>
																	<span title="" class="memo"></span></span>
																<div class="textTime">지금막</div>
															</div>
														</div>
													</div>
												</div>
												<div class="postBody">
													<div class="_textRegion">
														<div data-viewname="DPostTextView">
															<div class="postText _postText">
																<p class="txtBody">${post.text}
																</p>
															</div>
														</div>
													</div>
													<div class="_stickerRegion" style="display: none;"></div>
													<div class="_attachmentPollRegion" style="display: none;"></div>
													<div class="_attachmentScheduleRegion"
														style="display: none;"></div>
													<div class="_attachmentTodoRegion" style="display: none;"></div>
													<div class="_attachmentBillSplitRegion"
														style="display: none;"></div>
													<div class="_attachmentPhotoAlbumRegion"
														style="display: none;"></div>
													<div class="_attachmentPromotionPhotosRegion"
														style="display: none;"></div>
													<div class="_attachmentPhotosRegion" style="display: none;"></div>
													<div class="_sharedPostSnippetRegion"
														style="display: none;"></div>
													<div class="_attachmentSnippetRegion"
														style="display: none;"></div>
													<div class="_attachmentFilesRegion" style="display: none;"></div>
													<div class="_attachmentLocationRegion"
														style="display: none;"></div>
													<div class="_attachmentSubpostRegion" style="display: none;">
													</div>
												</div>
											</div>
										</div>
										<div class="_postCountAndEmotionRegion">
											<div data-viewname="DPostCountView">
												<div class="postCount">
													<div class="faceComment _btnToggleEmotionCommentIcon  ">
														<span class="face">표정<span
															class="count sf_color _emotionCountSpan">0</span></span> <span
															class="comment">댓글<span
															class="count sf_color _commentCountSpan">0</span></span>
														<button type="button"
															class="commentToggle _emotionCommentArrow gIcon icon-dselect-down">댓글접기/펼치기</button>
													</div>
												</div>
												<div class="postAdded _postAdded">
													<div class="postAddBox">
														<div class="addCol">
															<a href="#"
																class="addStatus _btnInputEmotion gIcon icon-like-off">표정짓기</a>
															<div class="emoticonFace _emoticonFaceLayer"
																style="display: none;">
																<div class="emoticonWrap">
																	<button type="button" class="_btnEmotion"
																		data-emotionindex="1">
																		<span class="uIconlike">좋아요</span>
																	</button>
																	<button type="button" class="_btnEmotion"
																		data-emotionindex="2">
																		<span class="uIconsmile">웃겨요</span>
																	</button>
																	<button type="button" class="_btnEmotion"
																		data-emotionindex="3">
																		<span class="uIconbest">최고예요</span>
																	</button>
																	<button type="button" class="_btnEmotion"
																		data-emotionindex="5">
																		<span class="uIconsurprise">놀랐어요</span>
																	</button>
																	<button type="button" class="_btnEmotion"
																		data-emotionindex="6">
																		<span class="uIconsad">슬퍼요</span>
																	</button>
																	<button type="button" class="_btnEmotion"
																		data-emotionindex="7">
																		<span class="uIconangry">화나요</span>
																	</button>
																</div>
															</div>
														</div>
														<div class="addCol">
															<a href="#"
																class="addStatus _btnCommentWrite gIcon icon-comment-off ">댓글쓰기</a>
														</div>
													</div>
													<div class="_emotionRegion"></div>
												</div>
												
												<div class="postCountLayer">
													<div class="faceComment">
														<button
														class="face _btnInputEmotionOnLayer gIcon icon-like-off">표정</button>
														<button class="count -faceCount _emotionCountOnLayer">0</button>
														<button
															class="comment _btnCommentWriteOnLayer gIcon icon-comment-off ">댓글</button>
														<button class="count -commentCount _commentCountOnLayer">0</button>
													</div>
												</div>
												
											</div>
										</div>
										<div class="_commentRegion">
											<div data-viewname="DPostCommentMainLayoutView">
												<div data-uiselector="commentListRegion">
													<div data-viewname="DCommentListCollectionView"
														class="commentList"></div>
													</div>
														<div class="cCommentWrite"
															data-uiselector="commentInputRegion"
															style="display: none;">
															<div data-viewname="DMessageInputLayoutView">
																<div class="writeMain _writeMain">
																	<div class="writeBtn">
																		<div
																			class="btnUpload gIcon icon-make2 js-fileapi-wrapper"
																			data-uiselector="imageUploadArea">
																			<input accept="image/*" title="추가" name="attachment"
																				data-uiselector="imageUploadButton" type="file">
																		</div>
																		<button type="button"
																			class="btnSticker gIcon icon-sticker-off"
																			data-uiselector="stickerInputButton">
																			<span class="gSrOnly">스티커</span>
																		</button>
																	</div>
																	<div class="writeWrap">
																		<div class="mentionsWrap">
																			<div class="uInputComment"
																				data-uiselector="mentionListParent">
																				<label class="gSrOnly" for="write_comment_view693">댓글을
																					남겨주세요.</label>
																				<div class="mentions-input _prevent_toggle"
																					style="overflow-y: hidden !important">
																					<div class="mentions" style="height: 32px;">
																						<div></div>
																					</div>
																					<textarea cols="20" rows="1"
																						class="commentWrite _use_keyup_event"
																						id="write_comment_view693"
																						placeholder="댓글을 남겨주세요."
																						style="display: inline; overflow: hidden; height: 32px;"
																						data-uiselector="messageTextArea"
																						data-mentions-input="true"></textarea>
																					<div
																						style="position: absolute; display: none; overflow-wrap: break-word; white-space: pre-wrap; border-color: rgb(51, 51, 51); border-style: none; border-width: 0px; font-weight: 400; width: 356px; font-family: &amp; quot; Helvetica Neue&amp;quot; , Helvetica ,Arial,sans-serif,&amp;quot; Apple Color Emoji&amp;quot; ,&amp; quot; Segoe UI Emoji&amp;quot; , NotoColorEmoji ,&amp;quot; Segoe UI Symbol&amp;quot; ,&amp; quot; Android Emoji&amp;quot; , EmojiSymbols; line-height: 20.0167px; font-size: 13px; padding: 6px 10px 0px;">&nbsp;</div>
																				</div>
																				<div class="cMentionsList " style="display: none;">
																					<div class="mention_target_wrap">
																						<ul style="display: none;"></ul>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																	</div>
																	
																	<button type="submit"
																		class="uButton writeSubmit uButtonDefault"
																		data-width="xxSmall" data-height="middleSmall"
																		data-uiselector="sendMessageButton">보내기</button>
																</div>
																<div class="uploadPreviewWrap" style="display: none;"
																	data-uiselector="previewArea">
																	<div class="uploadPreview">
																		<div class="imgWrap">
																			<img src="" alt="" class="sticker _prevent_context"
																				data-uiselector="previewImage"> <img
																				class="loading"
																				src="you%20%20%20%EC%A0%84%EC%B2%B4%EA%B8%80_files/loading4.gif"
																				data-uiselector="loadingImage" width="32"
																				height="32">
																		</div>
																		<button class="closePreview gIcon icon-pc-delete"
																			type="button" data-uiselector="closePreviewButton">
																			<span class="gSrOnly">Close</span>
																		</button>
																	</div>
																</div>
																<div data-uiselector="stickerSelectRegion"
																	class="stickerSelectRegion" style="display: none;"></div>

															</div>
															</div>
														</div>
														</div>
														</div>
														</c:forEach>
								<div data-viewname="DPostLayoutView">
									<div class="cPost  _postMainWrap">
										<div class="_moreOptionListRegion">
											<div data-viewname="DPostMoreOptionListView">
												<div class="postFunction _postFunctionWrap">
													<button type="button"
														class="postSet _btnPostMore gIcon icon-more">글 옵션</button>
													<div class="lyMenu _postMoreMenu"
														style="min-width: 145px; display: none;">
														<ul class="_postMoreMenuUl">
															<li><a href="#" data-menueventname="postMoreAction:modifyPost">글 수정</a></li>
															<li><a href="#" data-menueventname="postMoreAction:setNotice">공지로 등록</a></li>
															<li><a href="#" data-menueventname="postMoreAction:copyPost">다른 밴드에 올리기</a></li>
															<li><a href="#" data-menueventname="postMoreAction:deletePost">글 삭제</a></li>
															<li><a href="#" data-menueventname="postMoreAction:showPostUrl">게시글 URL 보기</a></li></ul>
													</div>
												</div>
											</div>
										</div>
										<div class="_postShareOptionListRegion">
											<div data-viewname="DPostShareOptionListView">
												<div class="lyMenu -lyShare _lyShare"
													style="width: 220px; display: none;">
													<ul class="shareMenu">
														<li class="band _btnShareBand"><a
															href="http://band.us/#" class="_btnShareBand">다른 밴드로
																공유</a></li>
														<li class="band _btnShareBandOriginPost"><a
															href="http://band.us/#" class="_btnShareBandOriginPost">다른
																밴드로 공유</a></li>
														<li class="facebook"><a href="http://band.us/#"
															class="_btnShareFacebook">Facebook</a></li>
														<li class="twitter"><a href="http://band.us/#"
															class="_btnShareTwitter">Twitter</a></li>
														<li class="googlePlus"><a href="http://band.us/#"
															class="_btnShareGoogle">Google+</a></li>
														<li class="naverCafe"><a href="http://band.us/#"
															class="_btnShareCafe">네이버 카페</a></li>
														<li class="urlCopy"><a href="http://band.us/#"
															class="_btnDetailUrl">URL복사</a></li>
													</ul>
												</div>
											</div>
										</div>
										<div class="postMain _postRegion">
											<div data-viewname="DPostListItemView">
												<div class="_postAuthorRegion">
													<div data-viewname="DPostAuthorView">
														<div class="postWriter ">
															<a href="http://band.us/#" class="profileImg _authorImg"><img
																src="/resources/img/profile.gif" alt="이정희">
																<span class="uLeaderBand -typeA gIcon icon-leader"><span
																	class="gSrOnly">리더</span></span></a>
															<div class="profileText _profileText">
																<span class="textName"><strong class="name">이정희</strong>
																	<span title="" class="memo"></span></span>
																<div class="textTime">지금막</div>
															</div>
														</div>
													</div>
												</div>
												<div class="postBody">
													<div class="_textRegion">
														<div data-viewname="DPostTextView">
															<div class="postText _postText">
																<p class="txtBody">
																	 밴드를 시작합니다.<br>함께하고 싶은 멤버를 초대하세요.<br>
																	<br>모임을 위한 밴드 사용법도 확인해보세요.<br>BAND 가이드 : <a
																		href="http://band.us/@bandguidekr" target="_blank"
																		class="outer_link word_break _outerLink">http://band.us/@bandguidekr</a>
																</p>
															</div>
														</div>
													</div>
													<div class="_stickerRegion" style="display: none;"></div>
													<div class="_attachmentPollRegion" style="display: none;"></div>
													<div class="_attachmentScheduleRegion"
														style="display: none;"></div>
													<div class="_attachmentTodoRegion" style="display: none;"></div>
													<div class="_attachmentBillSplitRegion"
														style="display: none;"></div>
													<div class="_attachmentPhotoAlbumRegion"
														style="display: none;"></div>
													<div class="_attachmentPromotionPhotosRegion"
														style="display: none;"></div>
													<div class="_attachmentPhotosRegion" style="display: none;"></div>
													<div class="_sharedPostSnippetRegion"
														style="display: none;"></div>
													<div class="_attachmentSnippetRegion"
														style="display: none;"></div>
													<div class="_attachmentFilesRegion" style="display: none;"></div>
													<div class="_attachmentLocationRegion"
														style="display: none;"></div>
													<div class="_attachmentSubpostRegion">
														<div data-viewname="DPostSubpostView" class="uWidget">
															<a href="http://band.us/#"
																class="snippet _attachmentSubpost -noLink"
																data-thumbnail="false"> <span class="snippetInfo"><span
																	class="snippetTit">멤버 초대하기</span> <span
																	class="snippetTxt">이 곳을 눌러 멤버를 초대하세요.</span> <span
																	class="snippetLink"></span></span></a>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="_postCountAndEmotionRegion">
											<div data-viewname="DPostCountView">
												<div class="postCount">
													<div class="faceComment _btnToggleEmotionCommentIcon  ">
														<span class="face">표정<span
															class="count sf_color _emotionCountSpan">0</span></span> <span
															class="comment">댓글<span
															class="count sf_color _commentCountSpan">0</span></span>
														<button type="button"
															class="commentToggle _emotionCommentArrow gIcon icon-dselect-down">댓글접기/펼치기</button>
													</div>
												</div>
												<div class="postAdded _postAdded">
													<div class="postAddBox">
														<div class="addCol">
															<a href="#"
																class="addStatus _btnInputEmotion gIcon icon-like-off">표정짓기</a>
															<div class="emoticonFace _emoticonFaceLayer"
																style="display: none;">
																<div class="emoticonWrap">
																	<button type="button" class="_btnEmotion"
																		data-emotionindex="1">
																		<span class="uIconlike">좋아요</span>
																	</button>
																	<button type="button" class="_btnEmotion"
																		data-emotionindex="2">
																		<span class="uIconsmile">웃겨요</span>
																	</button>
																	<button type="button" class="_btnEmotion"
																		data-emotionindex="3">
																		<span class="uIconbest">최고예요</span>
																	</button>
																	<button type="button" class="_btnEmotion"
																		data-emotionindex="5">
																		<span class="uIconsurprise">놀랐어요</span>
																	</button>
																	<button type="button" class="_btnEmotion"
																		data-emotionindex="6">
																		<span class="uIconsad">슬퍼요</span>
																	</button>
																	<button type="button" class="_btnEmotion"
																		data-emotionindex="7">
																		<span class="uIconangry">화나요</span>
																	</button>
																</div>
															</div>
														</div>
														<div class="addCol">
															<a href="#"
																class="addStatus _btnCommentWrite gIcon icon-comment-off ">댓글쓰기</a>
														</div>
													</div>
													<div class="_emotionRegion"></div>
												</div>
												<div class="postCountLayer">
													<div class="faceComment">
														<button
															class="face _btnInputEmotionOnLayer gIcon icon-like-off">표정</button>
														<button class="count -faceCount _emotionCountOnLayer">0</button>
														<button
															class="comment _btnCommentWriteOnLayer gIcon icon-comment-off ">댓글</button>
														<button class="count -commentCount _commentCountOnLayer">0</button>
													</div>
												</div>
											</div>
										</div>
										<div class="_commentRegion">
											<div data-viewname="DPostCommentMainLayoutView">
												<div data-uiselector="commentListRegion">
													<div data-viewname="DCommentListCollectionView"
														class="commentList"></div>
													</div>
														<div class="cCommentWrite"
															data-uiselector="commentInputRegion"
															style="display: none;">
															<div data-viewname="DMessageInputLayoutView">
																<div class="writeMain _writeMain">
																	<div class="writeBtn">
																		<div
																			class="btnUpload gIcon icon-make2 js-fileapi-wrapper"
																			data-uiselector="imageUploadArea">
																			<input accept="image/*" title="추가" name="attachment"
																				data-uiselector="imageUploadButton" type="file">
																		</div>
																		<button type="button"
																			class="btnSticker gIcon icon-sticker-off"
																			data-uiselector="stickerInputButton">
																			<span class="gSrOnly">스티커</span>
																		</button>
																	</div>
																	<div class="writeWrap">
																		<div class="mentionsWrap">
																			<div class="uInputComment"
																				data-uiselector="mentionListParent">
																				<label class="gSrOnly" for="write_comment_view693">댓글을
																					남겨주세요.</label>
																				<div class="mentions-input _prevent_toggle"
																					style="overflow-y: hidden !important">
																					<div class="mentions" style="height: 32px;">
																						<div></div>
																					</div>
																					<textarea cols="20" rows="1"
																						class="commentWrite _use_keyup_event"
																						id="write_comment_view693"
																						placeholder="댓글을 남겨주세요."
																						style="display: inline; overflow: hidden; height: 32px;"
																						data-uiselector="messageTextArea"
																						data-mentions-input="true"></textarea>
																					<div
																						style="position: absolute; display: none; overflow-wrap: break-word; white-space: pre-wrap; border-color: rgb(51, 51, 51); border-style: none; border-width: 0px; font-weight: 400; width: 356px; font-family: &amp; quot; Helvetica Neue&amp;quot; , Helvetica ,Arial,sans-serif,&amp;quot; Apple Color Emoji&amp;quot; ,&amp; quot; Segoe UI Emoji&amp;quot; , NotoColorEmoji ,&amp;quot; Segoe UI Symbol&amp;quot; ,&amp; quot; Android Emoji&amp;quot; , EmojiSymbols; line-height: 20.0167px; font-size: 13px; padding: 6px 10px 0px;">&nbsp;</div>
																				</div>
																				<div class="cMentionsList " style="display: none;">
																					<div class="mention_target_wrap">
																						<ul style="display: none;"></ul>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																	</div>
																	
																	<button type="submit"
																		class="uButton writeSubmit uButtonDefault"
																		data-width="xxSmall" data-height="middleSmall"
																		data-uiselector="sendMessageButton">보내기</button>
																</div>
																<div class="uploadPreviewWrap" style="display: none;"
																	data-uiselector="previewArea">
																	<div class="uploadPreview">
																		<div class="imgWrap">
																			<img src="" alt="" class="sticker _prevent_context"
																				data-uiselector="previewImage"> <img
																				class="loading"
																				src="you%20%20%20%EC%A0%84%EC%B2%B4%EA%B8%80_files/loading4.gif"
																				data-uiselector="loadingImage" width="32"
																				height="32">
																		</div>
																		<button class="closePreview gIcon icon-pc-delete"
																			type="button" data-uiselector="closePreviewButton">
																			<span class="gSrOnly">Close</span>
																		</button>
																	</div>
																</div>
																<div data-uiselector="stickerSelectRegion"
																	class="stickerSelectRegion" style="display: none;"></div>
										</div>
										</div>
										</div>
										</div>
										</div>
										</div>
										</div>
										</div>
										</div>
										</div>
										
						</div>
					</section>
					</main>
					<aside id="banner" data-uiselector="bannerRegion">
						<div data-uiselector="summaryRegion" class="bannerInner"
							id="bannerInner">
							<div data-viewname="DBandSummaryItemView">
								<div data-uiselector="bandChannelsRegion"
									class="widget -chatting">
									<div data-viewname="DBandChattingChannelListView">
										<div class="tit noArrow">
											<h2 class="tit">채팅</h2>
											<div class="newChatWrap">
												<button type="button" class="newChat sf_color _btnNewChat">새
													채팅</button>
												<div class="lyMenu _lyChatTypes"
													style="min-width: 145px; display: none;">
													<ul>
														<li><a href="http://band.us/#"
															class="_linkNewPrivateChat">비공개 대화하기</a></li>
														<li><a href="http://band.us/#"
															class="_linkNewPublicChat">공개채팅방 만들기</a></li>
													</ul>
												</div>
											</div>
										</div>
										<div class="scrollWrap">
											<div class="nano maxHeight heightAuto has-scrollbar"
												style="height: 47px;">
												<div class="nano-content" tabindex="0"
													style="margin-right: -26px;">
													<ul class="chat _bandChattingChannelList"
														style="display: table;">
														<li data-viewname="DBandChattingChannelItemView"
															class="chat"><a href="http://band.us/#"><span>
																	<img class="sf_border"
																	src="${band.imgUrl}"
																	width="32" height="32" alt="${band.name}">
															</span> <span><strong title="${band.name}">${band.name}</strong> <span>밴드
																		전체 멤버들과 함께 하는 채팅방</span></span></a></li>
													</ul>
												</div>
												<div class="nano-pane" style="display: none;">
													<div class="nano-slider"
														style="transform: translate(0px, 0px); height: 20px;"></div>
												</div>
											</div>
										</div>
										<div id="_bandChattingChannelEmpty" class="nodata"
											style="display: none;">
											<p>
												원하는 멤버와 채팅할 수 있어요.<br> 새로운 이야기를 시작해보세요.
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</aside>
				</div>
			</div>
			<footer id="footer">
				<h1 class="gSrOnly">운영정책 및 약관안내</h1>
				<nav class="copy">
					<a href="http://band.us/cs/#!/notice" target="_blank">공지사항</a> <a
						href="https://partners.band.us/partners/ko/main.nhn"
						target="_blank">파트너</a> <a href="https://ad.band.us/"
						target="_blank">광고</a> <a href="http://band.us/policy/terms"
						target="_blank">이용약관</a> <a href="http://band.us/policy/privacy"
						target="_blank"><strong>개인정보처리방침</strong></a> <a
						href="http://band.us/policy/youthpolicy" target="_blank">청소년
						보호정책</a> <a href="http://band.us/policy/operating" target="_blank">운영정책</a>
					<a href="http://band.us/policy/usurpation" target="_blank">권리침해
						신고안내</a> <a href="https://developers.band.us/" target="_blank">개발자</a>
					<a href="http://band.us/cs/#!/help" target="_blank">도움말</a>
					<address>
						<a href="http://www.campmobile.com/" target="_blank"><strong>BAND</strong></a>
						© 2016
					</address>
				</nav>
			</footer>
			<div id="layerContainer">
				<section data-viewname="DPostEditorLayerView"
					class="lyWrap _preventEscKeyByLayerHelper layer_wrap skin8" style="visibility:hidden;">
					<div class="inner -vAlignTop">
						<div class="dimmed"></div>
						<div class="scrollWrap">
							<article class="lyContent lyPostShareWrite -edge"
								style="width: 540px">
								<header class="borderBottom">
									<h1 class="mTitle ">
										<span>글쓰기 </span>
									</h1>
								</header>
								<div class="main _editorRegion">
									<div data-viewname="DPostEditorView" class="cPostWrite">
										<h3 class="gSrOnly">글쓰기</h3>
										<div class="postWriteForm _postWriteForm -standby">
										  <form method="post" action="/band/bandBoard" id="frmPostWrite">
											<div
												class="contentEditor _richEditor skin8 cke_editable cke_editable_inline cke_contents_ltr"
												contenteditable="true" tabindex="0" spellcheck="true"
												role="textbox" aria-label="false"
												style="position: relative;" >
												<p id = "text" data-band-placeholder="멤버들에게 전할 소식을 남겨주세요.">​​​​​​​</p>
											</div>
											<input type="hidden" name="bandId" value="${band.id}"/>
											<input type="hidden" name="text"/>
											<input type="hidden" name="sticker"/>
											</form>
										</div>
										<div class="buttonArea _bottomToolbar">
											<ul class="sf_color">
												<li>
													<button
														class="sticker gIcon icon-sticker-off _btnAttachSticker"
														type="button">
														<span class="tooltip sf_tBg">스티커</span>
													</button>
												</li>
												<li><label
													class="photo gIcon icon-write-camera-off _btnAttachPhoto js-fileapi-wrapper"
													for="postPhotoInput_view1049"><span
														class="tooltip sf_tBg">사진</span> <input type="file"
														id="postPhotoInput_view1049" multiple="" title=" "
														accept="image/*" name="attachment"></label></li>
												<li><label
													class="movie gIcon icon-movie-off _btnAttachVideo js-fileapi-wrapper"
													for="postVideoInput_view1049"><span
														class="tooltip sf_tBg">동영상</span> <input type="file"
														id="postVideoInput_view1049" multiple="" title=" "
														accept="video/*" name="attachment"></label></li>
												<li>
													<button class="vote gIcon icon-vote-off _btnAttachPoll"
														type="button">
														<span class="tooltip sf_tBg">투표</span>
													</button>
												</li>
												<li><label
													class="file gIcon icon-file02 _btnAttachFile js-fileapi-wrapper"
													for="postFileInput_view1049"><span
														class="tooltip sf_tBg">파일</span> <input type="file"
														id="postFileInput_view1049" multiple="" title=" "
														accept="*/*" name="attachment"></label></li>
												<li>
													<button class="todo gIcon icon-todo-off _btnAttachTodo"
														type="button">
														<span class="tooltip sf_tBg">TO DO</span>
													</button>
												</li>
												<li>
													<button
														class="calendar gIcon icon-etc-event _btnAttachSchedule"
														type="button">
														<span class="tooltip sf_tBg">일정</span>
													</button>
												</li>
												<li>
													<button class="n gIcon icon-n-off _btnAttachBillSplit"
														type="button">
														<span class="tooltip sf_tBg">N빵</span>
													</button>
												</li>
												<li>
													<button type="button"
														class="reserve gIcon icon-setting _btnWriteSetting">
														<span class="tooltip sf_tBg">글쓰기 설정</span>
													</button>
												</li>
											</ul>
											<div class="buttonSubmit">
												<button class="uButton -point -wXxSmall -h30 -md _btnSubmitPost">게시</button>
											</div>
										</div>
									</div>
								</div>
								<footer>
									<button type="button"
										class="btnLyClose _btnClose gIcon icon-layer-close">
										<span class="gSrOnly">닫기</span>
									</button>
								</footer>
							</article>
						</div>
					</div>
				</section>
		<section data-viewname="DEditorStickerAttachView"
			class="lyWrap layer_wrap" style="visibility:hidden">
			<div class="inner">
				<div class="dimmed -transparent _dimmed"></div>
				<div class="scrollWrap">
					<article class="lyContent lySticker -edge -borderShadow"
						style="width: 450px">
						<header class="-h52">
							<h1>스티커</h1>
						</header>
						<div class="main _stickerRegion stickerScale">
							<div data-viewname="DStickerSelectionLayoutView"
								class="cStickerCollection">
								<div class="stickerHeaderWrap" data-uiselector="usingPackArea">
									<div data-viewname="DStickerUsingPackCompositeView"
										class="stickerHeader">
										<button type="button"
											class="buttonNav prev gIcon icon-sticker-prev"
											data-uiselector="prevButton" data-status="">
											<span class="gSrOnly">IM('ui.label.prev')</span>
										</button>
										<div class="stickerNav">
											<ul data-uiselector="usingPackContainer">
												<li data-viewname="DStickerUsingPackItemView"
													data-uiselector="eachPackItemLi" class="sf_border on">
													<button type="button" data-uiselector="eachPack"
														style="background-image: url(http://s.cmstatic.net/band/sticker/v2/272/tab/on?resolution_type=xhdpi)">
														<span class="gSrOnly"
															style="background-image: url(http://s.cmstatic.net/band/sticker/v2/272/tab/on?resolution_type=xhdpi)"></span>
													</button>
												</li>
												<li data-viewname="DStickerUsingPackItemView"
													data-uiselector="eachPackItemLi" class="sf_border">
													<button type="button" data-uiselector="eachPack"
														style="background-image: url(http://s.cmstatic.net/band/sticker/v2/271/tab/off?resolution_type=xhdpi)">
														<span class="gSrOnly"
															style="background-image: url(http://s.cmstatic.net/band/sticker/v2/271/tab/on?resolution_type=xhdpi)"></span>
													</button>
												</li>
												<li data-viewname="DStickerUsingPackItemView"
													data-uiselector="eachPackItemLi" class="sf_border">
													<button type="button" data-uiselector="eachPack"
														style="background-image: url(http://s.cmstatic.net/band/sticker/v2/198/tab/off?resolution_type=xhdpi)">
														<span class="gSrOnly"
															style="background-image: url(http://s.cmstatic.net/band/sticker/v2/198/tab/on?resolution_type=xhdpi)"></span>
													</button>
												</li>
												<li data-viewname="DStickerUsingPackItemView"
													data-uiselector="eachPackItemLi" class="sf_border">
													<button type="button" data-uiselector="eachPack"
														style="background-image: url(http://s.cmstatic.net/band/sticker/v2/197/tab/off?resolution_type=xhdpi)">
														<span class="gSrOnly"
															style="background-image: url(http://s.cmstatic.net/band/sticker/v2/197/tab/off?resolution_type=xhdpi)"></span>
													</button>
												</li>
												<li data-viewname="DStickerUsingPackItemView"
													data-uiselector="eachPackItemLi" class="sf_border">
													<button type="button" data-uiselector="eachPack"
														style="background-image: url(http://s.cmstatic.net/band/sticker/v2/196/tab/off?resolution_type=xhdpi)">
														<span class="gSrOnly"
															style="background-image: url(http://s.cmstatic.net/band/sticker/v2/196/tab/on?resolution_type=xhdpi)"></span>
													</button>
												</li>
												<li data-viewname="DStickerUsingPackItemView"
													data-uiselector="eachPackItemLi" class="sf_border">
													<button type="button" data-uiselector="eachPack"
														style="background-image: url(http://s.cmstatic.net/band/sticker/v2/3/tab/off?resolution_type=xhdpi)">
														<span class="gSrOnly"
															style="background-image: url(http://s.cmstatic.net/band/sticker/v2/3/tab/on?resolution_type=xhdpi)"></span>
													</button>
												</li>
												<li data-viewname="DStickerUsingPackItemView"
													data-uiselector="eachPackItemLi" class="sf_border">
													<button type="button" data-uiselector="eachPack"
														style="background-image: url(http://s.cmstatic.net/band/sticker/v2/4/tab/off?resolution_type=xhdpi)">
														<span class="gSrOnly"
															style="background-image: url(http://s.cmstatic.net/band/sticker/v2/4/tab/on?resolution_type=xhdpi)"></span>
													</button>
												</li>
												<li data-viewname="DStickerUsingPackItemView"
													data-uiselector="eachPackItemLi" class="sf_border">
													<button type="button" data-uiselector="eachPack"
														style="background-image: url(http://s.cmstatic.net/band/sticker/v2/373/tab/off?resolution_type=xhdpi)">
														<span class="gSrOnly"
															style="background-image: url(http://s.cmstatic.net/band/sticker/v2/373/tab/on?resolution_type=xhdpi)"></span>
													</button>
												</li>
											</ul>
										</div>
										<button type="button"
											class="buttonNav next gIcon icon-sticker-next"
											data-uiselector="nextButton" data-status="active">
											<span class="gSrOnly">IM('ui.label.next')</span>
										</button>
									</div>
								</div>
								<div data-uiselector="spriteRegion272" style="display: block;">
									<div data-viewname="DStickerSpritesCompositeView"
										class="stickerCollect">
										<div class="nano has-scrollbar">
											<div class="nano-content" tabindex="0" style="right: -17px;">
												<div class="_stickerc2555 stickerList" data-sticker="c2555">
													<ul data-uiselector="spritesContainer">
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_1 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/272/retina/sprite); background-size: 600px auto;">
																<span class="alt">272-1</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_2 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/272/retina/sprite); background-size: 600px auto;">
																<span class="alt">272-2</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_3 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/272/retina/sprite); background-size: 600px auto;">
																<span class="alt">272-3</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_4 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/272/retina/sprite); background-size: 600px auto;">
																<span class="alt">272-4</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_5 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/272/retina/sprite); background-size: 600px auto;">
																<span class="alt">272-5</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_6 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/272/retina/sprite); background-size: 600px auto;">
																<span class="alt">272-6</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_7 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/272/retina/sprite); background-size: 600px auto;">
																<span class="alt">272-7</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_8 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/272/retina/sprite); background-size: 600px auto;">
																<span class="alt">272-8</span>
															</button></li>
													</ul>
												</div>
											</div>
											<div class="nano-pane" style="display: none;">
												<div class="nano-slider"
													style="height: 286px; transform: translate(0px, 0px);"></div>
											</div>
										</div>
									</div>
								</div>
								<div data-uiselector="spriteRegion271" style="display: none;">
									<div data-viewname="DStickerSpritesCompositeView"
										class="stickerCollect">
										<div class="nano has-scrollbar">
											<div class="nano-content" tabindex="0" style="right: -17px;">
												<div class="_stickerc2591 stickerList" data-sticker="c2591">
													<ul data-uiselector="spritesContainer">
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_1 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/271/retina/sprite); background-size: 600px auto;">
																<span class="alt">271-1</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_2 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/271/retina/sprite); background-size: 600px auto;">
																<span class="alt">271-2</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_3 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/271/retina/sprite); background-size: 600px auto;">
																<span class="alt">271-3</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_4 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/271/retina/sprite); background-size: 600px auto;">
																<span class="alt">271-4</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_5 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/271/retina/sprite); background-size: 600px auto;">
																<span class="alt">271-5</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_6 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/271/retina/sprite); background-size: 600px auto;">
																<span class="alt">271-6</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_7 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/271/retina/sprite); background-size: 600px auto;">
																<span class="alt">271-7</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_8 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/271/retina/sprite); background-size: 600px auto;">
																<span class="alt">271-8</span>
															</button></li>
													</ul>
												</div>
											</div>
											<div class="nano-pane" style="display: none;">
												<div class="nano-slider"
													style="height: 286px; transform: translate(0px, 0px);"></div>
											</div>
										</div>
									</div>
								</div>
								<div data-uiselector="spriteRegion198" style="display: none;">
									<div data-viewname="DStickerSpritesCompositeView"
										class="stickerCollect">
										<div class="nano has-scrollbar">
											<div class="nano-content" tabindex="0" style="right: -17px;">
												<div class="_stickerc2694 stickerList" data-sticker="c2694">
													<ul data-uiselector="spritesContainer">
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_1 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-1</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_2 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-2</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_3 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-3</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_4 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-4</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_5 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-5</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_6 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-6</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_7 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-7</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_8 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-8</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_9 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-9</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_10 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-10</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_11 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-11</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_12 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-12</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_13 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-13</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_14 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-14</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_15 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-15</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_16 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-16</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_17 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-17</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_18 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-18</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_19 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-19</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_20 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-20</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_21 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-21</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_22 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-22</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_23 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-23</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_24 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-24</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_25 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-25</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_26 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-26</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_27 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-27</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_28 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-28</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_29 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-29</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_30 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-30</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_31 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-31</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_32 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-32</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_33 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-33</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_34 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-34</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_35 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-35</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_36 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-36</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_37 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-37</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_38 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-38</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_39 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-39</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_40 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/198/retina/sprite); background-size: 3000px auto;">
																<span class="alt">198-40</span>
															</button></li>
													</ul>
												</div>
											</div>
											<div class="nano-pane">
												<div class="nano-slider"
													style="height: 86px; transform: translate(0px, 0px);"></div>
											</div>
										</div>
									</div>
								</div>
								<div data-uiselector="spriteRegion197" style="display: none;">
									<div data-viewname="DStickerSpritesCompositeView"
										class="stickerCollect">
										<div class="nano has-scrollbar">
											<div class="nano-content" tabindex="0" style="right: -17px;">
												<div class="_stickerc2858 stickerList" data-sticker="c2858">
													<ul data-uiselector="spritesContainer">
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_1 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-1</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_2 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-2</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_3 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-3</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_4 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-4</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_5 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-5</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_6 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-6</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_7 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-7</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_8 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-8</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_9 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-9</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_10 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-10</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_11 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-11</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_12 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-12</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_13 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-13</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_14 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-14</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_15 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-15</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_16 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-16</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_17 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-17</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_18 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-18</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_19 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-19</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_20 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-20</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_21 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-21</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_22 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-22</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_23 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-23</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_24 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-24</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_25 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-25</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_26 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-26</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_27 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-27</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_28 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-28</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_29 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-29</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_30 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-30</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_31 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-31</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_32 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-32</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_33 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-33</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_34 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-34</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_35 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-35</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_36 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-36</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_37 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-37</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_38 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-38</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_39 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-39</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_40 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/197/retina/sprite); background-size: 3000px auto;">
																<span class="alt">197-40</span>
															</button></li>
													</ul>
												</div>
											</div>
											<div class="nano-pane">
												<div class="nano-slider"
													style="height: 86px; transform: translate(0px, 0px);"></div>
											</div>
										</div>
									</div>
								</div>
								<div data-uiselector="spriteRegion196" style="display: none;">
									<div data-viewname="DStickerSpritesCompositeView"
										class="stickerCollect">
										<div class="nano has-scrollbar">
											<div class="nano-content" tabindex="0" style="right: -17px;">
												<div class="_stickerc3022 stickerList" data-sticker="c3022">
													<ul data-uiselector="spritesContainer">
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_1 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-1</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_2 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-2</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_3 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-3</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_4 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-4</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_5 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-5</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_6 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-6</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_7 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-7</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_8 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-8</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_9 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-9</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_10 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-10</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_11 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-11</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_12 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-12</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_13 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-13</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_14 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-14</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_15 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-15</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_16 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-16</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_17 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-17</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_18 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-18</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_19 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-19</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_20 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-20</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_21 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-21</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_22 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-22</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_23 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-23</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_24 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-24</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_25 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-25</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_26 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-26</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_27 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-27</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_28 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-28</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_29 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-29</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_30 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-30</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_31 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-31</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_32 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-32</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_33 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-33</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_34 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-34</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_35 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-35</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_36 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-36</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_37 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-37</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_38 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-38</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_39 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-39</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_40 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/196/retina/sprite); background-size: 3000px auto;">
																<span class="alt">196-40</span>
															</button></li>
													</ul>
												</div>
											</div>
											<div class="nano-pane">
												<div class="nano-slider"
													style="height: 86px; transform: translate(0px, 216px);"></div>
											</div>
										</div>
									</div>
								</div>
								<div data-uiselector="spriteRegion3" style="display: none;">
									<div data-viewname="DStickerSpritesCompositeView"
										class="stickerCollect">
										<div class="nano has-scrollbar">
											<div class="nano-content" tabindex="0" style="right: -17px;">
												<div class="_stickerc3266 stickerList" data-sticker="c3266">
													<ul data-uiselector="spritesContainer">
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_1 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-1</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_2 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-2</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_3 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-3</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_4 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-4</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_5 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-5</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_6 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-6</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_7 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-7</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_8 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-8</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_9 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-9</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_10 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-10</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_11 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-11</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_12 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-12</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_13 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-13</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_14 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-14</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_15 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-15</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_16 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-16</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_17 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-17</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_18 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-18</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_19 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-19</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_20 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-20</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_21 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-21</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_22 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-22</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_23 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-23</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_24 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-24</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_25 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-25</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_26 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-26</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_27 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-27</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_28 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-28</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_29 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-29</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_30 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-30</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_31 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-31</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_32 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-32</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_33 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-33</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_34 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-34</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_35 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-35</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_36 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-36</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_37 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-37</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_38 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-38</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_39 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-39</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_40 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-40</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_41 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-41</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_42 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-42</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_43 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-43</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_44 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-44</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_45 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-45</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_46 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-46</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_47 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-47</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_48 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-48</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_49 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-49</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_50 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-50</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_51 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-51</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_52 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-52</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_53 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-53</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_54 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-54</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_55 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-55</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_56 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-56</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_57 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-57</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_58 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-58</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_59 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-59</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_60 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-60</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_61 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-61</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_62 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-62</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_63 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-63</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_64 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-64</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_65 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-65</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_66 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-66</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_67 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-67</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_68 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-68</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_69 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-69</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_70 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-70</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_71 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-71</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_72 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-72</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_73 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-73</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_74 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-74</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_75 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-75</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_76 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-76</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_77 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-77</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_78 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-78</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_79 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-79</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_80 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/3/retina/sprite); background-size: 6000px auto;">
																<span class="alt">3-80</span>
															</button></li>
													</ul>
												</div>
											</div>
											<div class="nano-pane">
												<div class="nano-slider"
													style="height: 43px; transform: translate(0px, 0px);"></div>
											</div>
										</div>
									</div>
								</div>
								<div data-uiselector="spriteRegion4" style="display: none;">
									<div data-viewname="DStickerSpritesCompositeView"
										class="stickerCollect">
										<div class="nano has-scrollbar">
											<div class="nano-content" tabindex="0" style="right: -17px;">
												<div class="_stickerc3590 stickerList" data-sticker="c3590">
													<ul data-uiselector="spritesContainer">
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_1 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-1</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_2 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-2</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_3 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-3</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_4 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-4</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_5 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-5</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_6 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-6</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_7 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-7</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_8 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-8</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_9 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-9</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_10 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-10</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_11 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-11</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_12 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-12</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_13 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-13</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_14 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-14</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_15 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-15</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_16 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-16</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_17 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-17</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_18 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-18</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_19 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-19</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_20 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-20</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_21 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-21</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_22 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-22</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_23 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-23</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_24 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-24</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_25 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-25</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_26 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-26</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_27 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-27</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_28 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-28</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_29 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-29</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_30 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-30</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_31 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-31</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_32 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-32</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_33 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-33</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_34 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-34</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_35 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-35</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_36 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-36</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_37 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-37</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_38 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-38</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_39 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-39</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_40 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-40</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_41 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-41</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_42 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-42</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_43 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-43</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_44 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-44</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_45 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-45</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_46 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-46</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_47 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-47</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_48 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-48</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_49 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-49</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_50 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-50</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_51 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-51</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_52 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-52</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_53 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-53</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_54 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-54</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_55 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-55</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_56 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-56</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_57 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-57</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_58 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-58</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_59 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-59</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_60 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-60</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_61 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-61</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_62 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-62</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_63 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-63</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_64 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-64</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_65 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-65</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_66 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-66</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_67 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-67</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_68 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-68</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_69 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-69</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_70 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-70</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_71 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-71</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_72 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-72</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_73 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-73</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_74 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-74</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_75 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-75</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_76 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-76</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_77 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-77</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_78 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-78</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_79 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-79</span>
															</button></li>
														<li data-viewname="DStickerSpritesItemView"
															class="sf_border"><button type="button"
																class="thumb stkr_80 _prevent_context"
																style="background-image: url(http://s.cmstatic.net/band/sticker/4/retina/sprite); background-size: 6000px auto;">
																<span class="alt">4-80</span>
															</button></li>
													</ul>
												</div>
												
											</div>
											<div class="nano-pane">
												<div class="nano-slider"
													style="height: 43px; transform: translate(0px, 0px);"></div>
											</div>
										</div>
									</div>
								</div>
								<div data-uiselector="spriteRegion373" style="display: none;"><div data-viewname="DStickerSpritesCompositeView" class="stickerCollect"><div class="nano has-scrollbar"><div class="nano-content" tabindex="0" style="right: -18px;"><div class="_stickerc409 stickerList" data-sticker="c409"><ul data-uiselector="spritesContainer"><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_1 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-1</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_2 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-2</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_3 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-3</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_4 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-4</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_5 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-5</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_6 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-6</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_7 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-7</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_8 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-8</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_9 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-9</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_10 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-10</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_11 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-11</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_12 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-12</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_13 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-13</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_14 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-14</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_15 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-15</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_16 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-16</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_17 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-17</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_18 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-18</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_19 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-19</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_20 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-20</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_21 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-21</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_22 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-22</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_23 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-23</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_24 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-24</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_25 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-25</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_26 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-26</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_27 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-27</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_28 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-28</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_29 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-29</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_30 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-30</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_31 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-31</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_32 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-32</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_33 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-33</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_34 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-34</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_35 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-35</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_36 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-36</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_37 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-37</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_38 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-38</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_39 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-39</span></button></li><li data-viewname="DStickerSpritesItemView" class="sf_border"><button type="button" class="thumb stkr_40 _prevent_context" style="background-image: url(http://s.cmstatic.net/band/sticker/373/retina/sprite); background-size: 3000px;"><span class="alt">373-40</span></button></li></ul></div></div><div class="nano-pane"><div class="nano-slider" style="height: 86px; transform: translate(0px, 0px);"></div></div></div></div></div>
							</div>
						</div>
						<footer>
							<button type="button"
								class="btnLyClose _btnClose gIcon icon-layer-close">
								<span class="gSrOnly">닫기</span>
							</button>
						</footer>
					</article>
				</div>
			</div>
		</section>
		<div data-viewname="DPostDetailLayerView" class="skin8 layer_wrap"  style="visibility:hidden;"
		>
			<section class="lyWrap" data-post="expanded">
				<div class="inner _btnClose" >
					<div class="dimmed"></div>
					<div class="scrollWrap _scrollContainer">
						<article class="lyContent -lyPostViewer" data-viewtype="edge">
							<div class="postViewer">
								<div class="wrap">
									<header class="gSrOnly">
										<h1>글 상세</h1>
									</header>
									<div
										class="cPost -boxShadow _postWrapper _preventClose -postCountLayerOn"
										data-type="comment">
										<div class="_moreOptionListRegion" style="">
											<div data-viewname="DPostMoreOptionListView">
												<div class="postFunction _postFunctionWrap">
													<button type="button"
														class="postSet _btnPostMore gIcon icon-more">글 옵션</button>
													<div class="lyMenu _postMoreMenu"
														style="min-width: 145px; display: none;">
														<ul class="_postMoreMenuUl">
														    <li><a href="#" data-menueventname="postMoreAction:modifyPost">글 수정</a></li>
															<li><a href="#" data-menueventname="postMoreAction:setNotice">공지로 등록</a></li>
															<li><a href="#" data-menueventname="postMoreAction:copyPost">다른 밴드에 올리기</a></li>
															<li><a href="#" data-menueventname="postMoreAction:deletePost">글 삭제</a></li>
															<li><a href="#" data-menueventname="postMoreAction:showPostUrl">게시글 URL 보기</a></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
										<div class="_postShareOptionListRegion">
											<div data-viewname="DPostShareOptionListView">
												<div class="lyMenu -lyShare _lyShare"
													style="width: 220px; display: none;">
													<ul class="shareMenu">
														<li class="band _btnShareBand"><a href="#"
															class="_btnShareBand">다른 밴드로 공유</a></li>
														<li class="band _btnShareBandOriginPost"><a href="#"
															class="_btnShareBandOriginPost">다른 밴드로 공유</a></li>
														<li class="facebook"><a href="#"
															class="_btnShareFacebook">Facebook</a></li>
														<li class="twitter"><a href="#"
															class="_btnShareTwitter">Twitter</a></li>
														<li class="googlePlus"><a href="#"
															class="_btnShareGoogle">Google+</a></li>
														<li class="naverCafe"><a href="#"
															class="_btnShareCafe">네이버 카페</a></li>
														<li class="urlCopy"><a href="#" class="_btnDetailUrl">URL복사</a></li>
													</ul>
												</div>
											</div>
										</div>
										<div class="postMain">
											<div class="_postAuthorRegion">
												<div data-viewname="DPostAuthorView">
													<div class="postWriter ">
														<a href="#" class="profileImg _authorImg"><img
															src="http://s.cmstatic.net/webclient/dres/20170124140808/images/template/profile_60x60.gif"
															alt="이정희"> <span
															class="uLeaderBand -typeA gIcon icon-leader"><span
																class="gSrOnly">리더</span></span></a>
														<div class="profileText _profileText">
															<span class="textName"><strong class="name">이정희</strong>
																<span title="" class="memo"></span></span>
															<div class="textTime">
																2017년 1월 20일 오후 12:27 <span class="readCount">0
																	읽음</span>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="readNotice _noticeReaderWrap gIcon icon-right"
												style="display: none;">
												<p class="_noticeReaders"></p>
											</div>
											<div class="_contentListRegion">
												<div data-viewname="DPostContentListView" class="postBody">
													<div data-viewname="DPostTextView">
														<div class="postText _postText">
															<p class="txtBody">
																ㅎㅎㅎ 밴드를 시작합니다.<br>함께하고 싶은 멤버를 초대하세요.<br>
																<br>모임을 위한 밴드 사용법도 확인해보세요.<br>BAND 가이드 : <a
																	href="http://band.us/@bandguidekr" target="_blank"
																	class="outer_link word_break _outerLink">http://band.us/@bandguidekr</a>
															</p>
														</div>
													</div>
													<div data-viewname="DPostSubpostView"
														data-widget="expanded" class="uWidget">
														<a href="#" class="snippet _attachmentSubpost -noLink"
															data-thumbnail="false"> <span class="snippetInfo"><span
																class="snippetTit">멤버 초대하기</span> <span
																class="snippetTxt">이 곳을 눌러 멤버를 초대하세요.</span> <span
																class="snippetLink"></span></span></a>
													</div>
												</div>
											</div>
										</div>
										<div class="_postCountAndEmotionRegion">
											<div data-viewname="DPostCountView">
												<div class="postCount">
													<div
														class="faceComment _btnToggleEmotionCommentIcon gCursorDefault ">
														<span class="face">표정<span
															class="count sf_color _emotionCountSpan">1</span></span> <span
															class="comment">댓글<span
															class="count sf_color _commentCountSpan">0</span></span>
													</div>
												</div>
												<div class="postAdded _postAdded">
													<div class="postAddBox">
														<div class="addCol">
															<a href="#"
																class="addStatus _btnInputEmotion gIcon  sf_color icon-like-on">표정짓기</a>
															<div class="emoticonFace _emoticonFaceLayer"
																style="display: none;">
																<div class="emoticonWrap">
																	<button type="button" class="_btnEmotion"
																		data-emotionindex="1">
																		<span class="uIconlike">좋아요</span>
																	</button>
																	<button type="button" class="_btnEmotion"
																		data-emotionindex="2">
																		<span class="uIconsmile">웃겨요</span>
																	</button>
																	<button type="button" class="_btnEmotion"
																		data-emotionindex="3">
																		<span class="uIconbest">최고예요</span>
																	</button>
																	<button type="button" class="_btnEmotion on"
																		data-emotionindex="5">
																		<span class="uIconsurprise">놀랐어요</span>
																	</button>
																	<button type="button" class="_btnEmotion"
																		data-emotionindex="6">
																		<span class="uIconsad">슬퍼요</span>
																	</button>
																	<button type="button" class="_btnEmotion"
																		data-emotionindex="7">
																		<span class="uIconangry">화나요</span>
																	</button>
																</div>
															</div>
														</div>
														<div class="addCol">
															<a href="#"
																class="addStatus _btnCommentWrite gIcon icon-comment-off ">댓글쓰기</a>
														</div>
													</div>
													<div class="_emotionRegion" style="display: block;">
														<div data-viewname="DEmotionView" class="faceAdd">
															<button type="button"
																class="selectFace sf_color sf_beforeColor gIcon icon-like-on"
																data-uiselector="selectFace">
																표정짓기<span class="sf_color gIcon icon-make"></span>
															</button>
															<div class="emoticonFace"
																data-uiselector="selectFaceLayer" style="display: none;">
																<div class="emoticonWrap" data-uiselector="faceList"
																	data-facename="surprise" data-faceindex="5">
																	<button type="button" data-uiselector="emotionBtn"
																		data-faceindex="1">
																		<span class="uIconlike">좋아요</span>
																	</button>
																	<button type="button" data-uiselector="emotionBtn"
																		data-faceindex="2">
																		<span class="uIconsmile">웃겨요</span>
																	</button>
																	<button type="button" data-uiselector="emotionBtn"
																		data-faceindex="3">
																		<span class="uIconbest">최고예요</span>
																	</button>
																	<button type="button" data-uiselector="emotionBtn"
																		data-faceindex="5" class="on">
																		<span class="uIconsurprise">놀랐어요</span>
																	</button>
																	<button type="button" data-uiselector="emotionBtn"
																		data-faceindex="6">
																		<span class="uIconsad">슬퍼요</span>
																	</button>
																	<button type="button" data-uiselector="emotionBtn"
																		data-faceindex="7">
																		<span class="uIconangry">화나요</span>
																	</button>
																</div>
															</div>
															<div class="faceAddedList">
																<ul>
																	<li><a href="#" class=""
																		data-uiselector="actorFace" data-actorindex="0"><img
																			src="http://s.cmstatic.net/webclient/dres/20170124140808/images/template/profile_60x60.gif"
																			alt="이정희 님이 당신의 글에 표정을 남겼습니다." class="profile">
																			<span class="uIconsurprise22">놀랐어요</span></a></li>
																</ul>
																<button type="button" class="moreFace gIcon icon-right "
																	data-uiselector="viewFace">표정짓기</button>
															</div>
														</div>
													</div>
												</div>
											<%-- 	<div class="postCountLayer">
													<div class="faceComment">
														<button
															class="face _btnInputEmotionOnLayer gIcon  sf_color icon-like-on">표정</button>
														<button class="count -faceCount _emotionCountOnLayer">1</button>
														<button
															class="comment _btnCommentWriteOnLayer gIcon icon-comment-off ">댓글</button>
														<button class="count -commentCount _commentCountOnLayer">0</button>
													</div>
												</div> --%>
											</div>
										</div>
										<div class="_commentRegion">
											<div data-viewname="DPostCommentMainLayoutView">
												<div data-uiselector="commentListRegion">
													<div data-viewname="DCommentListCollectionView"
														class="commentList"></div>
												</div>
												<div class="cCommentWrite"
													data-uiselector="commentInputRegion">
													<div data-viewname="DMessageInputLayoutView">
														<div class="writeMain _writeMain">
															<div class="writeBtn">
																<div
																	class="btnUpload gIcon icon-make2 js-fileapi-wrapper"
																	data-uiselector="imageUploadArea">
																	<input accept="image/*" title="추가" name="attachment"
																		data-uiselector="imageUploadButton" type="file">
																</div>
																<button type="button"
																	class="btnSticker gIcon icon-sticker-off"
																	data-uiselector="stickerInputButton">
																	<span class="gSrOnly">스티커</span>
																</button>
															</div>
															<div class="writeWrap">
																<div class="mentionsWrap">
																	<div class="uInputComment"
																		data-uiselector="mentionListParent">
																		<label class="gSrOnly" for="write_comment_view3460">댓글을
																			남겨주세요.</label>
																		<div class="mentions-input _prevent_toggle"
																			style="overflow-y: hidden !important">
																			<div class="mentions" style="height: 32px;">
																				<div></div>
																			</div>
																			<textarea cols="20" rows="1"
																				class="commentWrite _use_keyup_event"
																				id="write_comment_view3460" placeholder="댓글을 남겨주세요."
																				style="display: inline; overflow: hidden; height: 32px;"
																				data-uiselector="messageTextArea"
																				data-mentions-input="true"></textarea>
																			<div
																				style="position: absolute; display: none; overflow-wrap: break-word; white-space: pre-wrap; border-color: rgb(51, 51, 51); border-style: none; border-width: 0px; font-weight: 400; width: 405px; font-family: &amp; quot; Helvetica Neue&amp;quot; , Helvetica ,Arial,sans-serif,&amp;quot; Apple Color Emoji&amp;quot; ,&amp; quot; Segoe UI Emoji&amp;quot; , NotoColorEmoji ,&amp;quot; Segoe UI Symbol&amp;quot; ,&amp; quot; Android Emoji&amp;quot; , EmojiSymbols; line-height: 20.0167px; font-size: 13px; padding: 6px 10px 0px;">&nbsp;</div>
																		</div>
																		<div class="cMentionsList " style="display: none;">
																			<div class="mention_target_wrap">
																				<ul style="display: none;"></ul>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<button type="submit"
																class="uButton writeSubmit uButtonDefault"
																data-width="xxSmall" data-height="middleSmall"
																data-uiselector="sendMessageButton">보내기</button>
														</div>
														<div class="uploadPreviewWrap" style="display: none;"
															data-uiselector="previewArea">
															<div class="uploadPreview">
																<div class="imgWrap">
																	<img src="" alt="" class="sticker _prevent_context"
																		data-uiselector="previewImage"> <img
																		class="loading"
																		src="http://s.cmstatic.net/webclient/dres/20170124140808/images/common/loading4.gif"
																		data-uiselector="loadingImage" width="32" height="32">
																</div>
																<button class="closePreview gIcon icon-pc-delete"
																	type="button" data-uiselector="closePreviewButton">
																	<span class="gSrOnly">Close</span>
																</button>
															</div>
														</div>
														<div data-uiselector="stickerSelectRegion"
															class="stickerSelectRegion" style="display: none;"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</article>
					</div>
				</div>
				<button type="button" class="btnPrev _btnPrevPost gIcon icon-left"
					data-status="active" style="display: none;">
					<span class="gSrOnly">이전</span>
				</button>
				<button type="button" class="btnNext _btnNextPost gIcon icon-right"
					style="display: none;">
					<span class="gSrOnly">다음</span>
				</button>
				<button type="button"
					class="btnLyClose _btnClose gIcon icon-layer-close">
					<span class="gSrOnly">레이어 닫기</span>
				</button>
			</section>
		</div>

	</div>
			<div id="mentionParent"></div>
	<script type="text/javascript">
    var ESCAPED_FRAGMENT_REGEXP = /[\?&]_escaped_fragment_=([^&]*)/g;

    (function init() {
        var SEOUri = null;
        var currentUri = location.href;

        if ( currentUri.indexOf('#!') < 0 ) {
            var escapedFragment = ESCAPED_FRAGMENT_REGEXP.exec(currentUri);

            // hashbang으로 전환 for SEO
            if ( escapedFragment != null && escapedFragment[1] != null ) {
                SEOUri = '#!' + escapedFragment[1];
            } else if (currentUri.indexOf('@') < 0) {
                location.replace('#!/');
            }
        }

        require(['app_base'],function(){
            require(['application/DApplication'],function(App){
                $(document).on('contextmenu','._prevent_context',function(){
                    return false;
                });
                $(document).on('dragstart','._prevent_context',function(){
                    return false;
                });

                App.start({bandNo: '', SEOUri : SEOUri});
            });
        });
    })();
</script>




	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-M3XM7TJ"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>


	<script type="text/javascript" id="">
(function(){var b={"@context":"http://schema.org","@type":"Organization",name:"Band",url:google_tag_manager["GTM-M3XM7TJ"].macro('gtm1484560673619'),logo:"https://www.digitalreachagency.com/wp-content/themes/DigitalReach/images/band-us-logo.png",email:"help_band@campmobile.com",telephone:"650-272-6616",address:"575 High Street, Suite 110, Palo Alto, CA 94301, USA",sameAs:["https://twitter.com/BANDTogetherapp","https://www.facebook.com/BANDglobal/","https://www.youtube.com/user/bandapplication"]},a=document.createElement("script");a.type="application/ld+json";a.innerHTML=JSON.stringify(b);document.getElementsByTagName("head")[0].appendChild(a)})(document);
</script>
</body>
</html>