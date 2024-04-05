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
	  	// 객체 초기화하는 constructor 정의
	  	// 객체 생성 방법(중괄호, 생성자 new)
	  	function Car() { // 생성자 함수 -> 객체 생성
	  		this.name = "그랜저"; // this 객체 자신(객체가 가지고 있는)
	  		this.price = 50000000;
	  		this.start = function() {
				console.log("시동을 겁니다.");
			};
	  	}
	  	
	  	function Person(name, age) { // name, age를 매개값으로 받는 생성자
			this.name = name;
			this.age = age;
		}
	  	
	  	// 객체 생성
	  	const myCar = new Car();	// new 연산자
	  	console.log(myCar.name);
	  	console.log(myCar.price);
	  	myCar.start(); // 메서드 호출
	  	
	  	const my = new Person("홍길동", 30);
	  	const you = new Person("감자바", 27);
	  	console.log(my);
	  	console.log(you);
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