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
        input:form-control;
        width: auto;

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
    <header>Doadawanie wydatkow</header>
    <div class="card text-black bg-succes mb-3" style="max-width: 18rem;">
        <div class="card-header">
            Budżet
        </div>
        <div class="card-body text-black">
            ${user.budget} PLN
        </div>
    </div>

    <div class="table-responsive">


            <table id="dtBasic" class="table">
                <thead>
                <tr>
                    <th>Wpisz rodaj wydatku</th>
                    <th>Komentarz</th>
                    <th>Wartość z faktury</th>
                    <th style="width: 5%">Actions</th>
                </tr>
                </thead>


                    <form:form method="post" modelAttribute="costs">
                        <tr>

                            <td><form:input typ="text" path="status"/></td>
                            <td><form:input typ="text" path="comment"/></td>
                            <td><form:input name="my_field" pattern="^\d*(\.\d{0,2})?$" path="totalAmount"/></td>
                            <td>
                                <input type="submit" class="btn btn-success" data-toggle="modal"
                                       data-target="#exampleModal" value="Zatwierdz koszt"/>
                            </td>
                        </tr>
                    </form:form>

            </table>

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

<script>
    $(document).on('keydown', 'input[pattern]', function(e){
        var input = $(this);
        var oldVal = input.val();
        var regex = new RegExp(input.attr('pattern'), 'g');

        setTimeout(function(){
            var newVal = input.val();
            if(!regex.test(newVal)){
                input.val(oldVal);
            }
        }, 0);
    });

</script>

</body>
</html>
