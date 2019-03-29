<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Offer Manager</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="images/icon/favicon.ico">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/metisMenu.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/slicknav.min.css">
    <link rel="stylesheet" href="css/typography.css">
    <link rel="stylesheet" href="css/default-css.css">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/responsive.css">
    <script src="js/modernizr-2.8.3.min.js"></script>
</head>
<body>
    <div class="page-container">
        <div class="sidebar-menu">
            <div class="sidebar-header">
                <div class="logo">
                    <a href="/" class="text-secondary"><i class="fa fa-2x fa-train">FFER</i><h5>manager</h5></a>
                </div>
            </div>
            <div class="main-menu">
                <div class="menu-inner">
                    <nav>
                        <ul class="metismenu" id="menu">
                            <li><a href=""><i class="ti-receipt"></i> <span>Description</span></a></li>
                            <li>
                                <a href="javascript:void(0)" aria-expanded="true"><i class="ti-palette"></i><span>Providers</span></a>
                                <ul class="collapse">
                                    <li><a href="">Add</a></li>
                                    <li><a href="">Delete</a></li>
                                    <li><a href="">Update</a></li>
                                </ul>
                            </li>
                            <li><a href=""><i class="ti-receipt"></i> <span>Clients</span></a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <div class="main-content">
            <div class="header-area">
                <div class="row align-items-center">
                    <div class="col-md-6 col-sm-8 clearfix">
                        <div class="nav-btn pull-left">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                    </div>
                    <div><h3>OFFER Manager</h3></div>
                </div>
            </div>
            <div class="main-content-inner">
                <div class="card mt-5">
                    <div class="card-body">
                        <h4 class="header-title">Providers</h4>
                        <form class="needs-validation" novalidate="" method="get" action="/provider">
                            <div class="form-row">
                                <div class="col-md-4 mb-3">
                                    <label for="validationCustom01">Provider</label>
                                    <input name="provider" type="text" class="form-control" id="validationCustom01" placeholder="Provider" value="" autocomplete="off">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-4 mb-3">
                                    <label for="validationCustom02">Country</label>
                                    <input name="country" type="text" class="form-control" id="validationCustom02" placeholder="Country" value="" autocomplete="off">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-4 mb-3">
                                    <label for="validationCustom03">Description</label>
                                    <input name="description" type="text" class="form-control" id="validationCustom03" placeholder="Description" value="" autocomplete="off">
                                </div>
                            </div>
                            <button class="btn btn-warning" type="submit">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <footer>
            <div class="footer-area">
                <p>© Copyright 2019</p>
            </div>
        </footer>
    </div>
    <%--scripts--%>
    <script src="js/jquery-3.3.1.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/metisMenu.min.js"></script>
    <script src="js/jquery.slimscroll.min.js"></script>
    <script src="js/jquery.slicknav.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/scripts.js"></script>
</body>
</html>
