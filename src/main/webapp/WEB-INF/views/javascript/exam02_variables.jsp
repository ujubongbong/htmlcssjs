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
        
   </head>
   <body>
   <div class="card">
        <div class="card-header">exam02_variables</div>
        <div class="card-body">
        	<script type="text/javascript">
        		// 변수를 선언하는 3가지 방법
        		var var1 = 1; 		// 전역 변수
        		let var2 = 10.0;	// 전역 변수
        		const var3 = "abc";	// 전역 변수(값 변경x)
        		// 콘솔에 변수값 출력
        		console.log("var1: "+ var1);
        		console.log("var2: ", var2);
        		console.log("var3: ", var3);
        		console.log("");
        		/* // 수정 여부
        		var1 = 2;	// o
        		var2 = 3.5; // o
        		var3 = "def"; // x */
        	</script>
        	
       <script type="text/javascript">
        	function fun1() {
				var var4 = 10;		// 지역변수(함수레벨)
				let var5 = 10.0;	// 지역변수(블록레벨)
				const var6 = "ghi"; // 지역변수(블록레벨)
        	
        		if(true) {
    				var var7 = 100;		// 지역변수(함수레벨)
        			let var8 = 100.0;	// 지역변수(블록레벨)
        			const var9 = "jhi";	// 지역변수(블록레벨)
        			//-------------------------
        			console.log("val1:", var1);
        			console.log("val2:", var2);
        			console.log("val3:", var3);
        			console.log("val4:", var4);
        			console.log("val5:", var5);
        			console.log("val6:", var6);
        			console.log("val7:", var7);
        			/* console.log("val8:", var8);
        			console.log("val9:", var9); */
        			console.log("");
        			//-------------------------
    			}
      	  	}
        	
        	function fun2() {
        		console.log("val1:", var1);
        		// console.log("val4:", var4);
        		console.log("val1:", var1);
    			console.log("val2:", var2);
    			console.log("val3:", var3);
    			/* console.log("val4:", var4);
    			console.log("val5:", var5);
    			console.log("val6:", var6);
    			console.log("val7:", var7); 
    			console.log("val8:", var8);
    			console.log("val9:", var9);
    			console.log("");*/
			}
     	   	
        </script>
        	// 함수 호출
        	fun1(); 
        	fun2(); 
          </div>
   	   </div>
   </body>
</html>