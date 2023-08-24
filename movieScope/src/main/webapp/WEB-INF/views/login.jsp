<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
<%@include file="include/head.jsp" %>
<title>로그인</title>
   </head>
   <style>
.wrap {
   width: 490px;
   padding: 40px 20px 20px 20px;
   background-color: #f5f6f7;
   position: absolute;
   top: 50%;
   left: 50%;
   transform: translate(-50%,-50%);
   border-radius: 30px;
   box-sizing: border-box;
}

.title {
   margin: 0 auto;
    width: 240px;
    height: 44px;
    text-align: center;
    font-size: 25px;
    background-repeat: no-repeat;
    background-position: 0 0;
    background-size: 240px auto;
    margin-bottom: 20px;
}
.kakao{
   margin-top: 15px;
   height: 60px;
   border: solid 1px #FEE500;
   background: #FEE500;
   color: #3c1d1e;
   font-size: 18px; 
   box-sizing: border-box;
   border-radius: 5px;
   cursor: pointer;
   width: 450px;
   display: flex;
}
.kakao_i{
   background: url(resources/icons/kakao.png) no-repeat;
   width: 40px;
   height: 100%;
   background-size: 90%;
   background-position: 50%;
   margin: 0 20px;
}
.kakao_txt{
   width: 100%;
   display: flex;
   justify-content: center;
   align-items: center;
   font-size: 16px;
   padding-right: 60px;
}

a {
   text-decoration: none;
}

</style>
   
   <body class="login-main-body">
      <section class="login-main-wrapper">
         <div class="container-fluid pl-0 pr-0">
            <div class="row no-gutters">
               <div class="col-md-5 p-5 bg-white full-height">
                  <div class="login-main-left">
                     <div class="text-center mb-5 login-main-left-header pt-4">
                        <img src="resources/img/favicon.png" class="img-fluid" alt="LOGO">
                        <h6 class="mt-3 mb-3">Cinescope 방문을 환영합니다</h6>
                        <p>Cinescope는 사용자 데이터 기반으로 영화를 추천 해주며, 사용자가 영화 플레이리스트를 미리 구성하고 OTT 서비스 이용 시 콘텐츠 선택 시간을 절약해줍니다.</p>
                     </div>
                     <form method="post">
                        <div class="form-group">
                           <label>ID</label>
                           <input type="text" class="form-control" name="u_id" placeholder="아이디 입력">
                        </div>
                        <div class="form-group">
                           <label>Password</label>
                           <input type="password" class="form-control" name="u_pw" placeholder="비밀번호 입력">
                        </div>
                        <div class="mt-4">
                           <div class="row">
                              <div class="col-12">
                                 <button type="submit" class="btn btn-outline-primary btn-block btn-lg">로그인 하기</button>
                              </div>
                           </div>
                        </div>
                     </form>
                     <div class="text-center mt-5">
                        <p class="light-gray">아직 Cinescope 계정이 없나요? <a href="Signup">가입하기</a></p>
                     </div>
                  </div>
	               	<div class="wrap">
					   <div class="title">로그인</div>
					     <a class="kakao" href="https://kauth.kakao.com/oauth/authorize?client_id=55846b7aeea50c8b136c6223b3f2bb5a&redirect_uri=	
	http://localhost:8080/dong/kakaoLogin&response_type=code">
					     	<!-- REST_API키 및 REDIRECT_URI는 본인걸로 수정하세요 -->
					        
					      	<div class="kakao_i"></div>
					      	<div class="kakao_txt">카카오톡으로 간편로그인 </div>
					   	</a>
					</div>
               </div>
               <div class="col-md-7">
                  <div class="login-main-right bg-white p-5 mt-5 mb-5">
                     <div class="owl-carousel owl-carousel-login">
                        <div class="item">
                           <div class="carousel-login-card text-center">
                              <img src="resources/img/login.png" class="img-fluid" alt="LOGO">
                              <h6 class="mt-5 mb-3">​Watch videos offline</h6>
                              <p class="mb-4">when an unknown printer took a galley of type and scrambled<br> it to make a type specimen book. It has survived not <br>only five centuries</p>
                           </div>
                        </div>
                        <div class="item">
                           <div class="carousel-login-card text-center">
                              <img src="resources/img/login.png" class="img-fluid" alt="LOGO">
                              <h6 class="mt-5 mb-3">Download videos effortlessly</h6>
                              <p class="mb-4">when an unknown printer took a galley of type and scrambled<br> it to make a type specimen book. It has survived not <br>only five centuries</p>
                           </div>
                        </div>
                        <div class="item">
                           <div class="carousel-login-card text-center">
                              <img src="resources/img/login.png" class="img-fluid" alt="LOGO">
                              <h6 class="mt-5 mb-3">Create GIFs</h6>
                              <p class="mb-4">when an unknown printer took a galley of type and scrambled<br> it to make a type specimen book. It has survived not <br>only five centuries</p>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- Bootstrap core JavaScript-->
      <script src="resources/vendor/jquery/jquery.min.js"></script>
      <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
      <!-- Core plugin JavaScript-->
      <script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>
      <!-- Owl Carousel -->
      <script src="resources/vendor/owl-carousel/owl.carousel.js"></script>
      <!-- Custom scripts for all pages-->
      <script src="resources/js/custom.js"></script>
   </body>

</html>