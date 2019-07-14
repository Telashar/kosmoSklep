<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
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
                    <a class="nav-link js-scroll-trigger" href="http://localhost:8080/#about">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="http://localhost:8080/#brands">Our Brands</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="/product/list">Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="/user/create">Sign up</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="/login">Log in</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="/logout">Log out</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- Header -->
<header class="masthead">
    <div class="container">
        <div class="intro-text">
            <body>
            <h2>Product</h2>


            <c:if test="${empty products}">
                <h3>Sorry, no records found... :(</h3>
            </c:if>


            <c:forEach items="${products}" var="product">
                Name: ${product.name} <br/>
                Price: ${product.price} <br/>
                Description: ${product.description} <br/>
                Available: ${product.available} <br/>

                <a href="/product/edit/${product.id}">Edit</a>
                <a href="/product/delete/${product.id}">Delete</a>
                <a href="/add/${product.id}">Buy</a>
                <br/><br/><br/>
            </c:forEach>
            <a href="/product/create">Create</a>
            <a href="/viewkoszyk">Koszyk</a>
            <a href="/">Return to Main Page</a>
            </body>
        </div>
    </div>
</header>
</head>

</html>
