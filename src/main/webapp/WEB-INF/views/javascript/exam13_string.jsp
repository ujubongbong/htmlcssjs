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
	  	var data = "123456-7890123";
	  	console.log("전체 문자수: ", data.length);
	  	console.log("성별 숫자: ", data.charAt(5)); // 6번째 인덱스에 해당하는 값 리턴 = 1
	  	console.log("포함 여부: ", data.includes("567")); // true 리턴
	  	console.log("포함 여부: ", data.indexOf("7890123")); // 7 리턴
	  	console.log("추출하기: ", data.slice(0, 6));	// 123456 추출(0, 6), 6부터 끝까지 추출(6)
	  	console.log("추출하기: ", data.slice(7)); // 7890123
	  	console.log("토큰 배열: ", data.split("-"));	// ["123456", "7890123"]
	  	console.log("추출하기: ", data.substr(0, 6));	// 123456
	  	console.log("추출하기: ", data.substr(7)); // 7890123
	  	console.log("추출하기: ", data.substring(0, 6));
	  	console.log("추출하기: ", data.substring(7));
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