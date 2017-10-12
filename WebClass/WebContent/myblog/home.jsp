<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "org.dimigo.vo.UserVo" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <script src="../js/myblog.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/myblog.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <title>윤석호의 블로그</title>
  </head>
  <body>
    <!-- 메뉴바-->
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Home</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
          <a class="nav-link" href="profile.html">자기 소개</a>
        </li>
        <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
          <a class="nav-link" href="favorite.html">좋아하는 것</a>
        </li>
        <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
          <a class="nav-link" href="location.html">주소</a>
        </li>
      </ul>
      <%-- 세션이 없는 경우 --%>
    <%
			UserVo user=(UserVo)session.getAttribute("user");
			if(user==null){
 
	%>
    	<a class="text-bold text-white" style="text-decoration: none" href="/WebClass/bloglogin">Sign in</a>
    	<span class="text-bold text-white">&nbsp; or &nbsp;</span>
    	<a class="text-bold text-white" style="text-decoration: none" href="">Sign up</a>
    
	<% } else { %>
	<%-- 세션이 있는 경우 --%>
	    <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
	    <li class="nav-item dropdown">
	      <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    	<%= user.getName()+ "님"%>	      </a>
	      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
	      	<form action="/WebClass/bloglogout" method="post">
	      		<button type="submit" class="dropdown-item">Sign out</button>
	       	</form>
	      </div>
	    </li>
	    </ul>
	    
	    <% } %>
	    
	    <script>
	    
	    <%@ include file="modal.jsp"%>
		
	<%-- 로그인이 실패한 경우 처리 추가 --%>
	<%
		if("error".equals(request.getAttribute("msg"))){
	%>
		var myModal = $('#myModal');
		myModal.find('.modal-title').text('Login Error');
		myModal.find('.modal-body').text('Invalid username or password');
		myModal.modal();
	<%
		}
	%>
	</script>
    </div>
  </nav>

  <div class="container">
		<div class="jumbotron">
		  <h1 class="display-3">안녕하세요</h1>
		  <p class="lead">여기는 윤석호의 블로그입니다.</p>
		  <hr class="my-4">
		  <p>보이는 대로 딱히 좋은 것은 없지만 열심히 만들었습니다.<br>
		  메뉴로는 자기소개, 좋아하는 것, 주소 이 있습니다.</p>
		  <p class="lead">
		  </p>
		</div>
		<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		  <ol class="carousel-indicators">
		    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
		    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
		  </ol>
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img class="d-block w-100" src="../image/back1.jpg" alt="First slide">
				<div class="carousel-caption d-none d-md-block">
				    <h3 class = "shadow4_nospread">블로그에요.....</h3>
				</div>		
		    </div>
		    <div class="carousel-item">
		      <img class="d-block w-100" src="../image/back.jpg" alt="Second slide">
				<div class="carousel-caption d-none d-md-block">
				    <h3 class ="shadow4_nospread">제가 다니는 학교입니다....</h3>
				</div>
		    </div>
		  </div>
		  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </a>
		</div>
  </div>
  <!-- Button trigger modal -->

<!-- Modal -->
<div class="modal" id="myModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">로그인 결과</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" id="loginResult">
      
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
    
  </body>
</html>