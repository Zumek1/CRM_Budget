<%--
  Created by IntelliJ IDEA.
  User: zumek1
  Date: 25.10.19
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    body, h1, h2, h3, h4, h5, h6 {
        font-family: "Raleway", sans-serif
    }

    body, html {
        height: 100%;
        line-height: 1.8;
    }

    /* Full height image header */
    .bgimg-1 {
        background-position: center;
        background-size: cover;
        background-image: url("/w3images/mac.jpg");
        min-height: 100%;
    }

    .w3-bar .w3-button {
        padding: 16px;
    }
</style>
<body>

<!-- Navbar (sit on top) -->
<div class="w3-top">
    <div class="w3-bar w3-white w3-card" id="myNavbar">
        <a href="http://www.polfa-tarchomin.com.pl/" class="w3-bar-item w3-button w3-wide">
            <img class="polfaImage" src="http://www.polfa-tarchomin.com.pl/wp-content/uploads/2018/07/logo.png"
                 alt="Polfa Tarchomin">
        </a>
        <!-- Right-sided navbar links -->

        <!-- Hide right-floated links on small screens and replace them with a menu icon -->

        <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium"
           onclick="w3_open()">
            <i class="fa fa-bars"></i>
        </a>

    </div>


</div>


<!-- Sidebar on small screens when clicking the menu icon -->
<nav class="w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large" style="display:none"
     id="mySidebar">
    <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a>
    <a href="file:///C:/Users/000518/Desktop/test%20html/Akademia%20polfa/Akademia_Start.html" onclick="w3_close()"
       class="w3-bar-item w3-button">Start</a>
    <a href="file:///C:/Users/000518/Desktop/test%20html/Akademia%20polfa/Akademia_Biblioteka.html" onclick="w3_close()"
       class="w3-bar-item w3-button">Biblioteka</a>
    <a href="#work" onclick="w3_close()" class="w3-bar-item w3-button">Szkolenia</a>
    <a href="#pricing" onclick="w3_close()" class="w3-bar-item w3-button">Ankiety</a>
    <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button">FAQ</a>
    <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button">Pomoc</a>
</nav>


<!-- Team Section -->
<div class="w3-container" style="padding:128px 16px" id="team">
    <h2 class="w3-center">Witaj ${user.firstName} ${user.lastName}</h2>
    <h3 class="w3-center">Aktualne Wyniki Sprzedażowe</h3>
    <p class="w3-center w3-large">Stan na ${user.dateOfIMS}</p>

        <div class="w3-row-padding" style="margin-top:64px">

            <div class="w3-col l3 m6 w3-margin-bottom">
                <div class="w3-card w3-center">
                    <img class="w3-center" src="/resources/images/Antybiotyki.PNG" style="width:30%">
                    <div class="w3-container">
                        <h3>Antybiotyki</h3>
                        <p class="w3-opacity">${user.koszykAntybiotyki} PLN</p>
                        <p>Realizacja celu: 30%</p>
                    </div>
                </div>
            </div>
            <div class="w3-col l3 m6 w3-margin-bottom">
                <div class="w3-card w3-center">
                    <img class="w3-center" src="/resources/images/CNS.PNG" style="width:30%">
                    <div class="w3-container">
                        <h3>CNS</h3>
                        <p class="w3-opacity">${user.koszykCNS} PLN</p>
                        <p>Realizacja celu: 22%</p>
                    </div>
                </div>
            </div>
            <div class="w3-col l3 m6 w3-margin-bottom">
                <div class="w3-card w3-center">
                    <img class="w3-center" src="/resources/images/Derma.PNG" style="width:30%">
                    <div class="w3-container">
                        <h3>Dermatologia</h3>
                        <p class="w3-opacity">${user.koszykDerma} PLN</p>
                        <p>Realizacja celu: 10%</p>
                    </div>
                </div>
            </div>
            <div class="w3-col l3 m6 w3-margin-bottom">
                <div class="w3-card w3-center">
                    <img class="w3-center" src="/resources/images/OTC.PNG" style="width:30%">
                    <div class="w3-container">
                        <h3>OTC</h3>
                        <p class="w3-opacity">${user.koszykOTC} PLN</p>
                        <p>Realizacja celu: 10%</p>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <h2 class="w3-center">Koszyki Łącznie:</h2>
        <h3 class="w3-center">33% Planu</h3>
</div>


<!-- Footer -->
<footer class="w3-center w3-black w3-padding-64">
    <a href="#myNavbar" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
    <div class="w3-xlarge w3-section">
        <i class="fa fa-facebook-official w3-hover-opacity"></i>
        <i class="fa fa-instagram w3-hover-opacity"></i>
        <i class="fa fa-snapchat w3-hover-opacity"></i>
        <i class="fa fa-pinterest-p w3-hover-opacity"></i>
        <i class="fa fa-twitter w3-hover-opacity"></i>
        <i class="fa fa-linkedin w3-hover-opacity"></i>
    </div>
    <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank"
                     class="w3-hover-text-green">Robert Bartosiak</a></p>
</footer>

<script>

    function onClick(element) {
        document.getElementById("img01").src = element.src;
        document.getElementById("modal01").style.display = "block";
        var captionText = document.getElementById("caption");
        captionText.innerHTML = element.alt;
    }


    var mySidebar = document.getElementById("mySidebar");

    function w3_open() {
        if (mySidebar.style.display === 'block') {
            mySidebar.style.display = 'none';
        } else {
            mySidebar.style.display = 'block';
        }
    }

    function w3_close() {
        mySidebar.style.display = "none";
    }
</script>

</body>
</html>
