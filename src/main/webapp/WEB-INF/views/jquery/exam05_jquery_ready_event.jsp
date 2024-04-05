<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Insert title here</title>
      <!-- Bootstrap 5를 위한 외부 라이브러리 설정 -->
	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	  <!-- jQuery 외부 라이브러리 설정 -->
	  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
	  
	  <!-- 사용자 정의 자바스크립트 -->
	  <script>
	  	console.log("해석 전: ", $("img").length); // HTML 해석이 완료되고 난 후 실행
	  	function loadCompleted() {
			console.log("모든 자원이 다운로드 완료됨"); // ready() 메서드 실행 이후 다운로드 완료 되면 실행(모든 자원 다운로드 후)
			console.log("모든 자원이 다운로드 완료된 후: ", $("img").length);
		}
	  	
	  	 $(document).ready(function() {	// ***
	  		 console.log("HTML 해석이 완료됨"); // 모든 해석이 끝나고 실행됨
	  		console.log("해석 후: ", $("img").length);
	  	 });
	  	 
	  	 $(function() { // 위 코드 축약(ready() 이벤트 발생시 출력) ***
	  		console.log("HTML 해석이 완료됨2"); // 모든 해석이 끝나고 실행됨
	  		console.log("해석 후: ", $("img").length);
		});
	  	 
	  	 $(() => {	// 화살표 함수 형태
	  		console.log("HTML 해석이 완료됨2"); // 모든 해석이 끝나고 실행됨
	  		console.log("해석 후: ", $("img").length);
	  	 });
	  </script>
   </head>
   
   <!-- onlad 하나의 함수만 지정 가능 -->
   <body onload = " loadCompleted()">
   <div class="card">
        <div class="card-header">exam05_jquery_ready_event</div>
        <div class="card-body">
         	<img src = "/htmlcssjs/resources/image/photos/photo1.jpg" width="50" height="50" class="me-2"></img>
         	<img src = "/htmlcssjs/resources/image/photos/photo2.jpg" width="50" height="50" class="me-2"></img>
         	<img src = "/htmlcssjs/resources/image/photos/photo3.jpg" width="50" height="50" class="me-2"></img>
         	<img src = "/htmlcssjs/resources/image/photos/photo4.jpg" width="50" height="50" class="me-2"></img>
         	<img src = "/htmlcssjs/resources/image/photos/photo5.jpg" width="50" height="50" class="me-2"></img>
         	<img src = "/htmlcssjs/resources/image/photos/photo6.jpg" width="50" height="50" class="me-2"></img>
         	<img src = "/htmlcssjs/resources/image/photos/photo7.jpg" width="50" height="50" class="me-2"></img>
         	<img src = "/htmlcssjs/resources/image/photos/photo8.jpg" width="50" height="50" class="me-2"></img>
         	<img src = "/htmlcssjs/resources/image/photos/photo9.jpg" width="50" height="50" class="me-2"></img>
         	<img src = "/htmlcssjs/resources/image/photos/photo10.jpg" width="50" height="50" class="me-2"></img>
         	</div>
   	   </div>   
   </body>
</html>