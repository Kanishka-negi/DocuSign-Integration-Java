<!DOCTYPE html>
<html>

<head>
    <title>LOGIN FORM</title>
    <link rel="stylesheet" type="text/css" href="css/styleoflogin.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a81368914c.js"></script>
    <link rel="icon" href="https://www.flaticon.com/premium-icon/icons/svg/1058/1058927.svg">
</head>

<body>
<input type ="hidden" id ="status" value ="<%=request.getAttribute("status")%>">

    <img class="wave" src="images/wave.png">
    <div class="container">
        <div class="img">
            <img src="images/bg.svg">
        </div>
        <div class="login-content">
     
            <form method="post" action="login" class="register-form"
							id="login-form">
                <img src="images/avatar.svg">
                <h2 class="title">Welcome</h2>
                <div class="input-div one">
                    <div class="i">
                        <i class="fas fa-user"></i>
                    </div>
                    <div class="div">
                        <h5>USERNAME</h5>
                        <input type="text" class="input" name="username" id="username">
                    </div>
                </div>
                <div class="input-div pass">
                    <div class="i">
                        <i class="fas fa-lock"></i>
                    </div>
                    <div class="div">
                        <h5>PASSWORD</h5>
                        <input type="password" class="input" name="password" id="password">
                    </div>
                </div>
                <div class="form-group">
								<a href= "forgotPassword.jsp"> Forgot Password?</a>
							</div>
                <input type="submit" class="btn" value="Login">
                <a href=registration.jsp><input type="button" class="btn" value="Register"></a>
            </form>
        </div>
    </div>
    <script type="text/javascript" src="js/mainoflogin.js"></script>
     <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> 
     <link rel="stylesheet" href="alert/dist/sweetalert.css">
    <script type =text/javascript>
       var status = document.getElementById("status").value;
	
	if(status ==  "failed"){
		swal("sorry","wrong username or password","error");
	}
	if(status ==  "invalidEmail"){
		swal("sorry","enter username","error");
	}
	if(status ==  "invalidUpwd"){
		swal("sorry","please enter password","error");
	}
	if(status ==  "resetSuccess"){
		swal("congrats","password updated","success");
	}
	if(status ==  "resetFailed"){
		swal("sorry","Password set failed","error");
	}
	
	</script>
</body>

</html>