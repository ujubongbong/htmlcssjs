<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Insert title here</title>
      <!-- Latest compiled and minified CSS -->
	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	  <!-- Latest compiled JavaScript -->
	  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	  
	  <script type="text/javascript">
	  	const car = {};	// 빈 객체 생성(상수, 번지 변경x)
	  	// 동적 속성 추가
	  	// 속성과 메서드 추가는 가능
	  	car.name = "그랜저"; 
	  	console.log(car);
	  	// 동적 메서드 추가
	  	car.start = function() { // function 메서드
			console.log("시동을 겁니다.");
		}
	  	console.log(car);
	  	car.start();
	  	car["start"]();
	  </script>
   </head>
   
   <body>
   <div class="card">
        <div class="card-header">index</div>
        <div class="card-body"></div>
         content
   </div>
      
      
   </body>
</html>