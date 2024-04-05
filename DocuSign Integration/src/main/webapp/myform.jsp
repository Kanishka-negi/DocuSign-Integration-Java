<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
       <html>

<head>
    <link href='https://fonts.googleapis.com/css?family=Rajdhani|Pacifico' rel='stylesheet' type='text/css' />
    <style>
        body {
            overflow-y: hidden;
            background-image: url('images/convert.jpg');
            background-repeat: no-repeat;
            background-size: cover;
        }

        img {
            filter: brightness(10%);
        }

        .title {
            margin: 0 auto;
            width: 50%;
            text-align: center;
            padding-bottom: 10px;
            font-family: Rajdhani;
            font-size: 32px;
            color: blue;
        }

        .wrapper {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  width: 50%;
  height: 50%;
  margin: 5% auto 0 auto;
}
        .font {
            font-size: 16px;
            font-family: Helvetica, sans-serif;
            color: black;
        }

        .form {
            text-align: center;
            -webkit-animation: bounce 1.5s infinite;
            -moz-animation: bounce 1.5s infinite;
            animation: bounce 1.5s infinite;
        }

        .shadow {
            box-shadow: 0px 0px 20px 5px #AAA;
            opacity: 0.5;
            border-radius: 100px;
            width: 45%;
            margin: 40px auto 0 auto;
            padding: 0 10px;
            -webkit-animation: shadow 1.5s infinite;
        }

        .field-in {
            display: block;
            margin: 10px auto;
            padding: 10px;
            border-radius: 5px;
            border: none;
            width: 50%;
            -webkit-transition: all 0.5s ease 0s;
            -moz-transition: all 0.5s ease 0s;
            transition: all 0.5s ease 0s;
        }

        .name {
            background-color: #EE78D1;
            border-bottom: 5px solid #CB64B2;
        }

        .name:hover {
            background-color: #DF1B76;
            border-bottom: 5px solid #B2175F;
        }

        .name:focus,
        .email:focus,
        .message:focus {
            outline: none;
            padding: 15px;
        }

        .email {
            background-color: #7239C1;
            border-bottom: 5px solid #502789;
        }

        .email:hover {
            background-color: #446eac;
            border-bottom: 5px solid #18108E;
        }

        .message {
            background-color: #0F9BE6;
            border-bottom: 5px solid #1185C3;
            overflow: hidden;
            height: 50px;
        }

        .message:hover {
            background-color: #2DD7BB;
            border-bottom: 5px solid #2BB09A;
            height: 150px;
        }

        .submit {
        align: center;
            border-radius: 5px;
            padding: 10px;
            background-color: #EE78D1;
            border: none;
            border-bottom: 5px solid #CB64B2;
            -webkit-transition: all 0.5s ease 0s;
            -moz-transition: all 0.5s ease 0s;
            transition: all 0.5s ease 0s;
        }

        .submit:hover {
            -webkit-transform: translate(0, 4px);
            border-bottom: 2px solid #CB64B2;
            box-shadow: inset 0px 0px 10px 10px #CF5DB2;
            cursor: pointer;
        }

        ::-webkit-input-placeholder {
            color: white;
        }

        :-moz-placeholder {
            color: white;
        }

        ::-moz-placeholder {
            color: white;
        }

        :-ms-input-placeholder {
            color: white;
        }

        @-webkit-keyframes bounce {
            0% {}

            50% {
                -webkit-transform: translate(0, 8px);
            }
        }

        @-moz-keyframes bounce {
            0% {}

            50% {
                -moz-transform: translate(0, 8px);
            }
        }

        @keyframes bounce {
            0% {}

            50% {
                transform: translate(0, 8px);
            }
        }

        @-webkit-keyframes shadow {
            0% {}

            50% {
                opacity: 0.8;
                width: 50%;
            }
        }

        @-moz-keyframes shadow {
            0% {}

            50% {
                opacity: 0.8;
                width: 50%;
            }
        }

        @keyframes shadow {
            0% {}

            50% {
                opacity: 0.8;
                width: 50%;
            }
        }
    </style>
</head>

<body>
<form action="MyServlet" method="post">
    <div class="wrapper">
        <div class="title">
            Convert
        </div>
       
            <textarea class="message field-in font" placeholder="Paste link here" name="CallURL" ></textarea>
              <button class="submit font" >Submit</button> 
         


    </div>
  </form>
</body>

</html>