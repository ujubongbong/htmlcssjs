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
	  	// 객체 생성
	  	const board = {
	  		bno: 1,
	  		title: "오늘은 월요일",
	  		content: "날씨가 좋네요. 자바 스크립트 공부해야겠어요",
	  		writer: "홍길동"
	  	};
	  	
	  	// var title = board.title;
	  	var {bno} = board; // 구조 분해 -> 변수만 취함
	  	console.log("bno:", bno);
	  	console.log("");
	  	
	  	/* var title = board.title;
	  	var content = board.content; */
	  	var {title, content} = board; // ** 중요
	  	console.log("title:", title);
	  	console.log("content:", content);
	  	console.log("");
	  	//--------------------------------
	  	function fun1({title}) {
			console.log(title);
		}
	  	fun1(board);
	  	console.log("");
	  	//---------------------------------
	  	//...rest: 나머지는 객체로 만듦
	  	var {writer, ...rest} = board;
	  	console.log(writer);
	  	console.log(rest);
	  	console.log("");
	  	//---------------------------------
	  	// ...은 나머지는 구조분해 해서 그대로 넣음
	  	var newBoard1 = {...board, bno:2, title:"벚꽃이 좋아요."};	// ** 중요
	  	console.log(newBoard1);
	  	//---------------------------------
	  	// 리턴값이 객체일 경우에는 ()로 감싸야함 
	  	/* var newBoard2 = (obj) => {
	  		return ({...board, hitcount:1});
	  		}; */
	  	var newBoard2 = obj => ({...obj, hitCount:1});	// 괄호로 묶어서 값으로 표시 
	  	console.log(newBoard2);
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