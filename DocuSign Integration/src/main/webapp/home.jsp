<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <title>My Home Page</title>
  <style>
  
  body {
  margin: 0;
  background-size: cover;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
}

.row {
  display: flex;
  justify-content: center;
  align-items: center;
}

/*.col {
    text-align: center;
  }*/
.col {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  margin-top: 60px;
  /* adjust the margin-top value to move the content down */
}



.buttons a {
  margin-right: 20px;
}

button:hover {
  background-color: #ff9800;
  color: #fff;
}

nav a:hover {
  color: #ff9800;
}


.background-slider {
  width: 100%;
  height: 100vh;
  position: relative;
  overflow: hidden;
}

.slider-image {
  width: 100%;
  height: 100%;
  position: absolute;
  top: 0;
  left: 0;
  opacity: 0;
  transition: opacity 2s ease-in-out;
}

.slider-image.active {
  opacity: 1;
}

.slider-image:first-child {
  opacity: 1;
}

.container {
  position: absolute;
  top: 0;
  left: 0;
}

.navbar {
  height: 12%;
  display: flex;
  align-items: center;
}

.logo {
  width: 50px;
  cursor: pointer;
}

.menu-icon {
  width: 30px;
  cursor: pointer;
  margin-right: 40px;
}

nav {
  flex: 1;
  text-align: left;
}

nav ul li {
  list-style: none;
  display: inline;
  margin-right: 60px;
}

nav ul li a {
  text-decoration: none;
  color: #fff;
  font-size: 13px;
}

.row {
  display: flex;
  height: 88%;
  align-items: center;

}

.col {
  flex-basis: 50%;
}

h1 {
  color: gold;
  font-size: 100px;
}

p {
  font-family: sans-serif;
  font-size: larger;
  color: slateblue;
  font-size: 13px;
  line-height: 15px;
}

button {
  width: 180px;
  color: #000;
  font-size: 12px;
  padding: 12px 0;
  background: #fff;
  border: 0;
  border-radius: 20px;
  outline: none;
  margin-top: 30px;

}

.header {
  position: absolute;
  top: 0;
  right: 0;
  padding: 10px;
  z-index: 1;
}

.buttons {
  display: flex;
  justify-content: space-between;
}

.login-button,
.register-button {
  padding: 10px;
  border: none;
  border-radius: 5px;
  background-color: #ccc;
  color: #000;
  cursor: pointer;
}

.login-button:hover,
.register-button:hover {
  background-color: orange;
  color: white;
}
  
  
  </style>
</head>

<body>
  <div class="background-slider">
    <img src="images/s1.jpg" class="slider-image">
    <img src="images/s2.jpg" class="slider-image">
    <img src="images/s3.jpg" class="slider-image">
    <img src="images/s4.jpg" class="slider-image">
    <img src="images/s5.jpg" class="slider-image">
  </div>
  <div class="container">
    <div class="navbar">
      <img src="images/logo.png" class="logo">
      <nav>
        <ul>
          <li><a href="">HOME</a></li>
          <li><a href="">REGION</a></li>
          <li><a href="">ABOUT</a></li>
        </ul>
      </nav>
      <!----- <img src="menu.png" class="menu-icon">--->
    </div>
    <div class="row">
      <div class="col">

      </div>
      <div class="col">
        <h1>Start Exploring</h1>
        <p>War is peace.
          Freedom is slavery.
          Ignorance is strength</p>
        <a href="explore.jsp"><button type="button">EXPLORE</button></a>
      </div>
    </div>
  </div>
  <div class="header">
    <div class="buttons">
      <a href="login.jsp" class="login-button">Login</a>
      <a href="registration.jsp" class="register-button">Register</a>
    </div>
  </div>
  <script>
    const images = [
      "slide1.jpg",
      "slide2.jpg",
      "slide3.jpg",
      "slide4.jpg",
      "slide5.jpg",
    ];
    const preloadImages = () => {
      for (let i = 0; i < images.length; i++) {
        const img = new Image();
        img.src = images[i];
      }
    };
    window.onload = preloadImages;
    const sliderImages = document.querySelectorAll(".slider-image");
    const intervalTime = 5000;
    let activeImage = 0;

    function changeImage() {
      sliderImages[activeImage].classList.remove("active");
      activeImage++;
      if (activeImage === sliderImages.length) {
        activeImage = 0;
      }
      sliderImages[activeImage].classList.add("active");
    }

    setInterval(changeImage, intervalTime);
  </script>
</body>

</html>