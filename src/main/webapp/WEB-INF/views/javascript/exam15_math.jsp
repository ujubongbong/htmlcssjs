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
	  	console.log(Math.ceil(2.4)); 	// 3
	  	console.log(Math.floor(2.7)); 	// 2
	  	console.log(Math.round(2.7));	// 3
	  	console.log(Math.pow(2, 3));	// 8
	  	
	  	// 주사위 눈을 뽑기
	  	var num = Math.floor(Math.random() * 6) + 1;
	  	console.log("뽑은 눈: ", num);
	  </script>
   </head>
   
   <body>
   <div class="card">
        <div class="card-header">exam15_math</div>
        <div class="card-body"></div>
         content
   </div>
      
      
   </body>
</html>