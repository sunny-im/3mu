<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign-UP</title>
</head>
<body>
<%@ include file = "/header.jsp" %>
<!-- 메인 영역입니다. -->
<div class="py-5 text-center">
      <img class="d-block mx-auto mb-4" src="/img/cat.jpeg" alt="" width="72" height="57">
      <h2>회원가입을 환영합니다!</h2>
      <p class="lead">회원가입 설명</p>
    </div>
<h4 class="mb-3">회원 정보</h4>
<hr class="my-4">
<form action="/member/signupDB.jsp" method="post" class="needs-validation was-validated" style="padding: 15px">
          <div class="row g-3">
            <div class="col-sm-6">
              <label for="UserId" class="form-label">User ID</label>
              <input type="text" class="form-control" name="id" id="UserId" placeholder="" value="" required="">
              <div class="invalid-feedback">
                Valid User ID is required.
              </div>
            </div>

            <div class="col-sm-6">
              <label for="password" class="form-label">Password</label>
                <input type="text" class="form-control" name="ps" id="password" placeholder="" required="">
              <div class="invalid-feedback">
                  Your password is required.
              </div>
            </div>

            <div class="col-sm-6">
              <label for="userName" class="form-label">User name</label>
              <input type="text" class="form-control" name="name" id="userName" placeholder="" value="" required="">
              <div class="invalid-feedback">
                Valid User Name is required.
              </div>
            </div>

            <div class="col-sm-6">
              <label for="gender" class="form-label">Gender</label>
              <select class="form-select" name="gender" id="gender" required="">
                <option value="">Choose...</option>
                <option value="male">Male</option>
                <option value="female">Female</option>
              </select>
              <div class="invalid-feedback">
                Please select your gender.
              </div>
            </div>
            
           <div class="col-sm-6">
              <label for="phone" class="form-label">Phone Number</label>
              <input type="text" class="form-control" name="phone" id="phone" placeholder="" value="" required="">
              <div class="invalid-feedback">
                Valid Phone number is required.
              </div>
            </div>
            
            <div class="col-sm-6">
              <label for="email" class="form-label">Email <span class="text-muted">(Optional)</span></label>
              <input type="email" class="form-control" name="mail" id="email" placeholder="you@example.com">
              <div class="invalid-feedback">
                Please enter a valid email address for shipping updates.
              </div>
            </div>

            <div class="col-12">
              <label for="birth" class="form-label">Birth</label>
              <input type="text" class="form-control" name="birth" id="birth" placeholder="YYYY-MM-DD" required="">
              <div class="invalid-feedback">
                Please enter your Birth Day.
              </div>
            </div>
            
            <div class="col-12">
              <label for="address" class="form-label">Address</label>
              <input type="text" class="form-control" name="addr" id="address" placeholder="1234 Main St" required="">
              <div class="invalid-feedback">
                Please enter your address.
              </div>
            </div>

          <hr class="my-4">

          <div class="form-check">
            <input type="checkbox" class="form-check-input" id="same-address">
            <label class="form-check-label" for="same-address">쇼핑몰 이용약관에 동의합니다.</label>
          </div>

          <div class="form-check">
            <input type="checkbox" class="form-check-input" id="save-info">
            <label class="form-check-label" for="save-info">개인정보 처리방침에 동의합니다.</label>
          </div>
         </div>

          <hr class="my-4">

          <button class="w-100 btn btn-lg" type="submit" style="background: #815854; color: #F9EBDE;">회원 가입</button>
        </form>

<!-- 푸터 영역입니다. -->
<%@ include file = "/footer.jsp" %>
 <script src="/js/signup.js"></script>
</body>
</html>