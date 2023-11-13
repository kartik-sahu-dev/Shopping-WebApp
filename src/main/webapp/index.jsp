<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.Service.ProductService"%>
<%@ page import="com.beans.ProductBean"%>
<%@ page import="java.util.*"%>
<%
if(session.getAttribute("name") == null){
response.sendRedirect("login_register.jsp");
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <style>
        #myCarousel .carousel-item .mask {
            position: absolute;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            background-attachment: fixed
        }

        #myCarousel h4 {
            font-size: 50px;
            margin-bottom: 15px;
            color: #FFF;
            line-height: 100%;
            letter-spacing: 0.5px;
            font-weight: 600
        }

        #myCarousel p {
            font-size: 18px;
            margin-bottom: 15px;
            color: #d5d5d5
        }

        #myCarousel .carousel-item a {
            background: #FF0000;
            font-size: 14px;
            color: #FFF;
            padding: 13px 32px;
            display: inline-block
        }

        #myCarousel .carousel-item a:hover {
            background: #FF0000;
            text-decoration: none
        }

        #myCarousel .carousel-item h4 {
            -webkit-animation-name: fadeInLeft;
            animation-name: fadeInLeft
        }

        #myCarousel .carousel-item p {
            -webkit-animation-name: slideInRight;
            animation-name: slideInRight
        }

        #myCarousel .carousel-item a {
            -webkit-animation-name: fadeInUp;
            animation-name: fadeInUp
        }

        #myCarousel .carousel-item .mask img {
            -webkit-animation-name: slideInRight;
            animation-name: slideInRight;
            display: block;
            height: auto;
            max-width: 100%
        }

        #myCarousel h4,
        #myCarousel p,
        #myCarousel a,
        #myCarousel .carousel-item .mask img {
            -webkit-animation-duration: 1s;
            animation-duration: 1.2s;
            -webkit-animation-fill-mode: both;
            animation-fill-mode: both
        }

        #myCarousel .container {
            max-width: 1430px
        }

        #myCarousel .carousel-item {
            height: 100%;
            min-height: 550px
        }

        #myCarousel {
            position: relative;
            z-index: 1;
            background: #000;
            background-size: cover
        }

        .carousel-control-next,
        .carousel-control-prev {
            height: 40px;
            width: 40px;
            padding: 12px;
            top: 50%;
            bottom: auto;
            transform: translateY(-50%);
            background-color: #FF0000
        }

        .carousel-item {
            position: relative;
            display: none;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            width: 100%;
            transition: -webkit-transform .6s ease;
            transition: transform .6s ease;
            transition: transform .6s ease, -webkit-transform .6s ease;
            -webkit-backface-visibility: hidden;
            backface-visibility: hidden;
            -webkit-perspective: 1000px;
            perspective: 1000px
        }

        .carousel-fade .carousel-item {
            opacity: 0;
            -webkit-transition-duration: .6s;
            transition-duration: .6s;
            -webkit-transition-property: opacity;
            transition-property: opacity
        }

        .carousel-fade .carousel-item-next.carousel-item-left,
        .carousel-fade .carousel-item-prev.carousel-item-right,
        .carousel-fade .carousel-item.active {
            opacity: 1
        }

        .carousel-fade .carousel-item-left.active,
        .carousel-fade .carousel-item-right.active {
            opacity: 0
        }

        .carousel-fade .carousel-item-left.active,
        .carousel-fade .carousel-item-next,
        .carousel-fade .carousel-item-prev,
        .carousel-fade .carousel-item-prev.active,
        .carousel-fade .carousel-item.active {
            -webkit-transform: translateX(0);
            -ms-transform: translateX(0);
            transform: translateX(0)
        }

        @supports (transform-style:preserve-3d) {

            .carousel-fade .carousel-item-left.active,
            .carousel-fade .carousel-item-next,
            .carousel-fade .carousel-item-prev,
            .carousel-fade .carousel-item-prev.active,
            .carousel-fade .carousel-item.active {
                -webkit-transform: translate3d(0, 0, 0);
                transform: translate3d(0, 0, 0)
            }
        }

        .carousel-fade .carousel-item-left.active,
        .carousel-fade .carousel-item-next,
        .carousel-fade .carousel-item-prev,
        .carousel-fade .carousel-item-prev.active,
        .carousel-fade .carousel-item.active {
            -webkit-transform: translate3d(0, 0, 0);
            transform: translate3d(0, 0, 0)
        }

        @-webkit-keyframes fadeInLeft {
            from {
                opacity: 0;
                -webkit-transform: translate3d(-100%, 0, 0);
                transform: translate3d(-100%, 0, 0)
            }

            to {
                opacity: 1;
                -webkit-transform: translate3d(0, 0, 0);
                transform: translate3d(0, 0, 0)
            }
        }

        @keyframes fadeInLeft {
            from {
                opacity: 0;
                -webkit-transform: translate3d(-100%, 0, 0);
                transform: translate3d(-100%, 0, 0)
            }

            to {
                opacity: 1;
                -webkit-transform: translate3d(0, 0, 0);
                transform: translate3d(0, 0, 0)
            }
        }

        .fadeInLeft {
            -webkit-animation-name: fadeInLeft;
            animation-name: fadeInLeft
        }

        @-webkit-keyframes fadeInUp {
            from {
                opacity: 0;
                -webkit-transform: translate3d(0, 100%, 0);
                transform: translate3d(0, 100%, 0)
            }

            to {
                opacity: 1;
                -webkit-transform: translate3d(0, 0, 0);
                transform: translate3d(0, 0, 0)
            }
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                -webkit-transform: translate3d(0, 100%, 0);
                transform: translate3d(0, 100%, 0)
            }

            to {
                opacity: 1;
                -webkit-transform: translate3d(0, 0, 0);
                transform: translate3d(0, 0, 0)
            }
        }

        .fadeInUp {
            -webkit-animation-name: fadeInUp;
            animation-name: fadeInUp
        }

        @-webkit-keyframes slideInRight {
            from {
                -webkit-transform: translate3d(100%, 0, 0);
                transform: translate3d(100%, 0, 0);
                visibility: visible
            }

            to {
                -webkit-transform: translate3d(0, 0, 0);
                transform: translate3d(0, 0, 0)
            }
        }

        @keyframes slideInRight {
            from {
                -webkit-transform: translate3d(100%, 0, 0);
                transform: translated(100%, 0, 0);
                visibility: visible
            }

            to {
                -webkit-transform: translate3d(0, 0, 0);
                transform: translate3d(0, 0, 0)
            }
        }

        .slideInRight {
            -webkit-animation-name: slideInRight;
            animation-name: slideInRight
        }




        /* Add a border style */
        .product {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }

        /* Increase the height of the product div */
        .product-container {
            height: auto;
            background: white;
            display: flex; /* Use flexbox to align elements horizontally */
            flex-direction: column; /* Stack elements vertically */
            justify-content: center; /* Center items vertically */
            align-items: center !important; /* Center items horizontally with !important to override external styles */
        }

        /* Style for product ID and Name */
        .product-info {
            font-weight: bold;
        }

        /* Style for product description to control overflow */
        .product-description {
            max-height: 60px; /* Set a maximum height for the description */
            overflow: hidden; /* Hide overflowing content */
            text-overflow: ellipsis; /* Add ellipsis (...) for truncated text */
            white-space: nowrap; /* Prevent text from wrapping */
        }

        /* Style for price and its value */
        .leftAlign {
           padding-right: 120px !important; /* Align price to the left with !important */
<!--               margin-left: 0px !important;-->
<!--             padding-left: 0px !important;-->
        }

        .rightAlign {
            padding-left: 120px !important; /* Align price value to the right with !important */
<!--                margin-right: 0px !important;-->
<!--                padding-right: 0px !important;-->
        }

        /* Custom class to ensure consistent product container height */
        .product-container img {
            height: 250px; /* Set a fixed height for all images */
            width: auto; /* Allow the width to adjust proportionally */
        }
        .showProduct{

        }
    </style>
    <title>All Products</title>
</head>
<body>

<!-- Start of Navigation -->
<div class="header">
     <%@include file="navbar.jsp"%>
</div>
<!-- End of Navigation -->

<!-- Start of Banner -->
<div id="myCarousel" class="carousel slide carousel-fade" data-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <div class="mask flex-center">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-md-7 col-12 order-md-1 order-2">
                            <h4>iPhone XS</h4>
                            <p>This has many features that are simply awesome. The phone comes with a 3.50-inch
                                display with a resolution of 320x480 pixels.</p> <br> <a href="#">BUY NOW</a>
                        </div>
                        <div class="col-md-5 col-12 order-md-2 order-1"><img src="image/category-3.jpg"
                                                                             class="mx-auto" alt="slide"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <div class="mask flex-center">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-md-7 col-12 order-md-1 order-2">
                            <h4>HP Pavillion</h4>
                            <p>This has many features that are simply awesome.The phone comes with a 3.50-inch
                                display with a resolution of 320x480 pixels.</p> <br> <a href="#">BUY NOW</a>
                        </div>
                        <div class="col-md-5 col-12 order-md-2 order-1"><img src="image/gallery-2.jpg"
                                                                             class="mx-auto" alt="slide"></div>
                    </div>
                </div>
            </div>
        </div>
    </div> <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev"> <span
        class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Back</span> </a>
    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next"> <span
            class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span> </a>
</div>
<!-- End of Banner -->

<div class="container showProduct">
    <%
    ProductService prd = new ProductService();
    List<ProductBean> list = prd.getAllProduct();
    %>

    <!-- Show Categories -->
    <div class="row">
        <div class="col-md-2">
            <!-- Add code for displaying categories if needed -->
        </div>
        <div class="col-md-8">
            <h1>Number of Products is: <%= list.size() %></h1>
        </div>
    </div>

    <!-- Show Products -->
    <div class="row">
        <%
        for (ProductBean product : list) {
        %>
        <div class="col-md-4">
            <div class="product product-container">
                <img src="showImage?pId=<%= product.getpId() %>" class="img-fluid" alt="<%= product.getpName() %>">
                <p class="product-info"><%= product.getpName() %></p>
                <p class="product-description"><%= product.getDescrip() %></p>
                <div class="d-flex justify-content-between product-price">
                    <div class="product-info leftAlign">Price:</div><div class="product-info rightAlign"><%= product.getPrice() %></div>
                </div>
                <div class="d-flex justify-content-between">
                    <div class="product-info leftAlign">Stock:</div><div class="product-info rightAlign"><%= product.getQuantity() %></div>
                </div>
                <div class="d-flex justify-content-between">
                    <div class="product-info leftAlign">Likes:</div><div class="product-info rightAlign"><%= product.getLikes() %></div>
                </div>
            </div>
        </div>
        <%
        }
        %>
    </div>
</div>


<script>
    $(document).ready(function () {

        $('#myCarousel').carousel({
            interval: 3000,
        })

    });
</script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>
