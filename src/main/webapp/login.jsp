<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css">

</head>
<body>
<style>

@import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

 {
    padding: 0;
    margin: 0;
    font-family: 'Poppins', sans-serif
}

.section {
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #eee
}

.section .container {
    height: 500px;
    width: 800px;
    background-color: #fff;
    position: relative;
    box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
    overflow: hidden
}

.section .container .form {
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    display: flex
}

.section .container .left-side {
    width: 55%;
    background-color: #040387;
    height: 100%
}

.section .container .left-side .content {
    color: #fff;
    letter-spacing: 1px;
    margin-top: 80px;
    padding: 10px 30px;
    text-align: center
}

.section .container .left-side .social {
    padding: 10px 30px;
    display: flex;
    justify-content: space-between;
    align-items: center
}

.section .container .left-side .social .social-icons {
    list-style: none;
    display: flex
}

.section .container .left-side .social .social-icons li {
    margin: 5px
}

.section .container .left-side .social .social-icons a {
    color: #fff;
    transition: all 0.5s
}

.section .container .left-side .social .social-icons a i {
    color: #fff;
    transition: all 0.5s
}

.section .container .left-side .social .social-icons a:hover i {
    transform: rotate(360deg)
}

.section .container .left-side .social .terms {
    list-style: none;
    display: flex;
    margin-top: 3px
}

.section .container .left-side .social .terms li .dots {
    width: 5px;
    height: 5px;
    border-radius: 50%;
    background-color: #eee;
    display: flex;
    margin: 12px 5px
}

.section .container .left-side .social .terms li a {
    font-size: 12px;
    text-decoration: none;
    letter-spacing: 1px;
    color: #fff
}

.section .container .left-side .content h5 {
    font-size: 19px
}

.section .container .left-side .content p {
    font-size: 10px
}

.section .container .right-side {
    width: 45%;
    background-color: #fff;
    height: 100%;
    padding: 20px;
    display: flex;
    justify-content: center;
    align-items: center
}

.section .container .right-side .forms {
    padding-right: 20px;
    width: 100%
}

.section .container .right-side .forms input {
    width: 100% !important;
    height: 45px;
    border: none;
    margin-bottom: 10px;
    padding: 0px 10px;
    border: 2px solid #eee;
    transition: all 0.5s;
    background-color: #e8f0fe;
    border-radius: 3px;
    outline: none;
    box-shadow: none
}

.section .container .right-side .forms input[type="submit"] {
    width: 100%;
    background-color: #040387;
    border-radius: 5px;
    color: #fff;
    letter-spacing: 1px;
    cursor: pointer;
    border: none;
    text-transform: uppercase
}

.section .container .right-side .forms input[type="submit"]:hover {
    background-color: #020242
}

.submit-button {
    width: 110%
}

.section .container .right-side .forms input:focus {
    border: 2px solid #000 !important
}

.strength-list {
    margin-left: 5px;
    list-style: none;
    margin-bottom: 5px
}

.form-inputs {
    position: relative;
    width: 100% !important
}

.form-inputs i {
    position: absolute;
    top: 14px;
    right: -10px;
    color: #dbdada;
    z-index: 1000
}

.list-group i {
    font-size: 10px;
    color: #aaa
}

.list-group span {
    font-size: 11px;
    color: #aaa;
    letter-spacing:1px;
}

.green-color {
    color: green !important
}

.random_password {
    margin-top: 5px;
    letter-spacing: 1px;
    font-size: 11px;
    cursor: pointer
}

@media (max-width:750px) {
    .section .container {
        max-width: 350px
    }

    .section .container .left-side {
        display: none
    }

    .section .container .right-side {
        width: 100%
    }
}




</style>

<form action="controler" method="POST">
<div class="section"> <div class="container"> 

<div class="form"> <div class="left-side">
 <div class="content"> <h5>Shop with confidence</h5>
  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> <img src="https://imgur.com/NQesapG.jpg" width="300"> </div> <div class="social">
   <ul class="social-icons"> <li><a href="#"><i class="fa fa-facebook"></i></a></li> <li><a href="#"><i class="fa fa-twitter"></i></a></li> <li><a href="#"><i class="fa fa-linkedin"></i></a></li> <li><a href="#"><i class="fa fa-instagram"></i></a></li> </ul> <ul class="terms"> <li><a href="#">Terms</a></li> <li><span class="dots"></span></li> <li><a href="#">Services</a></li> </ul> </div> </div> <div class="right-side">
    <div class="forms"> 
     <span style="color:red">${empty message ? '':message}</span>
    <div class="form-inputs"> 
    <input type="text" placeholder="Login" name="login"> <i class="fa fa-user"></i> 
    <input type="text"  name="connecter" hidden>
    </div> 
     <div class="form-inputs"> <input id="password_input" class="password-input" autocomplete='chrome-off' type="password" placeholder="Mot de passe" name="motdepasse"> <i class="fa fa-eye" id="password_eye"></i> 
     <p id="random_password" class="random_password"></p>
      </div> 
      <div class="submit-button"> <input type="submit" value="Se connecter" name="connecter"> 
      </div> </div> </div> </div> 
     </div>
</div>
 </form>











</body>
</html>