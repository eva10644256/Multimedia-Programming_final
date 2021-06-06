<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
  <link rel="stylesheet" href="css/login.css">
  <title>會員中心</title>
</head>

<body>
  <div class="mem_container">
    <!-- 註冊 -->
    <form action="memprofilechange.jsp" method="post">
    <div class="mem_container_form">
      <form action="#" class="form" id="form1">
        <h2 class="form_title">修改資料</h2>
        <input type="text" placeholder="User" class="input" name="username"/>
        <input type="email" placeholder="Email" class="input" name="email"/>
        <input type="password" placeholder="New Password" class="input" name="password"/>
        <input type="password" placeholder="Check Your New Password" class="input" name="repassword"/>
        <button class="btn" value="submit">修改</button>
      </form>
    </div>
    </form>


  </div>

  <!-- 背景  會動-->
  <div class="slidershow">
    <div class="slidershow--image" style="background-image: url('img/1-1.jpg')"></div>
    <div class="slidershow--image" style="background-image: url('img/1-2.jpg')"></div>
    <div class="slidershow--image" style="background-image: url('img/1-3.jpg')"></div>
    <div class="slidershow--image" style="background-image: url('img/1-5.jpg')"></div>

  </div>

  <!-- partial -->
  <script src="js/login.js"></script>
</body>

</html>