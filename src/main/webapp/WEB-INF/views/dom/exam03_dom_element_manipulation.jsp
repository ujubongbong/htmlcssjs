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
	  	function changeContent() {
			let el_div1 = document.querySelector("#div1");
			
			// 기존 내용을 대체
			el_div1.innerHTML = "<img src='/htmlcssjs/resources/image/photos/photo1.jpg' width='150'/>";
		}
	  	
	  	function appendContent() {
	  		let el_div1 = document.querySelector("#div1");
	  		
	  		// 새로운 엘리먼트 생성
	  		const el_img = document.createElement("img");
			el_img.setAttribute("src", "/htmlcssjs/resources/image/photos/photo2.jpg");
			el_img.setAttribute("width", "150");
			
			//기존 내용 뒤에 추가
			el_div1.appendChild(el_img);
		}
	  	
	  	function deleteContent() {
	  		let el_div1 = document.querySelector("#div1");
	  		
	  		// 기존 내용을 삭제
	  		//el_div1.innerHTML = "";
	  		
	  		// 맨 뒤에 있는 엘리먼트 삭제
	  		el_div1.removeChild(el_div1.lastElementChild);
		}
	  	
	  	function changeCss() {
			var el_img1 = document.querySelector("#img1");
			el_img1.style.width = "50px";
			el_img1.style.height = "50px";
			// style = "border-radius:50ps; border-width:5px; border-color:red; border-style: solid"
			el_img1.style.borderRadius = "25px";	// -(배시) 작성X -> 캐멀 스타일 작성
			el_img1.style.borderWidth = "2px";
			el_img1.style.borderColor = "red";
			el_img1.style.borderStyle = "solid";
		}
	  	
	  	function changeAttribute() {
			var el_img2 = document.querySelector("#img2");
			el_img2.src = "/htmlcssjs/resources/image/photos/photo6.jpg";
			// el_img2.setAttribute("src", "htmlcssjs/resources/image/photos/photo6.jpg");
		}
	  </script>
   </head>
   
   <body>
   <div class="card">
        <div class="card-header">exam03_dom_element_manipulation</div>
        <div class="card-body">
        
	        <div class="card">
		        <div class="card-header">엘리먼트 변경, 추가, 삭제</div>
		        <div class="card-body">
		        	<button onclick="changeContent()" class="btn btn-warning btn-sm">변경</button>
		        	<button onclick="appendContent()" class="btn btn-warning btn-sm">추가</button>
		        	<button onclick="deleteContent()" class="btn btn-warning btn-sm">삭제</button>
		        	<hr/>
		        	<div id = "div1"></div>
		        </div>
   		 	</div>
   		 	
   		 	<div class="card">
		        <div class="card-header">스타일 변경</div>
		        <div class="card-body">
		        	<button onclick="changeCss()" class="btn btn-warning btn-sm">크기 변경</button>
		        	<hr/>
		        	<div id = "div2"></div>
		        	<img id="img1" src="/htmlcssjs/resources/image/photos/photo3.jpg" width="100"/>
		        	<img class="rounded-circle" 
		        		 src="/htmlcssjs/resources/image/photos/photo4.jpg"
		        		 width="50" height="50">
		        </div>
   		 	</div>	
   		 	
   		 	<div class="card">
		        <div class="card-header">속성값 변경</div>
		        <div class="card-body">
		        	<button onclick="changeAttribute()" class="btn btn-warning btn-sm">속성값 변경</button>
		        	<hr/>
		        	<div id = "div2"></div>
		        	<img id="img2" src="/htmlcssjs/resources/image/photos/photo5.jpg" width="100"/>
		        	<img class="rounded-circle" 
		        		 src="/htmlcssjs/resources/image/photos/photo4.jpg"
		        		 width="50" height="50">
		        </div>
   		 	</div>	
   		 	
        </div>
  	 </div>
   </body>
</html>