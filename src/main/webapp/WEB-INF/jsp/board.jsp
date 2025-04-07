<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<%@ page import="com.mycom.myapp.user.dto.UserDto"%>
<%
	UserDto userDto = (UserDto) session.getAttribute("userDto");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<title>게시판</title>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container">
    <a class="navbar-brand" href="#">
    	<img src="/assets/img/user/<%= userDto.getUserProfileImage() %>" style="width:30px; height:30px; border-radius:50%;"></img>
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
           <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
          </a>
      </ul>
      <ul class="navbar-nav">
        <li class="nav-item">
<!--            <a class="nav-link" href="/pages/logout">Logout</a> --> <!--  Page COntrooler 에서 적용하는 경우 -->
           <a class="nav-link" href="/auth/logout">Logout</a> <!--  LoginControoler 에서 적용하는 경우 -->
        </li>
          </a>
      </ul>
      

    </div>
  </div>
</nav>

    <script>
		// logout 처리 방식 구분
		// #case 1. JavaScript 를 이용한 비동기 처리
		// 	   Logout 이 클릭되면 이벤트 핸들러에서 비동기로 logout 요청 ( 서버에서 로그아웃 처리 후 result:seccuess 전달) 
		//	   페이지를 window.location.href 로 login 페이지로 이동
		// #case 2. a의 href 에 page 요청 (서버에서 로그아웃 처리 후 바로 페이지를 이동 )     <= 현재 프로젝트에서 사용한 방식
    </script>
</body>
</html>