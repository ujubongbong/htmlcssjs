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
	  <!-- jQuery 외부 라이브러리 설정 -->
	  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
	  
	  <!-- 사용자 정의 자바스크립트 -->
	  <script type="text/javascript">
	  	function changeBgColor() {
	  		// jQuert 객체 얻기
			var jq_color_div = $(".colorDiv"); // jq_color_div는 jQuery Object 참조
			console.log(jq_color_div);
			
			// for문으로 반복해서 스타일 적용
			// Element 객체가 가지고 있는 속성과 메서드 사용
			for(var el of el_color_div) {
				//el.style.backgroundColor = "orange";
				el.classList.add("bg-danger");
			}
			// jQuery 객체가 가지고 있는 메서드 호출
			// jq_color_div.css("background-color", "orange");
			jq_color_div.addClass("bg-danger");	// 모든 요소에 대입
		}
	  </script>
   </head>
   
   <body>
   <div class="card">
        <div class="card-header">exam01_jequery_object</div>
        <div class="card-body">
         	<!-- 
         	[jQuery 객체란]
         	1. jQuery API를 이용해서 만들어진 객체
         	2. jQuery 객체 내부에는 Element 객체 배열이 저장
         	3. jQuery 객체 내부에는 Element 객체들을 일괄적으로 변경하는 메서드를 포함
         	
			--jQuery Object ---------------------------------------
			|                                                     |
			|  method1(), method2(), method3(), ...               |
			|                                                     |
			|-----------------------------------------------------|
			|    0    |    1    |    2    | ...                   |
			| Element | Element | Element | ...                   |
			-------------------------------------------------------
         	 -->
         	 <button onclick="changeBgColor()" class="btn btn-info btn-sm">배경색 변경</button>
         	 <hr/>
         	 
         	 <div class="d-flex">
         	 	<div class="colorDiv me-3 border" style="width:100px; height:100px"></div>
         	 	<div class="colorDiv me-3 border" style="width:100px; height:100px"></div>
         	 	<div class="colorDiv me-3 border" style="width:100px; height:100px"></div>
         	 </div>
          </div>
   	   </div>   
   </body>
</html>