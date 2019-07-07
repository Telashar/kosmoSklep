    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">
        <head>
        <meta charset="UTF-8">
        <title>User</title>
        <!-- Favicon -->
        <link rel="apple-touch-icon" sizes="57x57" href="/favicon/apple-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="60x60" href="/favicon/apple-icon-60x60.png">
        <link rel="apple-touch-icon" sizes="72x72" href="/favicon/apple-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="76x76" href="/favicon/apple-icon-76x76.png">
        <link rel="apple-touch-icon" sizes="114x114" href="/favicon/apple-icon-114x114.png">
        <link rel="apple-touch-icon" sizes="120x120" href="/favicon/apple-icon-120x120.png">
        <link rel="apple-touch-icon" sizes="144x144" href="/favicon/apple-icon-144x144.png">
        <link rel="apple-touch-icon" sizes="152x152" href="/favicon/apple-icon-152x152.png">
        <link rel="apple-touch-icon" sizes="180x180" href="/favicon/apple-icon-180x180.png">
        <link rel="icon" type="image/png" sizes="192x192"  href="/favicon/android-icon-192x192.png">
        <link rel="icon" type="image/png" sizes="32x32" href="/favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="96x96" href="/favicon/favicon-96x96.png">
        <link rel="icon" type="image/png" sizes="16x16" href="/favicon/favicon-16x16.png">
        <link rel="manifest" href="/manifest.json">
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="msapplication-TileImage" content="/favicon/ms-icon-144x144.png">
        <meta name="theme-color" content="#ffffff">

        </head>

        <body id="page-top">

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
        <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">
        <img src="img/logo_transparent.png" alt="Beauty Wholesale" height="28px">
        </a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
        data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
        aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav text-uppercase ml-auto">
        <li class="nav-item">
        <a class="nav-link js-scroll-trigger" href="#about">About</a>
        </li>
        <li class="nav-item">
        <a class="nav-link js-scroll-trigger" href="#brands">Our Brands</a>
        </li>
        <li class="nav-item">
        <a class="nav-link js-scroll-trigger" href="/user/create">Registration</a>
        </li>
        <li class="nav-item">
        <a class="nav-link js-scroll-trigger" href="/product/list">Products</a>
        </li>
        </ul>
        </div>
        </div>
        </nav>

        </head>
        <body>
        <h2>User</h2>


<%--        <c:if test="${empty users}">--%>
<%--            <h3>Sorry, no records found... :(</h3>--%>
<%--        </c:if>--%>

        <c:if test="${empty users}">
            <h3>Sorry, no records found... :(</h3>
        </c:if>

        <c:forEach items="${users}" var="user">
            First name: ${user.firstName} <br/>
            Last name: ${user.lastName} <br/>
            Email: ${user.email} <br/>
            Password: ${user.password} <br/>
            Address line 1: ${user.streetAddress1} <br/>
            Address line 2: ${user.streetAddress2} <br/>
            City: ${user.city} <br/>
            Postal Code: ${user.postalCode} <br/>
            State: ${user.state} <br/>
            Country: ${user.country} <br/>
            <a href="/user/edit/${user.id}">Edit</a>
            <a href="/user/delete/${user.id}">Delete</a>
            <br/><br/><br/>
        </c:forEach>
        </body>
        </html>