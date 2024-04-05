<%

if(session.getAttribute("name")==null){
	response.sendRedirect("login.jsp");
}
%>




		
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body,
        html {
            cursor: url(http://bringerp.free.fr/Files/RotMG/cursor.gif), pointer;
            height: 100%;
        }

        html,
        body {
            margin: 0;
            padding: 0;
        }

        .section {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }


        .container {
            position: relative;
            width: 1170px;
            margin: 0 auto;
            color: #444;
            font-size: 14px;
            font-weight: 300;
            font-family: Roboto, 'Open Sans', Arial, sans-serif;
            overflow: hidden;
        }

        .section .container {
            padding: 30px 0 50px 0;
        }

        .hold {
            height: 80px;
        }

        .header {
            line-height: 80px;
            width: 100%;
            transition: line-height 0.2s linear, box-shadow 0.3s linear;
            z-index: 100;
            background: skyblue;
        }

        .header.small {
            line-height: 50px;
            box-shadow: 0px 1px 3px 0px rgba(50, 50, 50, 0.8);
        }

        .header.small>.container>#logo {
            height: 40px;
        }


        #logo {
            float: left;
            display: inline-block;
            margin-left: 0px;
            padding-left: 50px;
            text-align: left;
        }

        .nav {
            position: absolute;
            top: 0;
            right: 0;
        }




        ul.nav {
            float: right;
            list-style: none;
            margin: 0;
            padding: 0;
        }

        ul.nav li {
            float: left;
            position: relative;
        }

        ul.nav li a {
            transition: color 0.2s linear;
            font-size: 18px;
        }

        ul.nav li:hover a {
            color: red;
        }

        ul.nav li a {
            padding: 21px;
            color: initial;
            text-decoration: initial;
        }

        bnv .slidercontent {
            text-align: center;
        }

        .hero {
            font-family: 'Roboto Slab', sans-serif;
            color: white;
            font-weight: normal;
            letter-spacing: 1px;
        }

        h1.hero {
            font-size: 54px;
        }

        h2.hero {
            font-size: 30px;
            margin-bottom: 60px;
        }

        h1.hero:after {
            content: "";
            width: 300px;
            position: relative;
            border-bottom: 1px solid #aaa;
            text-align: center;
            margin: auto;
            margin-top: 15px;
        }

        .call {
            color: white;
            display: block;
            margin-bottom: 20px;
        }

        .call span {
            display: inline;
            border: 1px solid white;
            padding: 8px 13px;
            font-size: 20px;
            transition: background 0.15s linear;
        }

        .call span:hover {
            background: rgba(255, 255, 255, 0.1);
            cursor: pointer;
        }

        .col {
            float: left;
            padding: 0;
            margin: 0;
            position: relative;
        }

        .col.four {
            width: 23%;
            margin: 0 1%;
        }

        .col.three {
            width: 31.3%;
            margin: 0 1%;
        }

        .col.two {
            width: 40%;
            margin: 0 2.5%;
            padding: 0 2.5%;
        }

        .col.extrapad {
            padding-top: 20px;
            padding-bottom: 20px;
        }

        .col .service,
        .col .feature {
            font-size: 21px;
            font-weight: 300;
            font-family: 'Roboto Slab', sans-serif;
        }

        .col .service:after {
            content: "";
            width: 50px;
            position: relative;
            border-bottom: 1px solid #eee;
            display: block;
            text-align: center;
            margin: auto;
            margin-top: 15px;
        }

        .col .feature {
            font-size: 19px;
        }

        .col h1.side,
        .col p.side,
        .col span.side:first-of-type {
            margin-left: 50px;
            text-align: left;
        }

        .col .icon {
            border-radius: 50%;
            height: 85px;
            width: 85px;
            line-height: 85px;
            text-align: center;
            margin: 0 auto;
            transition: background 0.25s linear, color 0.25s linear;
        }

        .col .icon.side {
            position: absolute;
            padding: 0;
            margin: 0;
            top: -15px;
            height: 50px;
            width: 50px;
        }

        .col:hover>.icon {
            background: #F44336;
            color: grey;
        }

        .col:hover>.icon.side {
            background: initial;
            color: initial;
        }

        .responsivegroup {
            display: none;
        }

        .col p,
        .col h1 {
            padding: 0 1%;
            text-align: center;
        }

        .group.margin {
            margin-bottom: 20px;
        }

        .col .imgholder {
            height: 300px;
            width: 100%;
            background: #333;
            transition: background 0.3s linear;
        }

        .col.bg {
            background: #FFF;
        }

        .col.pointer {
            cursor: pointer;
        }

        .col.bg:hover .imgholder {
            background: #555;
        }

        .col span.feature {
            font-size: 20px;
        }

        .container>h1:not(.hero) {
            margin-bottom: 30px;
            text-align: center;
        }

        .container>h1:after {
            content: "";
            width: 30px;
            position: relative;
            border-bottom: 1px solid #aaa;
            display: block;
            text-align: center;
            margin: auto;
            margin-top: 15px;
        }

        h2 {
            font-family: 'Roboto Slab', sans-serif;
            text-align: center;
            font-weight: 400;
            font-size: 18px;
        }

        .left,
        .left>h1,
        .left>p {
            text-align: left;
        }

        .reset {
            text-align: left !important;
        }

        .reset:after {
            display: none !important;
        }

        .white h1,
        .white h2,
        .white p,
        .white div,
        .white a {
            color: #fff;
        }

        .group:after {
            content: "";
            display: table;
            clear: both;
        }

        @media all and (max-width: 768px) {
            .container {
                width: 95%;
            }

            .col.four {
                width: 48%;
                margin: 1%;
            }

            .col.three {
                display: block;
                width: 95%;
                padding: 0;
                margin: 0 auto;
                float: none;
            }

            .header {
                height: auto;
                background: #eee;
            }

            #logo {
                display: inline-block;
                margin-left: 0;
                text-align: left;


            }

            ul.nav {
                float: none;
                display: block;
                text-align: center;
                margin: 0 auto;
            }

            ul.nav li {
                float: initial;
                display: inline-block;
            }

            .responsivegroup {
                display: block;
            }

            .responsivegroup:after {
                content: "";
                display: table;
                clear: both;
            }
        }

        @media all and (min-width: 768px) {
            .container {
                width: 750px;
            }
        }

        @media all and (min-width: 992px) {
            .container {
                width: 970px;
            }
        }

        @media all and (min-width: 1200px) {
            .container {
                width: 1170px;
            }
        }

        @media all and (max-width:450px) {

            .col,
            .col.four,
            .col.three,
            .col.two {
                display: block;
                width: 95%;
                padding: 0;
                margin: 0 auto;
                float: none;
            }

            .col.extrapad {
                padding: 1%;
                margin-bottom: 10px;
            }

            .group {
                display: none;
            }
        }

        html,
        body {
            width: 100%;
            height: 100%;
            margin: 0;
            padding: 0;
            overflow: hidden;
        }

        body {
            background: linear-gradient(270deg, #ff6b6b, #72a8ff, #f9f9f9);
            background-size: 600% 600%;
            -webkit-animation: Gradient 45s ease infinite;
            -moz-animation: Gradient 45s ease infinite;
            animation: Gradient 45s ease infinite;
        }


        @-webkit-keyframes Gradient {
            0% {
                background-position: 0% 50%
            }

            50% {
                background-position: 100% 50%
            }

            100% {
                background-position: 0% 50%
            }
        }

        @-moz-keyframes Gradient {
            0% {
                background-position: 0% 50%
            }

            50% {
                background-position: 100% 50%
            }

            100% {
                background-position: 0% 50%
            }
        }

        @keyframes Gradient {
            0% {
                background-position: 0% 50%
            }

            50% {
                background-position: 100% 50%
            }

            100% {
                background-position: 0% 50%
            }
        }
    </style>
    <script>
        window.onscroll = function () {
            var el = document.getElementsByClassName('header')[0];
            var className = 'small';
            if (el.classList) {
                if (window.scrollY > 10)
                    el.classList.add(className);
                else
                    el.classList.remove(className);
            }
        };
        $("#kev").click(function () {
            $("#demo").text();
        });


    </script>
</head>

<body>
    <div class="hold">
        <div class="header">
            <div class="container">
                <font size="6">
                    <div style="text-align: left;">
                        <div id="logo">
                            <center><strong>CREDEX</strong></center>
                            <font size="6">
                        </div>
                    </div>
                    <ul class="nav">
                        <li><a href=script4.jsp>Create</a></li>
                        <li><a href=SentDocument.jsp>show</a></li>

                        <li><a href=myform.jsp>Convert</a></li>
                        <li><a href="SenderPage.html">Send</a></li>
                        <li><a href=profile.jsp>Profile</a></li>
                        <li><a href="Logout">LOG OUT</a></li>
                    </ul>
            </div>
        </div>

        <div class="contentcontainer med " style="margin-top: 125px;">
            <div class="contentcontainer med left" style="margin-left: -107px;">
                <div class="contentcontainer med left" style="margin-left: 250px;">

                    <font size="4">
                        <form action="/html/tags/html_form_tag_action.cfm" method="post">

                            </ul>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="slider">
                <div class="container slidercontent">
                    <h1 class="hero">
                        <font color="#110101">
                            <center> OnlyDocs</center>
                    </h1>
                    </font>
                    <h2 class="hero">
                        <font color="#110101">
                            <p>
                                <font face="Fujima Bold">"Show me a family of readers, and I will show you the people
                                    who move the world."
                    </h2>
                    </font>
                    <center>
                        <h3 class="hero">
                            <font color="#110101">
                        </h3>
                    </center>
                    </font>

</body>

</html>