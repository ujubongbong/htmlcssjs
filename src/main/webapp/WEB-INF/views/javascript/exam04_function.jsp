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
	  	//---------------------------------
	  	// 함수 선언(함수도 객체 -> 번지 저장)
	  	function fun1() {
	  		console.log("fun1() 실행");
	  	}
	  	// 함수 호출
	  	fun1();
	  	var fun3 = fun1;
	  	fun3();
	  	//---------------------------------
	  	// 함수 선언
	  	var fun2 = function() {
			console.log("fun2() 실행");
		};
	  	// 함수 호출
	  	fun2();
	  	//---------------------------------
	  	// 화살표 함수 선언(arrow function) 선언
	  	var fun3 = () => {
	  		console.log("fun3() 실행");
	  	};
	  	// 함수 호출
	  	fun3();
	  	//--------------------------------- ES6 이상 문법
	  	// 함수 대입
	  	var fun4 = fun3;
	  	fun4();
	  	//---------------------------------
	  	// 매개변수가 있는 함수
	  	function fun5(arg1, arg2) {
			console.log("arg1:", arg1);
			console.log("arg2:", arg2);
		}
	  	fun5(10, "abc");
	  	fun5(10);
	  	//---------------------------------
	  	var var6 = (arg1, arg2) => {
	  		console.log("fun6() 실행");
	  		console.log("arg1:", arg1);
	  		console.log("arg2:", arg2);
	  	};
	  	var6('abc', "def") // char 타입 없음, 전부 문자열
	  	
	  	var var7 = (arg1) => console.log("arg1:", arg1); // 실행문이 하나일 경우 {} 생략 가능
	  	var var8 = arg1 => console.log("arg1:", arg2);	// 매개변수 하나인 경우 괄호 생략 가능
	  	var8("abc");
	  	//---------------------------------
	  	// 리턴값이 있는 함수
	  	function fun9(x, y) {
			return x + y;
		}
	  	
	  	const fun10 = (x, y) => { return x + y; };
	  	
	  	const fun11 = (x, y) => x + y;
	  	
	  	var result1 = fun9(10, 20);
	  	var result2 = fun10(10, 20);
	  	var result3 = fun11(10, 20);
	  	console.log("result1:", result1);
	  	console.log("result2:", result2);
	  	console.log("result3:", result3);
	   //---------------------------------
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