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
	  	const car = {
	  		name: "그랜저",
	  		prcie: 5000,
	  		speed: 100, // mile
			start: function() {
				console.log("시동을 겁니다.");
			},
			// setter(외부 값(매개변수) 받아서 필드값 세팅)
			set kmSpeed(meter) { // getter와 메서드 이름 같음(한 쌍으로 쓰임)
				// km -> mile
				this.speed = meter / 0.621371;
			},
			// getter(필드값을 외부에서 읽을 수 있도록 함)
			get kmSpeed() {
				// mile -> km
				return this.speed * 0.621371; // 추가적인 연산 포함(메서드 작성, 속성처럼 사용)
			},
	  	};
	  	
	  	// setter 호출
	  	car.kmSpeed = 60; // 매개값 60 전달
	  	// getter 호출
	  	console.log("현재 속도: ", car.kmSpeed);
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