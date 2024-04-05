<!DOCTYPE html>
<html lang="en">

<head>
     
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="theme-color" content="#06aa5e">
    <meta name="msapplication-navbutton-color" content="#06aa5e">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <title>Sign up </title>
    <link rel="shortcut icon" href="assets/images/favicon.png" type="image/x-icon">
    <link rel="stylesheet" href="assets/css/styles.css">
     <!--   <script src="assets/js/script.js" defer></script> -->
  
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> 
     <link rel="stylesheet" href="alert/dist/sweetalert.css">
	
   
</head>

<body>

<input type ="hidden" id ="status" value ="<%=request.getAttribute("status")%>">
<form action="register" method="post" class="register-form"
							id="register-form">
    <main class="card-container slideUp-animation">
        <div class="image-container">
            <h1 class="company">Onlydocs <sup>&trade;</sup></h1>
            <img src="assets/images/signUp.svg" class="illustration" alt="">
            <p class="quote">Sign up today to get exciting features..!</p>
             <a href="#btm" class="mobile-btm-nav">
              <!--    <img src="assets/images/dbl-arrow.png" alt=""> -->
            </a>
        </div>
       <!---  <form action="register" method="post" class="register-form"	id="register-form"> -->
            <div class="form-container slideRight-animation">
        

                <h1 class="form-header">
                    Get started
                </h1>
                
                    <label for="name"></label>

                <div class="input-container">
               
                    <input type="text" name="name" id="name" required>
                    <span>
                         Name
                    </span>
                    <div class="error"></div>
                </div>


                <div class="input-container">
                    <label for="mail">
                    </label>
                    <input type="email" name="email" id="email" required>
                    <span>
                        E-mail
                    </span>
                    <div class="error"></div>
                </div>

                <div class="input-container">
                    <label for="phone">
                    </label>
                    <input type="text" name="contact" id="contact" required>
                    <span>Phone</span>
                    <div class="error"></div>
                </div>

                <div class="input-container">
                    <label for="user-password"></label>
                    <input type="password" name="pass" id="pass" class="user-password" required>
                    <span>Password</span>
                    <div class="error"></div> 
                </div>

                <div class="input-container">
                    <label for="user-password-confirm"></label>
                    <input type="password" name="re_pass" id="re_pass"
                        class="password-confirmation"required>
                    <span>
                        Confirm Password
                    </span>
                  <div class="error"></div> 
                </div>

                <div id="btm">
                    <button type="submit" class="submit-btn">Create Account</button>
                    
                   
                    <p class="btm-text">
                        Already have an account..? <span class="btm-text-highlighted"> <a href =login.jsp>Log in</a></span>
                   
                    </p>
                </div>
               
            </div>
    </main>



</form>
 
   
    
    <script type="text/javascript">
	  
	var status = document.getElementById("status").value;
	
	if(status == "success"){
		swal("Congrats!", "Account Created Successfully!", "success");
	}
	if(status ==  "invalidName"){
		swal("sorry","Please Enter Name","error");
	}
	if(status == "invalidEmail"){
		swal("sorry","Please Enter Email","error");
	}
	if(status == "invalidUpwd"){
		swal("sorry","Please Enter Password","error");
	}
	if(status == "invalidUpwdLength"){
		swal("sorry","password must have more than 8 letters","error");
	}
	if(status == "invalidConfirm Password"){
		swal("sorry","Password do not Match","error");
	}
	if(status == "invalidMobile"){
		swal("sorry","Please Enter Mobile","error");
	}
	if(status == "invalidMobileLength"){
		swal("sorry","length of mobile number is wrong","error");
	}
	</script>
    
</body>

</html>