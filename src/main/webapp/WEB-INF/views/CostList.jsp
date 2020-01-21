<%--
  Created by IntelliJ IDEA.
  User: zumek1
  Date: 03.11.19
  Time: 21:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<title>Title</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
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
        <div class="w3-right w3-hide-small">
            <a href="/Start" class="w3-bar-item w3-button"><i class="fa fa-home"></i> Start</a>
            <a href="/Budzet" class="w3-bar-item w3-button"><i class="fa fa-th"></i>Budzet</a>
            <a href="/CostList" class="w3-bar-item w3-button"><i class="fa fa-th"></i> Lista kosztow</a>
            <a href="#pricing" class="w3-bar-item w3-button"><i class="fa fa-th"></i> Ankiety</a>
            <a href="#contact" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i> 6</a>
            <a href="http://localhost:8081/" class="w3-bar-item w3-button"><i class="fa fa-shopping-basket"></i> Sklepik Polfy</a>
        </div>
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
    <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button">Mój program</a>
    <a href="#team" onclick="w3_close()" class="w3-bar-item w3-button">Biblioteka</a>
    <a href="#work" onclick="w3_close()" class="w3-bar-item w3-button">Szkolenia</a>
    <a href="#pricing" onclick="w3_close()" class="w3-bar-item w3-button">Ankiety</a>
    <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button">FAQ</a>
    <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button">Pomoc</a>
</nav>

<!-- Header with full-height image -->

<div class="w3-container" style="padding:128px 16px" id="team">
    <div class="w3-container w3-light-grey">
        <a href="/Budzet">
            <button type="button" class="btn btn-warning btn-lg"><-Back</button>
        </a>

    </div>
    <br>
    <!-- !PAGE CONTENT! -->
    <div class="card-group l3 m6">
        <%--<c:forEach items="${materials}" var="material">--%>
            <%--<a href="${material.link}">--%>
                <%--<div class="card">--%>
                    <%--<img src="/resources/images/zinadermin.PNG" class="card-img-top" style="width: 30%" alt="...">--%>
                    <%--<div class="card-body">--%>
                        <%--<h5 class="card-title">${material.line.lineName}</h5>--%>
                        <%--<h3 class="card-title">${material.name}</h3>--%>
                        <%--<p class="card-text">--%>
                            <%--<small class="text-muted">Last updated 2019-10-22</small>--%>
                        <%--</p>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</a>--%>
        <%--</c:forEach>--%>

    </div>


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
    // Modal Image Gallery
    function onClick(element) {
        document.getElementById("img01").src = element.src;
        document.getElementById("modal01").style.display = "block";
        var captionText = document.getElementById("caption");
        captionText.innerHTML = element.alt;
    }


    // Toggle between showing and hiding the sidebar when clicking the menu icon
    var mySidebar = document.getElementById("mySidebar");

    function w3_open() {
        if (mySidebar.style.display === 'block') {
            mySidebar.style.display = 'none';
        } else {
            mySidebar.style.display = 'block';
        }
    }

    // Close the sidebar with the close button
    function w3_close() {
        mySidebar.style.display = "none";
    }
</script>

</body>

</html>
