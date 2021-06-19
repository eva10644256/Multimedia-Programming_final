<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
  <link rel="stylesheet" href="css/login.css">
  <title>Document</title>
    <!-- partial -->
</head>

<body style="background-color:#8EE5EE ;">
  <div class="container right-panel-active">
    <!-- 註冊 -->
    <div class="container_form container--signup">
      <form action="register.jsp" class="form"  method="POST" id="form1">
        <h2 class="form_title">Sign Up</h2>

        <input type="text" placeholder="User" class="input" name="User" id = "textbox" />
        <input type="email" placeholder="Email" class="input" name="Email" id = "textbox" />
        <input type="password" placeholder="Password" class="input" name="Password" id = "textbox" />
        <input type="password" placeholder="Check Your Password" class="input" name="RePassword" id = "textbox" />
        <button id="up" class="btn">Sign Up</button>
      </form>
    </div>

    <!-- 登陸 -->
    <div class="container_form container--signin" >
      <form action="logincheck.jsp" class="form"  method="POST" id="form2">
        <h2 class="form_title">Sign In</h2>
        <input type="email" placeholder="Email" class="input" name="email" id = "textbox" />
        <input type="password" placeholder="Password" class="input" name="password" id = "textbox" />
        <button id="in" class="btn">Sign In</button>
      </form>
    </div>

    <!-- 浮層 -->
    <div class="container_overlay">
      <div class="overlay">
        <div class="overlay_panel overlay--left">
          <button class="btn" id="signIn" onclick="javascript:test();" type="button">Sign In</button>
          <br>
          <a href="index.jsp"><button class="btn">&ensp;Home&ensp;</button></a>
        </div>
        <div class="overlay_panel overlay--right">
          <button class="btn" id="signUp" onclick="javascript:test();" type="button">Sign Up</button>
          <br>
          <a href="index.jsp"> <button class="btn" >&ensp;Home&ensp;</button></a>
        </div>
      </div>
    </div>
  </div>

  <!-- 背景  會動-->
  <div class="slidershow">
    <div class="slidershow--image" style="background-image: url('img/1-1.jpg')"></div>
    <div class="slidershow--image" style="background-image: url('img/1-2.jpg')"></div>
    <div class="slidershow--image" style="background-image: url('img/1-3.jpg')"></div>
    <div class="slidershow--image" style="background-image: url('img/1-5.jpg')"></div>

  </div>
	<script>
    function test(){
  	const signInBtn = document.getElementById("signIn");
    const signUpBtn = document.getElementById("signUp");
    const firstForm = document.getElementById("form1");
    const secondForm = document.getElementById("form2");
    const container = document.querySelector(".container");

    signInBtn.addEventListener("click", () => {
      container.classList.remove("right-panel-active");
    });

    signUpBtn.addEventListener("click", () => {
      container.classList.add("right-panel-active");
    });

    firstForm.addEventListener("submit", (e) => e.preventDefault());
      secondForm.addEventListener("submit", (e) => e.preventDefault());
    }
    var up = document.getElementById('up')
    var Form1 = document.getElementById('form1')
    var signIn = document.getElementById('in')
    var Form2 = document.getElementById('form2')
    up.onclick = function () {
      Form1.submit()
    }
    signIn.onclick = function () {
      Form2.submit()
    }
  </script>

</body>

</html>