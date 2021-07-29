<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>회원가입 폼 템플릿</title>
    <link rel="stylesheet" href="css/login.css">
    <style>
    body{
        background-image:url('img/login_back.png');
        background-repeat:no-repeat;
        background-position:center top;
        background-size:cover;
    }
    </style>
</head>
<body>
    <div class="wrap">
        <div class="form-wrap">
            <div class="button-wrap">
                <button type="button" class="togglebtn2" onclick="login()">REGISTER</button>
            </div>

            <form id="login" action="05_newloginPro.jsp" class="input-group">
           		<div style="overflow:auto; width:300px; height:200px;">
	                <input type="text" name="name" class="input-field" placeholder="User name" required>
	                <input type="text" name="nickname" class="input-field" placeholder="User nickname" required>
	                <input type="text" name="id" class="input-field" placeholder="Enter ID" required>
	                <input type="password" name="pw" class="input-field" placeholder="Enter PW" required>              
	                <input type="email" name="email" class="input-field" placeholder="Your Email" required>
	                <input type="text" name="address" class="input-field" placeholder="Your address" required>
	                <input type="tel" name="tel" class="input-field" placeholder="Your tel" required>
                </div>
                <br><br>
	                <button class="submit">REGISTER</button>
            </form>
        </div>
    </div>
    <script>
        var x = document.getElementById("login");
        var y = document.getElementById("register");
        var z = document.getElementById("btn");
        
        
        function login(){
            x.style.left = "50px";
            y.style.left = "450px";
            z.style.left = "0";
        }

        function register(){
            x.style.left = "-400px";
            y.style.left = "50px";
            z.style.left = "110px";
        }
    </script>
</body>
</html>