<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Language" content="ko">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<title>부동산사이트</title>
<link href="/asset/front/css/style.css" rel="stylesheet" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
#panel, #flip {
	padding: 5px;
	text-align: center;
	background-color: white;
	border: solid 1px #c3c3c3;
}

#panel {
	padding: 50px;
	display: none;
}

* {
	margin: 0px;
	padding: 0px;
	margin-bottom: 81px;
}

ul li {
	list-style: none;
}

a {
	text-decoration: none;
	color: #333;
}

#menu {
	font: bold 16px "malgun gothic";
	width: 700px;
	height: 50px;
	background: white;
	color: black;
	line-height: 50px;
	margin: 0 auto;
	text-align: center;
}

#menu>ul>li {
	float: left;
	width: 140px;
	position: relative;
}

#menu>ul>li>ul {
	width: 130px;
	display: none;
	position: absolute;
	font-size: 14px;
	background: white;
}

#menu>ul>li:hover>ul {
	display: block;
}

#menu>ul>li>ul>li:hover {
	background: yellow;
	transition: ease 1s;
}
</style>
</head>
<body>
	<c:choose>
		<c:when test="${empty USER_INFO.id}">
			<a href="/Login/egovLoginUsr.do" class="login">로그인</a>
		</c:when>
		<c:otherwise>
			<a href="/login/actionLogout.do"><c:out value="${USER_INFO.name}" />로그아웃</a>
		</c:otherwise>
	</c:choose>

	<div class="dim"></div>
	<!-- 로그인 -->
	<div class="layer-popup layer-login" style="display: none;">
		<header class="layer-header">
			<span class="logo"> <span class="img-logo"></span>
			</span>
			<button type="button" class="layer-close">
				<span>팝업닫기</span>
			</button>
		</header>
		<div class="layer-body">
			<form action="/login/actionLogin.do" id="frmLogin" name="frmLogin"
				method="post" onsubmit="return vali()">
				<input type="hidden" name="userSe" value="USR" />
				<fieldset>
					<legend>로그인을 위한 아이디/비밀번호 입력</legend>
					<div class="ipt-row">
						<input type="text" id="loginId" name="id" placeholder="아이디"
							required="required">
					</div>
					<div class="ipt-row">
						<input type="password" id="loginPw" name="password"
							placeholder="비밀번호" required="required">
					</div>
					<button type="submit" class="btn-login">
						<span>로그인</span>
					</button>
				</fieldset>
			</form>
		</div>
	</div>
	<!--  //site body -->
<body>
	<div id="menu">
		<ul>
			<li><a href="#">아파트</a>
				<ul>
					<li><a href="#">매매/전 월세</a></li>
					<li><a href="#">신축분양</a></li>
					<li><a href="#">인구분양</a></li>
				</ul></li>
			<li><a href="#">빌라 투룸찾기</a>
				<ul>
					<li><a href="#">빌라 투룸찾기</a></li>
					<li><a href="#">찜한매물</a></li>
					<li><a href="#">빌라 내놓기</a></li>
				</ul></li>
			<li><a href="#">원룸</a>
				<ul>
					<li><a href="#">방찾기</a></li>
					<li><a href="#">찜한매물</a></li>
					<li><a href="#">방 내놓기(전월세만)</a></li>
				</ul></li>
			<li><a href="#">오피스텔찾기</a>
				<ul>
					<li><a href="#">오피스텔찾기</a></li>
					<li><a href="#">찜한매물</a></li>
					<li><a href="#">오피스텔내놓기(전월세만)</a></li>
				</ul></li>
			<li><a href="#">창업 사무실</a>
				<ul>
					<li><a href="#">상가점포 사무실</a></li>
					<li><a href="#">사무실</a></li>
					<li><a href="#">공유오피스</a></li>
					<li><a href="#">찜한매물</a></li>
					<li><a href="#">상가/사무실 내놓기</a></li>
				</ul></li>
		</ul>
	</div>
</body>


<header>
	<div id="header"></div>
	<a href="#header" class="top">Top</a>
	<div class="menu-toggle-btn">
		<img src="image/menu_bar.png">
	</div>
</header>
<section class="slider">
	<div class="c_wrap">
		<div class="carousel">
			<ul class="list">
				<li class="a1"><img src="/asset/front/images/main/project.png"
					alt=""></li>
				<li class="a2"><img src="/asset/front/images/main/project2.png"
					alt=""></li>
			</ul>
		</div>
		<p class="prev">이전</p>
		<p class="next">이후</p>
	</div>
</section>

<div class="container">
	<div id="contents">
		<div id="house_search">
			<form name="frm" method="post">
				<fieldset>

					<input placeholder="지역 또는 단지명을 입력하세요." value=""> <span
						class="bbtn_s"></span> <input type="submit" value="검색"
						title="검색(수업용 게시판 게시물 내)" />

				</fieldset>
			</form>
		</div>
	</div>
</div>
<section class="content">
	<h2>서초동 추천매물</h2>
	<div class="item-wrap">
		<div class="item">
			<img src="/asset/front/images/main/house1.png" alt=""><br>

			<h3>오피스텔 서초디오빌 강남</h3>
			<br>

			<p>
				월세 100/100 중층, 32.6 ,관리비 8만<br> 신논현역, 강남역 가성비 갑 최고 풀옵션
			</p>


		</div>
		<div class="item">
			<img src="/asset/front/images/main/house2.png" alt=""><br>

			<h4>오피스텔 서초현대렉시온</h4>
			<br>
			<p style="text-align: center;">
				월세120/120<br> 14층, 34 , 관리비10만<br> ○실시간업데이트○ <br> 초대형
				복층 오피스텔
			</p>



		</div>
		<div class="item">
			<img src="/asset/front/images/main/house3.png" alt=""><br>

			<h4>오피스텔 현대썬앤빌강남더인피닛</h4>
			<br>
			<p style="text-align: center;">
				월세 150/95<br> 고층, 17.95 , 관리비8만<br> 신논현역 강남역 가성비 최고<br>
				신축 풀옵션
			</p>
		</div>
		<div class="item">
			<img src="/asset/front/images/main/house4.png" alt=""><br>
			<p style="text-align: center;">오피스텔 강남역리가스퀘어</p>
			<p style="text-align: center;">
				4층, 36.93 , 관리비 12만<br> ○○강남 최저가구해줘○○ <br> 신축 오피스텔
			</p>
		</div>
	</div>
</section>
<footer> </footer>



<script>
	$(document).ready(function() {
		//로그인
		$(".login").click(function() {
			$(".dim,.layer-login").fadeIn();
			return false;
		});

		//레이어닫기
		$(".layer-close").click(function() {
			$(".dim.layer-login").fadeOut();
			return false;
		});

	});

	function vali() {
		if (!$("#loginId").val()) {
			alert("아이디를 입력해주세요.");
			$("#loginId").focus();
			return false;

		}
		if (!$("#loginPw").val()) {
			alert("비밀번호를 입력해주세요.");
			$("#loginPw").focus();
			return false;
		}
	}
	<c:if test="${not empty loginMessage}">
	alert("${loginMessage}");
	</c:if>
</script>

</html>