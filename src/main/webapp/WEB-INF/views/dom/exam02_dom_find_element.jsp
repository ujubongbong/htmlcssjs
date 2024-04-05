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
	  
	  <script>
	  	function findElementById() { // 엘리먼트로 찾기
			// 방법1
			var el_p1 = document.getElementById("p1");
			console.log(el_p1);
			
			// 방법2
			el_p1 = document.querySelector("#p1");	// css 선택자 문법 ***, 하나만 리턴
			console.log(el_p1);
		}
	  	
	  	function findElementByClass() {	// 클래스로 찾기
			// 방법1
			var el_class1 = document.getElementsByClassName("class1"); // HTMLCollection 타입 리턴
	  		console.log(el_class1);
	  		for(var el of el_class1) { // 배열은 아니지만 배열처럼 사용 가능(collection)
	  			console.log(el);
	  		}
	  		console.log("");
	  		
	  		// 방법2
	  		el_class1 = document.querySelectorAll(".class1");	// 두 개 이상 가져올 때 All 붙여줌, NodList 타입 리턴 ***
	  		console.log(el_class1);
		}
	  	
	  	function findElementByTag() {
			// 방법1
			var el_p = document.getElementsByTagName("p");
			for(var el of el_p) {
				console.log(el);
			}
			
			// 방법2
			el_p = document.querySelectorAll("p");
			for(var el of el_p) {
				console.log(el_p);
			}
		}
	  	
	  	function findElementByChecked() {
			var el_checked = document.querySelectorAll("[name=skill]:checked");
			for(var el of el_checked) {
				console.log(el);
			}
	  	}
	  </script>
   </head>
   
   <body>
   <div class="card">
        <div class="card-header">index</div>
        <div class="card-body">
           	<button onclick="findElementById()" class="btn btn-info btn-sm">ID로 찾기</button>
            <button onclick="findElementByClass()" class="btn btn-info btn-sm">Class로 찾기</button>
            <button onclick="findElementByTag()" class="btn btn-info btn-sm">Tag로 찾기</button>
            <button onclick="findElementByChecked()" class="btn btn-info btn-sm">체크된 것만 찾기</button>
            <hr/>
            <div class="d-flex">
                <p id="p1" class="border bg-success" style="width: 100px; height: 100px;"></p>
                <p class="class1 border bg-danger" style="width: 100px; height: 100px;"></p>
                <p class="class1 border bg-info" style="width: 100px; height: 100px;"></p>
            </div>
            <hr/>
            <div class="d-flex align-items-justify-content-center"> <!-- 중앙 정렬 -->
                <div class="me-3"><input type="checkbox" name="skill" value="java"/>java</div>
                <div class="me-3"><input type="checkbox" name="skill" value="javascript"/>javascript</div> 
                <div class="me-3"><input type="checkbox" name="skill" value="vue"/>vue</div> 
            </div>
        </div>
   	  </div>
   </body>
</html>