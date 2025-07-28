
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
    <!-- Meta Tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="Site keywords here">
    <meta name="description" content="#">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Site Title -->
    <title>Sherah - HTML eCommerce Dashboard Template</title>

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;0,900;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">

    <!-- Fav Icon -->
    <link rel="icon" href="img/favicon.png">

    <!-- sherah Stylesheet -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome-all.min.css">
    <link rel="stylesheet" href="css/charts.min.css">
    <link rel="stylesheet" href="css/datatables.min.css">
    <link rel="stylesheet" href="css/jvector-map.css">
    <link rel="stylesheet" href="css/slickslider.min.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">

</head>
<body id="sherah-dark-light">

<section class="sherah-wc sherah-wc__full sherah-bg-cover" style="background-image: url('img/credential-bg.svg');">
    <div class="container-fluid p-0">
        <div class="row g-0">
            <div class="col-lg-6 col-md-6 col-12 sherah-wc-col-one">
                <div class="sherah-wc__inner" style="background-image: url('img/welcome-bg.png');">
                    <!-- Logo -->
                    <div class="sherah-wc__logo">
                        <a href=""><img src="img/logo.png" alt="#"></a>
                    </div>
                    <!-- Middle Image -->
                    <div class="sherah-wc__middle">
                        <a href=""><img src="img/welcome-vector.png" alt="#"></a>
                    </div>
                    <!-- Welcome Heading -->
                    <h2 class="sherah-wc__title">Welcome Web Clothing<br> <<33</h2>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-12 sherah-wc-col-two">
                <div class="sherah-wc__form">
                    <div class="sherah-wc__form-inner">
                        <h3 class="sherah-wc__form-title sherah-wc__form-title__one">Login Your Account <span>Please enter your email and password to continue</span></h3>
                        <!-- Sign in Form -->
                        <form class="sherah-wc__form-main p-0" action="confirmpass" method="post" >
                            <input name="email" value="${requestScope.email}" type="hidden">
                            <div class="form-group">
                                <label class="sherah-wc__form-label">New Password</label>
                                <div class="form-group__input">
                                    <input class="sherah-wc__form-input" type="password" name="password" placeholder="&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;" required="required"  pattern="^\S+$">
                                </div>
                            </div>
                            <!-- Form Group -->
                            <div class="form-group">
                                <label class="sherah-wc__form-label">Confirm Password</label>
                                <div class="form-group__input">
                                    <input class="sherah-wc__form-input" type="password" name="cfpassword" placeholder="&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;" required="required"  pattern="^\S+$">
                                </div>
                            </div>

                            <div class="form-group form-mg-top25">
                                <div class="sherah-wc__button sherah-wc__button--bottom">
                                    <button class="ntfmax-wc__btn" type="submit">Update Password</button>
                                </div>
                            </div>
                            <c:if test="${not empty sessionScope.successfully}">
                                <div class="alert" style="color: green">${sessionScope.successfully}</div>
                                <% session.removeAttribute("successfully"); %> <!-- Xóa sau khi hiển thị -->
                            </c:if>
                            <c:if test="${not empty error}">
                                <div class="alert" style="color: red">${error}</div>
                            </c:if>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

</div>

<!-- sherah Scripts -->
<script src="js/jquery.min.js"></script>
<script src="js/jquery-migrate.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/charts.js"></script>
<script src="js/final-countdown.min.js"></script>
<script src="js/fancy-box.min.js"></script>
<script src="js/fullcalendar.min.js"></script>
<script src="js/datatables.min.js"></script>
<script src="js/circle-progress.min.js"></script>
<script src="js/jquery-jvectormap.js"></script>
<script src="js/jvector-map.js"></script>
<script src="js/main.js"></script>

</body>
</html>