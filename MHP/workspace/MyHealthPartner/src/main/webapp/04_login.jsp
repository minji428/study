<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>로그인 / 회원가입 폼 템플릿</title>
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
                <div id="btn"></div>
                <button type="button" class="togglebtn" onclick="login()">LOG IN</button>
                <button type="button" class="togglebtn" onclick="register()">Find PW</button>
            </div>

            <form id="login" action="04_loginPro.jsp" class="input-group">
                <input type="text" name="id" class="input-field" placeholder="User name or Email" required>
                <input type="password" name="pw" class="input-field" placeholder="Enter Password" required>
                <br><br><br>
                <button class="submit">Login</button>
                <br>
                <a href="05_newlogin.jsp"><input type="button" class="submit" value="Register"></a>
            </form>
           <form id="register" action="06_findPW.jsp" class="input-group">
                   <div style="overflow:auto; width:300px; height:200px;">
                    <input type="text" name="name" class="input-field" placeholder="User name" >
                    <input type="text" name="id" class="input-field" placeholder="Enter ID" >
                    <input type="tel" name="tel" class="input-field" placeholder="Your tel                                  *-없이 입력" >
                </div>
                <br><br>
                    <button class="submit">DONE</button>
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