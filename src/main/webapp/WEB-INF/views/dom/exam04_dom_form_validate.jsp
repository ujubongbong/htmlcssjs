<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Insert title here</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
   
   <script type="text/javascript">
      function handleCheckData(){
         console.log("입력 데이터를 검사합니다.");
         
         //form 태그의 action 기능을 수행하지 않도록 함
         event.preventDefault();
         
         //각 입력 양식의 데이터 검사
         var totalResult = true;
         
         //1)ID 검사
         var el_uid = document.querySelector("#uid"); // 방법1 ***
         //el_uid = document.joinForm.uid; // 방법2 
         var uidPattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,10}$/; // /^:시작, $/:끝,
         var uidResult = uidPattern.test(el_uid.value);
         var el_uid_span = document.querySelector("#uidSpan");
         if(!uidResult) {
        	 // el_uid.classList.remove("bg-danger");
        	 el_uid_span.classList.add("text-danger");
        	 totalResult = false;

         } else {
        	 // el_uid.classList.add("bg-danger");
        	 el_uid_span.classList.remove("text-danger");
        	 
         }
         
         // 2)Email 검사 -----------------------------------------
         var el_email = document.querySelector("#email");
         var emailPattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
         var emailResult = emailPattern.test(el_email.value);
         if(emailResult) {
        	 el_email.classList.remove("bg-danger");
         } else {
        	 el_email.classList.add("bg-danger");
        	 totalResult = false;
         }
         
         // 3)Password 검사 --------------------------------------
         var el_password = document.querySelector("#password");
         var passwordPattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}$/;
         var passwordResult = passwordPattern.test(el_password.value);
         var el_password_span = document.querySelector("#passwordSpan");
         if(passwordResult) {
        	 el_password_span.classList.remove("text-danger");
         } else {
        	 el_password_span.classList.add("text-danger");
        	 totalResult = false;
         }
         
         //4)Phone 검사
         var el_phone = document.querySelector("#phone");
         var phonePattern = /^(010|011)-\d{3,4}-\d{4}$/;
         var phoneResult = phonePattern.test(el_phone.value);
         var el_phone_span = document.querySelector("#phoneSpan");
         if(phoneResult) {
        	 el_phone_span.innerHTML = "예) 010-123-1234, 010-1234-1234";
        	 el_phone_span.classList.remove("text-danger");
         } else {
        	 el_phone_span.innerHTML = "전화번호 형식이 아닙니다.";
        	 el_phone_span.classList.add("text-danger");
        	 totalResult = false;
         }
         
         //5)전체 효율성 검사 결과가 true일 경우
         if(totalResult) {
        	 var el_form = document.querySelector("#joinForm");
        	 // el_form = document.joinForm;
        	 
        	 // 강제적으로 action 기능을 수행하도록 함
        	 el_form.submit();
         }
      }
   </script>
   
   </head>
  
   <body>
      <div class="card">
        <div class="card-header">exam04_dom_form_validate</div>
        <div class="card-body">
              <form id="joinForm" name="joinForm" 
                 action="/htmlcssjs/dom" 
                 onsubmit="handleCheckData()" 
                 novalidate>
              
              <div class="mb-3">
                <label for="uid" class="form-label">ID</label>
                <input type="text" class="form-control" id="uid" name="uid" value="Abc123"/>
                <span id="uidSpan" class="form-text">알파벳 대소문자, 숫자를 혼용해서 6자 이상 10장 이하</span>
              </div>
            
              <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" value="Abc123@mycompany.com"/>
              </div>
            
              <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" value="Abc12345"/>
                <span id="passwordSpan" class="form-text">알파벳 대소문자, 숫자를 혼용해서 8자 이상 15장 이하</span>
              </div>
            
              <div class="mb-3">
                <label for="phone" class="form-label">Phone</label>
                <input type="text" class="form-control" id="phone" name="phone" value="010-123-1234"/>
                <span id="phoneSpan" class="form-text">예) 010-123-1234, 010-1234-1234</span>
              </div>
            
              <div class="mb-3">
                <label for="city" class="form-label">City</label>
                <select id="city" name="city" class="form-control">
                  <option value="seoul">서울</option>
                  <option value="pusan">부산</option>
                  <option selected value="jeju">제주</option>
                </select>
              </div>
            
              <div class="mb-3">
                <label class="form-label">Hobby</label>
                <div class="d-flex">
                   <div class="form-check me-3">
                     <input class="form-check-input" type="checkbox" id="hobby1" name="hobby" value="movie" checked/>
                     <label class="form-check-label" for="hobby1"> 영화 </label>
                   </div>
                   
                   <div class="form-check me-3">  
                     <input class="form-check-input" type="checkbox" id="hobby2" name="hobby" value="trip" checked/>
                     <label class="form-check-label" for="hobby2"> 여행 </label>
                   </div>
                     
                   <div class="form-check me-3">    
                     <input class="form-check-input" type="checkbox" id="hobby3" name="hobby" value="game" />
                     <label class="form-check-label" for="hobby3"> 게임 </label>
                   </div>
                </div>
              </div>
            
              <div class="mb-3">
                <label class="form-lable">Job</label>
                <div class="d-flex">
                   <div class="form-check me-3">
                     <input class="form-check-input" type="radio" id="job1" name="job" value="developer" />
                     <label class="form-check-label" for="job1"> 개발자 </label>
                   </div>
                   <div class="form-check me-3">
                     <input class="form-check-input" type="radio" id="job2" name="job" value="designer" checked/>
                     <label class="form-check-label" for="job2"> 디자이너 </label>
                   </div>
                   <div class="form-check me-3">
                     <input class="form-check-input" type="radio" id="job3" name="job" value="manager" />
                     <label class="form-check-label" for="job3"> 매니저 </label>
                   </div>
                </div>
              </div>
            
              <div class="text-center">
                <input type="submit" class="btn btn-primary btn-sm" value="Join" />
                <input type="reset" class="btn btn-primary btn-sm" value="Reset" />
              </div>
            </form>
        </div>
        
      </div>
   </body>
</html>