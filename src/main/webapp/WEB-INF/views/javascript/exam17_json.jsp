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
	  	// Json이란
	  	// JavaScript Object Notation(자바스크립트 객체 표기)
	  	// {"속성명": 값, "속성명":값, ...}
	  	// 반드시 속성명은 큰 따옴표로 감싸야함
	  	// 값의 타입
	  	// 숫자일 경우: {"price": 3000}, {"tall": 170.5}
	  	// 문자열일 경우: {"name": "홍길동"} <- 반드시 큰 따옴표로 감싸야함
	  	// 객체일 경우: {"data": {"bno":1, "title": "제목"}}
	  	// 배열일 경우: {"hobby": ["음악", "게임", "여행"]}
	  	// 용도: 프론트엔드와 백엔드 사이의 데이터 전달을 위해 사용
	  	// 자바 스크립트 객체(객체)와 JSON(문자열)은 다른 것임
	  	
	  	// 자바 스크립트 객체를 JSON 문자열로 변환시키기 ----------------------
	  	const person = {
	  		name: "홍길동",
	  		nation: '한국',
	  		age: 25,
	  		family: {father: "홍삼원", mather: "정관순"},
	  		hobby: ["영화", '게임']	// 큰 따옴표, 작은 따옴표 모두 문자열 취급
	  	};
	  	console.log(person);
	  	
	  	const strJson = JSON.stringify(person); // JSON -> 큰 따옴표 변환 ***
	  	console.log(strJson);
	  	
	  	// JSON 문자열을 자바 스크립트로 변환시키기 --------------------------
	  	const person2 = JSON.parse(strJson); // ***
	  	console.log(person2);
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