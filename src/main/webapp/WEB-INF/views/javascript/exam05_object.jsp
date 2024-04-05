<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=2.0">
      <title>Insert title here</title>
      <!-- Latest compiled and minified CSS -->
	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	  <!-- Latest compiled JavaScript -->
	  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	  
	  <script type="text/javascript">
	  	// 객체 표기법 { }
	  	var var1 = 3;	// number;
	  	let var2 = "abc";	// string
	  	const var3 = () => {};	// function
	  	var var4 = {};	// object
	  	var var5 = [];	// object(배열)
	  	console.log("var1의 타입:", typeof(var1));
	  	console.log("var2의 타입:", typeof(var2));
	  	console.log("var3의 타입:", typeof(var3));
	  	console.log("var4의 타입:", typeof(var4));
	  	console.log("var5의 타입:", typeof(var5));
	  	console.log("");
	  	
	  	// 객체 생성
	  	var car = {
	  		// 필드(속성)
	  		company: "현대자동차",
	  		name: "그랜저",
	  		price: 50000000,
	  		// 메서드
	  	};
	  	console.log(car.company);
	  	console.log(car.name);
	  	console.log(car.price);
	  	console.log(car["company"]); // 변수의 값(=속성 이름) 
	  	console.log(car["name"]);
	  	console.log(car["price"]);
	  	console.log("");
	  	// 필드(속성)값 변경
	  	car.company = "포르쉐";
	  	car["name"] = "911";
	  	console.log(car.company);
	  	console.log(car["name"]);
	  	console.log("");
	  	
	  	// 객체의 메서드 정의 --------------------
	  	 car = {
	  		// 필드(속성)
	  		company: "현대자동차",
	  		name: "그랜저",
	  		price: 50000000,
	  		speed: 0,
	  		// 메서드
	  		/* run: function() {
	  			this.setSpeed(60);
				console.log(this.company + "의" + 
							this.name + "이 달립니다." +
							this.speed + "로 달립니다.");
			}, */
			
			run() {
	  			this.setSpeed(60); // this 필수 작성
				console.log(this.company + "의" + 
							this.name + "이 달립니다." +
							this.speed + "로 달립니다.");
			},
			
			/* setSpeed: function(Speed) {
				this.speed = speed;	// this 구분 필수
			}, */
			
			setSpeed(speed) {
				this.speed = speed;	// this 구분 필수
			},
			
			/* toString: function() {
				return this.company + "-" + this.name; // toStirng
			}, */
			
			toString() {
				return this.company + "-" + this.name;
			},
			
			sound: () => { // 잘 사용x
				// 화살표 함수는 this 객체가 자신이 아니고 window 객체 참조
				// 그래서 this 넣을 수 없음
				// 그래서 this를 사용하는 코드 작성하지 않음
				// console.log(this.name + "빵빵");
			}
			
	  	};
	  	// 메서드 호출
	  	car.run();
	  	var info = car.toString();
	  	console.log("info:", info);
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