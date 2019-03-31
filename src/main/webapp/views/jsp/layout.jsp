<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
    <title><tiles:getAsString name="title" /></title>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
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
    <tiles:insertAttribute name="menu" />
    <div class="main-content">
        <tiles:insertAttribute name="header" />
        <div class="main-content-inner">
            <tiles:insertAttribute name="content" />
        </div>
    </div>
    <tiles:insertAttribute name="footer" />
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


