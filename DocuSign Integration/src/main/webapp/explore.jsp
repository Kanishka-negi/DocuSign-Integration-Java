<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <title>Explore Page</title>
  <style>
  body {
  margin: 0;
  padding: 0;
  height: 100vh;
  width: 100vw;
  display: flex;
  align-items: center;
  justify-content: center;
  background-image: url("images/background.jpg");
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
  overflow: hidden;
}

.background-image {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-image: url('images/exp1.jpg');
  background-size: cover;
  background-position: center;
  z-index: -1;
}

.container h1 {
  color: black;
}

.container {
  max-width: 800px;
  width: 90%;
  height: 80%;
  /*background-color: paleturquoise;*/
  border-radius: 20px;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  text-align: center;
  padding: 20px;
  box-sizing: border-box;
}

h2 {
  font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
  font-size: 120px;
  margin-bottom: 50px;
  color: transparent;
  -webkit-text-stroke: 1px #fff;
  background: url(back.png);
  -webkit-background-clip: text;
  background-position: 0 0;
  background-size: 100% auto;
  -webkit-animation: back 20s linear infinite;
  animation: back 20s linear infinite;
}

@-webkit-keyframes back {
  100% {
    background-position: 2000 0;
  }
}

@keyframes back {
  100% {
    background-position: 2000px 0;
  }
}


.row {
  display: flex;
  justify-content: center;
  margin-bottom: 50px;
}

.col {
  width: 300px;
  margin-right: 50px;
}

h2 {
  font-size: 32px;
  margin-bottom: 20px;
}

p {
  color: powderblue;
  font-size: 16px;
  line-height: 24px;
  margin-bottom: 30px;
}

button {
  background-color: black;
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  font-size: 16px;
  cursor: pointer;
}

button:hover {
  background-color: #ff9800;
  color: #fff;
}
  
  
  </style>
</head>

<body>
  <div class="background-image"></div>
  <div class="container">
    <h2>Explore our Services</h2>
    <div class="row">
      <div class="col">
        <h2>Create</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut eu orci metus. Vivamus at nisl vel nulla commodo
          vulputate.</p>
        <!--<button onclick="location.href='create.html'">Go to Create Page</button>-->
        <button
          onclick="location.href='login.jsp'"
          style="outline: none;">Go to Create Page</button>

      </div>
      <div class="col">
        <h2>Convert</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut eu orci metus. Vivamus at nisl vel nulla commodo
          vulputate.</p>
        <button onclick="location.href='login.jsp'">Go to Convert Page</button>
      </div>
    </div>
    <div class="row">
      <div class="col">
        <h2>Upload</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut eu orci metus. Vivamus at nisl vel nulla commodo
          vulputate.</p>
        <button onclick="location.href='login.jsp'">Go to Upload Page</button>
      </div>
      <div class="col">
        <h2>DocSign</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut eu orci metus. Vivamus at nisl vel nulla commodo
          vulputate.</p>
        <button onclick="location.href='login.jsp'">Go to DocSign Page</button>
      </div>
    </div>
  </div>
</body>

</html>    