<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" class="no-js">

<head>

    <link href="<c:url value="style.css"/>" rel="stylesheet">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Beauty Cosmetics</title>

    <!-- Bootstrap core CSS -->
    <link href="bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="../../../resources/static/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet'
          type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="../../../resources/static/style.css" rel="stylesheet">

</head>

<body id="page-top">

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">
            <img src="../../../resources/static/img/logo_transparent.png" alt="Beauty Wholesale" height="28px">
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

<!-- Header -->
<header class="masthead">
    <div class="container">
        <div class="intro-text">
            <div class="intro-heading text-uppercase">Welcome to Beauty Cosmetics</div>
            <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#about">Tell Me More</a>
        </div>
    </div>
</header>

<!-- About us -->
<section id="about">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="section-heading text-uppercase">About us</h2>
                <h3 class="section-subheading text-muted"></h3>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 text-justify">
                At Beauty Cosmetics we are focused on building long term relationships with our clients that allow us to
                help them grow their companies. We can offer you the products of the most well-known brands. We supply
                large, medium and small companies in Europe. We are still open to cooperation
                with new
                trading
                partners. Our traders negotiate the most favorable conditions and are able to adapt the offer for
                individual requirements of customers.
            </div>
            <div class="side-img col-lg-6 d-lg-block ">
                <picture>
                    <source srcset="about.jpg" type="image/webp">
                    <source srcset="about.jpg" type="image/jpeg">
                    <img src="about.jpg">
                </picture>
            </div>
        </div>
    </div>
</section>

<!-- Our brands -->
<section id="brands">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="section-heading text-uppercase">Our Brands</h2>
                <h3 class="section-subheading text-muted"></h3>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <img class="img-fluid d-block mx-auto" src="../../../resources/static/img/brands/bjs.jpg"
                     alt="Bourjois">
            </div>
            <div class="col-md-3 col-sm-6">
                <img class="img-fluid d-block mx-auto" src="../../../resources/static/img/brands/maxfactor.jpg"
                     alt="MaxFactor">
            </div>
            <div class="col-md-3 col-sm-6">
                <img class="img-fluid d-block mx-auto" src="../../../resources/static/img/brands/revlon.jpg"
                     alt="Revlon">
            </div>
            <div class="col-md-3 col-sm-6">
                <img class="img-fluid d-block mx-auto" src="../../../resources/static/img/brands/rimmel.jpg"
                     alt="Rimmel">
            </div>
        </div>
    </div>
</section>

<!-- Services -->
<section id="cooperation">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="section-heading text-uppercase">Cooperation</h2>
                <h3 class="section-subheading text-muted"></h3>
            </div>
        </div>
        <div class="row text-center">
            <div class="col-md-3">
					<span class="fa-stack fa-4x">
						<i class="fas fa-circle fa-stack-2x text-primary"></i>
						<i class="fas fa-envelope fa-stack-1x fa-inverse"></i>
					</span>
                <h4 class="service-heading">Contact</h4>
                <p class="text-muted">Contact us with any questions</p>
            </div>
            <div class="col-md-3">
					<span class="fa-stack fa-4x">
						<i class="fas fa-circle fa-stack-2x text-primary"></i>
						<i class="fas fa-file-invoice-dollar fa-stack-1x fa-inverse"></i>
					</span>
                <h4 class="service-heading">Quotation</h4>
                <p class="text-muted">Get to know your offer and accept the pricing</p>
            </div>
            <div class="col-md-3">
					<span class="fa-stack fa-4x">
						<i class="fas fa-circle fa-stack-2x text-primary"></i>
						<i class="fas fa-money-bill fa-stack-1x fa-inverse"></i>
					</span>
                <h4 class="service-heading">Payment</h4>
                <p class="text-muted">Place purchase order and make the payment</p>
            </div>
            <div class="col-md-3">
					<span class="fa-stack fa-4x">
						<i class="fas fa-circle fa-stack-2x text-primary"></i>
						<i class="fas fa-truck fa-stack-1x fa-inverse"></i>
					</span>
                <h4 class="service-heading">Delivery</h4>
                <p class="text-muted">Delivery of your purchase</p>
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
<script src="../../../resources/static/vendor/jquery/jquery.min.js"></script>
<script src="../../../resources/static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Plugin JavaScript -->
<script src="../../../resources/static/vendor/jquery-easing/jquery.easing.min.js"></script>

</body>

</html>