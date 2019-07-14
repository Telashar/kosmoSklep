<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" class="no-js">

<head>

        <link href="<c:url value="css/style.css"/>" rel="stylesheet">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Beauty Cosmetics</title>

        <!-- Bootstrap core CSS -->
        <link href="/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet'
              type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

        <!-- Custom styles for this template -->
        <link href="/css/style.css" rel="stylesheet">

</head>

<body id="page-top">

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
        <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="http://localhost:8080/#page-top">
                        <img src="/img/logo_transparent.png" alt="Beauty Wholesale" height="28px">
                </a>

                <%--        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"--%>
                <%--                data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"--%>
                <%--                aria-label="Toggle navigation">--%>
                <%--            Menu--%>
                <%--            <i class="fas fa-bars"></i>--%>
                <%--        </button>--%>

                <div class="collapse navbar-collapse" id="navbarResponsive">
                        <ul class="navbar-nav text-uppercase ml-auto">
                                <li class="nav-item">
                                        <a class="nav-link js-scroll-trigger" href="/">Main page</a>

                        </ul>
                </div>
        </div>
</nav>

<!-- Header -->


<!-- About us -->
<section id="about">
        <div class="container">
                <div class="row">
                        <form:form action="/user/edit/${user.id}" method="POST" modelAttribute="user">
                                First name: <form:input path="firstName"/> <br />
                                Last name: <form:input path="lastName"/> <br />
                                Email: <form:input path="email"/> <br />
                                Password: <form:input path="password"/> <br />
                                Address: <form:input path="streetAddress1"/> <br />
                                Address: <form:input path="streetAddress2"/> <br />
                                City: <form:input path="city"/> <br />
                                Postal Code: <form:input path="postalCode"/> <br />
                                State: <form:input path="state"/> <br />
                                Country: <form:input path="country"/> <br />
                                <form:hidden path="id" />
                                <input type="submit" value="Save"/>
                        </form:form>
                </div>
        </div>
        <div class="row">
                <div class="col-lg-6 text-justify">

                </div>
                <div class="side-img col-lg-6 d-lg-block ">
                        <picture>
                                <source srcset="/img/about.jpg" type="image/webp">
                                <source srcset="/img/about.jpg" type="image/jpeg">
                                <img src="/img/about.jpg">
                        </picture>
                </div>
        </div>
        </div>
</section>


<!-- Footer -->
<footer>
        <div class="container">
                <div class="row">
                        <div class="col-md-4">
                                <span class="copyright">Copyright &copy; Beauty Cosmetics 2019</span>
                        </div>
                        <div class="col-md-4">
                                <ul class="list-inline social-buttons">
                                        <!--<li class="list-inline-item">
                                            <a href="#">
                                                <i class="fab fa-twitter"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="#">
                                                <i class="fab fa-facebook-f"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="#">
                                                <i class="fab fa-linkedin-in"></i>
                                            </a>
                                        </li>-->
                                </ul>
                        </div>
                        <div class="col-md-4">
                                <ul class="list-inline quicklinks">
                                        <!--<li class="list-inline-item">
                                            <a href="#">Privacy Policy</a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="#">Terms of Use</a>
                                        </li>-->
                                </ul>
                        </div>
                </div>
        </div>
</footer>


<!-- Bootstrap core JavaScript -->
<script src="/bootstrap2/jquery.min.js"></script>
<script src="/bootstrap2/bootstrap.bundle.min.js"></script>

<!-- Plugin JavaScript -->
<script src="/bootstrap2/jquery.easing.min.js"></script>

</body>

</html>

