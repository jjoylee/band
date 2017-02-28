<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!-- saved from url=(0018)http://band.us/#!/ -->
<html lang="ko" class="win win81 chrome chrome55 webkit webkit537">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>밴드 홈</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="format-detection" content="telephone=no">

<link rel="shortcut icon"
	href="http://s.cmstatic.net/webclient/res/20170106183326/images/favicon.ico">
<link rel="icon" sizes="96x96"
	href="http://s.cmstatic.net/webclient/res/20170106183326/images/favicon.png">

<link rel="apple-touch-icon"
	href="http://s.cmstatic.net/webclient/res/20170106183326/images/favicon.png">
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
	content="http://s.cmstatic.net/webclient/res/20170106183326/images/favicon_144x144.png">
<meta name="application-name" content="Band">




<meta name="viewport" content="width=1119">
<link rel="stylesheet" type="text/css"
	href="http://s.cmstatic.net/webclient/dres/20170113111927/css/bandComponent.css?_=20170113111927">
<link rel="stylesheet" type="text/css"
	href="http://s.cmstatic.net/webclient/dres/20170113111927/css/band.css?_=20170113111927">
<link rel="stylesheet" type="text/css"
	href="http://s.cmstatic.net/webclient/dres/20170113111927/css/bandLayout.css?_=20170113111927">








<script type="text/javascript" async=""
	src="http://www.google-analytics.com/analytics.js"></script>
<script async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-M3XM7TJ"></script>
<script>
	(function(w, d, s, l, i) {
		w[l] = w[l] || [];
		w[l].push({
			'gtm.start' : new Date().getTime(),
			event : 'gtm.js'
		});
		var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
				+ l
				: '';
		j.async = true;
		j.src = 'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
		f.parentNode.insertBefore(j, f);
	})(window, document, 'script', 'dataLayer', 'GTM-M3XM7TJ');
</script>
<script type="text/javascript">
	document.domain = "band.us";

	window.isOriginMobile = false;
	window.isOriginTablet = false;
	window.isOriginNormal = true;

	window.isMobile = false;
	window.isTablet = false;
	window.isNormal = true;
	window.isMobileView = false;
	window.isDesktopView = true;

	window.isFacebookInapp = false;
	window.isFacebookMessengerInapp = false;
	window.isTwitterInapp = false;
	window.isWeChatInapp = false;

	window.scriptBaseUrl = "http://s.cmstatic.net/webclient/script/20170109134136";

	window.resBaseUrl = "http://s.cmstatic.net/webclient/dres/20170109112918";

	window.resDevicePath = "/desktop";
	window.version = "20170109134136";
	window.apiDomain = "api.band.us";
	window.apiStickerDomain = "sapi.band.us";
	window.uploadServerDomain = "up.band.us";
	window.helpServerDomain = "help.campmobile.com";
	window.apiViewDomain = "view.band.us";
	window.advertisementApiDomain = "ad-api.band.us";
	window.promotionServerDomain = "promotion.band.us";
	window.wssServerDomain = "wss2.band.us";
	window.authDomain = "auth.band.us";
	window.reportDomain = "report.band.us";
	window.pcWebDomain = "band.us";
	window.bizcenterDomain = "bizcenter.band.us";
	window.scvDomain = "kr-scv.band.us";
	window.passDomain = "pass.band.us";
	window.stickerBasePath = "http://s.cmstatic.net";

	window.formatjsLang = "ko";
	window.formatjsRelativeformatLang = "ko";
	window.momentjsLang = "ko";
	window.messageLang = "ko";
	window.ttsLang = "ko-kr";
	window.countryCode = "KR" || "US";

	window.introLang = "ko";
	window.intlLang = "ko";

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
<script type="text/javascript" charset="UTF-8"
	src="http://s.cmstatic.net/webclient/script/20170112170035/require.js"></script>
<script type="text/javascript" charset="UTF-8"
	src="http://s.cmstatic.net/webclient/script/20170112170035/requireConfig.js"></script>

<!--[if lt IE 9]>
<script type="text/javascript" charset="UTF-8" src="http://s.cmstatic.net/webclient/script/20170109134136/html5shiv.min.js"></script>
<script type="text/javascript" charset="UTF-8" src="http://s.cmstatic.net/webclient/script/20170109134136/respond.min.js"></script>
<![endif]-->


<style>
.cke {
	visibility: hidden;
}
</style>
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
							<li class="bandFindLink"><a
								href="http://band.us/#!/discover">밴드 찾기</a></li>
							<li class="push"><button id="btnShowNews" type="button"
									class="gIcon icon-push-on" data-uiselector="btnShowNews">
									<span class="gSrOnly">새소식</span>
									<mark class="_newsCount" style="display: none;">1</mark>
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
									<img src="http://s.cmstatic.net/webclient/dres/20170113111927/images/template/profile_60x60.gif" width="31"
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
				class="footerVisible">
				<div data-viewname="DHomeLayoutView">
					<aside id="asideWrap" data-uiselector="regionLeftAsideContent"></aside>
					<main id="content" data-uiselector="regionContent" class="wide">
					<div data-viewname="DBandListView" data-height="window">
						<section class="sMyHomePage">
							<header>
								<h1>
									내 밴드<em data-uiselector="lblBandCount">${count}</em>
								</h1>
								<div class="options">
									<div class="sort">
										<button type="button" class="gIcon icon-setting03"
											data-uiselector="btnBandOrder">밴드 순서</button>
										<section class="lyWrap" data-hide="true"
											data-uiselector="regionBandOrderLayer"></section>
										<span class="bar"></span>
										<button type="button" class="gIcon"
											data-uiselector="btnHiddenBand">숨긴 밴드 관리</button>
										<section class="lyWrap" data-hide="true"
											data-uiselector="regionHiddenBandLayer"></section>
									</div>
									<a href="http://band.us/cs/#!/notice/1301"
										class="appDownload gIcon icon-a-download2">데스크탑 버전 다운로드</a>
								</div>
							</header>
							<div data-uiselector="regionBandList">
								<ul data-viewname="DBandCollectionView" class="bandList">
									<c:forEach items="${list}" var="Band">
									<li data-viewname="DBandCollectionItemView" class='${Band.color}'><div
											class="uCover" data-type="type2">
											<a href="/band/bandBoard?id=${Band.id}"  class="bandUri"><div
													class="cover">
													<div class="uThumb" data-type="type2">
														<span class="inner coverDefault sf_beforeBg"><img
															class="coverImg"
															src= '${Band.imgUrl}'
															alt=""></span>
													</div>
												</div>
												<div class="bandName">
													<div class="bandWrap">
														<span class="uriText">${Band.name}</span>
													</div>
												</div></a>
										</div></li>
										</c:forEach>
									<li data-viewname="DBandCollectionItemView"><div
											class="uCover" data-type="type4">
											<a href="/band/bandCreate" class="bandUri"><div
													class="cover">
													<img class="coverImg" src="http://s.cmstatic.net/webclient/dres/20170113111927/images/template/empty_cover_img.png" alt="">
													<div class="iconImg gIcon icon-make"></div>
												</div>
												<div class="bandName">
													<div class="bandWrap">
														<span class="uriText">밴드 만들기</span>
													</div>
												</div></a>
										</div></li>
									<li data-viewname="DBandCollectionItemView"><div
											class="uCover" data-type="type4">
											<a href="http://band.us/#" class="bandUri"><div
													class="cover">
													<img class="coverImg" src="http://s.cmstatic.net/webclient/dres/20170113111927/images/template/empty_cover_img.png" alt="">
													<div class="iconImg gIcon icon-guide-band"></div>
												</div>
												<div class="bandName">
													<div class="bandWrap">
														<span class="uriText">밴드 가이드</span>
													</div>
												</div></a> <em class="newIcon">New</em>
										</div></li>
								</ul>
							</div>
						</section>
					</div>
					</main>
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
			<div id="layerContainer"></div>
			<div id="mentionParent"></div>
		</div>
	</div>
	<script type="text/javascript">
		var ESCAPED_FRAGMENT_REGEXP = /[\?&]_escaped_fragment_=([^&]*)/g;

		(function init() {
			var SEOUri = null;
			var currentUri = location.href;

			if (currentUri.indexOf('#!') < 0) {
				var escapedFragment = ESCAPED_FRAGMENT_REGEXP.exec(currentUri);

				// hashbang으로 전환 for SEO
				if (escapedFragment != null && escapedFragment[1] != null) {
					SEOUri = '#!' + escapedFragment[1];
				} else if (currentUri.indexOf('@') < 0) {
					location.replace('#!/');
				}
			}

			require([ 'app_base' ], function() {
				require([ 'application/DApplication' ], function(App) {
					$(document).on('contextmenu', '._prevent_context',
							function() {
								return false;
							});
					$(document).on('dragstart', '._prevent_context',
							function() {
								return false;
							});

					App.start({
						bandNo : '',
						SEOUri : SEOUri
					});
				});
			});
		})();
	</script>




	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-M3XM7TJ"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>


	<script type="text/javascript" id="">(function(){var b={"@context":"http://schema.org","@type":"Organization",name:"Band",url:google_tag_manager["GTM-M3XM7TJ"].macro('gtm1484204788155'),logo:"https://www.digitalreachagency.com/wp-content/themes/DigitalReach/images/band-us-logo.png",email:"help_band@campmobile.com",telephone:"650-272-6616",address:"575 High Street, Suite 110, Palo Alto, CA 94301, USA",sameAs:["https://twitter.com/BANDTogetherapp","https://www.facebook.com/BANDglobal/","https://www.youtube.com/user/bandapplication"]},a=document.createElement("script");a.type=
"application/ld+json";a.innerHTML=JSON.stringify(b);document.getElementsByTagName("head")[0].appendChild(a)})(document);
</script>
</body>
</html>
