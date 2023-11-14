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
    <title>Shopping | Ecommerce Website Design </title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
<div class="header">
        <%@include file="navbar.jsp"%>


        <div class="row">
            <div class="col-2">
                <h1>Give Your Workout <br>A New Style!</h1>
                <p>Success isn't always about greatnes. Its about
                    consistency. Consistent <br>hard work gains success. Greatness
                    will come.
                </p>
                <a href="" class="btn">Explore Now <i class="fa-solid fa-arrow-right"></i></a>
            </div>
            <div class="col-2">
                <img src="image\image1.png" alt="IMAGE">
            </div>
        </div>

</div>
<!------- featured categories--------->
<div class="categories">
    <div class="small-container">
        <div class="row">
            <div class="col-3">
                <img src="image\category-1.jpg" >
            </div>
            <div class="col-3">
                <img src="image\category-2.jpg" >
            </div>
            <div class="col-3">
                <img src="image\category-3.jpg" >
            </div>
        </div>
    </div>


</div>

<!------- featured product--------->
<div class="small-container">
    <h2 class="title">Featured Products</h2>
    <div class="row">
        <div class="col-4">
            <a href="productdetail.html"><img src="image\product-1.jpg"></a>
            <a href="productdetail.html"></a><h4>Red Printed T-Shirt</h4></a>
            <div class="rating">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>
            </div>
            <p>$50.00</p>
        </div>
        <div class="col-4">
            <img src="image\product-2.jpg">
            <h4>Red Printed T-Shirt</h4>
            <div class="rating">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>
            </div>
            <p>$60.00</p>
        </div>
        <div class="col-4">
            <img src="image\product-3.jpg">
            <h4>Red Printed T-Shirt</h4>
            <div class="rating">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>
            </div>
            <p>$70.00</p>
        </div>
        <div class="col-4">
            <img src="image\product-4.jpg">
            <h4>Red Printed T-Shirt</h4>
            <div class="rating">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>
            </div>
            <p>$80.00</p>
        </div>

    </div>
    <h2 class="title">Latest Products</h2>
    <div class="row">
        <div class="col-4">
            <img src="image\product-5.jpg">
            <h4>Red Printed T-Shirt</h4>
            <div class="rating">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>
            </div>
            <p>$50.00</p>
        </div>
        <div class="col-4">
            <img src="image\product-6.jpg">
            <h4>Red Printed T-Shirt</h4>
            <div class="rating">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>
            </div>
            <p>$60.00</p>
        </div>
        <div class="col-4">
            <img src="image\product-7.jpg">
            <h4>Red Printed T-Shirt</h4>
            <div class="rating">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>
            </div>
            <p>$70.00</p>
        </div>
        <div class="col-4">
            <img src="image\product-8.jpg">
            <h4>Red Printed T-Shirt</h4>
            <div class="rating">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>
            </div>
            <p>$80.00</p>
        </div>

    </div>
    <div class="row">
        <div class="col-4">
            <img src="image\product-9.jpg">
            <h4>Red Printed T-Shirt</h4>
            <div class="rating">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>
            </div>
            <p>$50.00</p>
        </div>
        <div class="col-4">
            <img src="image\product-10.jpg">
            <h4>Red Printed T-Shirt</h4>
            <div class="rating">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>
            </div>
            <p>$60.00</p>
        </div>
        <div class="col-4">
            <img src="image\product-11.jpg">
            <h4>Red Printed T-Shirt</h4>
            <div class="rating">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>
            </div>
            <p>$70.00</p>
        </div>
        <div class="col-4">
            <img src="image\product-12.jpg">
            <h4>Red Printed T-Shirt</h4>
            <div class="rating">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>
            </div>
            <p>$80.00</p>
        </div>

    </div>
</div>
<!--------offer---------->
<div class="offer">
    <div class="small-container">
        <div class="row">
            <div class="col-2">
                <img src="image\exclusive.png" class="offer-img" >
            </div>
            <div class="col-2">
                <h1>Smart Band 4</h1>
                <small> The mi smart band 4 features</small>
                <a href="" class="btn">Buy Now <i class="fa-solid fa-arrow-right"></i></a>
            </div>
        </div>
    </div>
</div>



<!--------testimonial-->
<div class="testimonial">
    <div class="small-container">
        <div class="row">
            <div class="col-3">
                <i class="fa-solid fa-quote-left"></i>
                <p> Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ipsum, quas, eveniet reprehenderit earum qui beatae deserunt in sapiente odit numquam eos recusandae vel, laboriosam totam maxime dolorum odio quia blanditiis quis quod architecto? Repellat recusandae consequuntur veritatis quas saepe consequatur, inventore nemo nihil temporibus laborum nulla, harum assumenda quam? In.</p>
                <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                </div>
                <img src="image\user-1.png" >
                <h3>Sean Parker</h3>

            </div>
            <div class="col-3">
                <i class="fa-solid fa-quote-left"></i>
                <p> Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ipsum, quas, eveniet reprehenderit earum qui beatae deserunt in sapiente odit numquam eos recusandae vel, laboriosam totam maxime dolorum odio quia blanditiis quis quod architecto? Repellat recusandae consequuntur veritatis quas saepe consequatur, inventore nemo nihil temporibus laborum nulla, harum assumenda quam? In.</p>
                <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                </div>
                <img src="image\user-2.png" >
                <h3>Mick Smith </h3>

            </div>
            <div class="col-3">
                <i class="fa-solid fa-quote-left"></i>
                <p> Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ipsum, quas, eveniet reprehenderit earum qui beatae deserunt in sapiente odit numquam eos recusandae vel, laboriosam totam maxime dolorum odio quia blanditiis quis quod architecto? Repellat recusandae consequuntur veritatis quas saepe consequatur, inventore nemo nihil temporibus laborum nulla, harum assumenda quam? In.</p>
                <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                </div>
                <img src="image\user-3.png" >
                <h3>Marble joe</h3>

            </div>
        </div>
    </div>
</div>

<!--------brands-->
<div class="brands">
    <div class="small-container">
        <div class="row">
            v         <div class="col-5">
            <img src="image\logo-godrej.png" >
        </div>
            <div class="col-5">
                <img src="image\logo-oppo.png" >
            </div>
            <div class="col-5">
                <img src="image\logo-coca-cola.png" >
            </div>
            <div class="col-5">
                <img src="image\logo-paypal.png" >
            </div>
            <div class="col-5">
                <img src="image\logo-philips.png" >
            </div>
        </div>
    </div>
</div>

<!-------footer-->
<div class="footer">
    <div class="container">
        <div class="row">
            <div class="footer-col-1">
                <h3> Download Our App</h3>
                <p> Download App for Android and ios mobile phone</p>
                <div class="app-logo">
                    <img src="image\play-store.png" >
                    <img src="image\app-store.png" >
                </div>
            </div>
            <div class="footer-col-2">
                <img src="image\logo-white.png" >
                <p> Our Purpose Is To Sustainably Make Pleasure And
                    Benefits of Sports Accessible to the Many
                </p>
            </div>
            <div class="footer-col-3">
                <h3> Usefull Link</h3>
                <ul>
                    <li>Coupons</li>
                    <li>Blogpost</li>
                    <li>Return policy</li>
                    <li>Join Affiliate</li>
                </ul>
            </div>
            <div class="footer-col-4">
                <h3> Follow us</h3>
                <ul>
                    <li>Facebook</li>
                    <li>Twitter</li>
                    <li>Instagram</li>
                    <li>Youtube</li>
                </ul>
            </div>
        </div>
        <hr>
        <p class="copyright">copyright 2023 - Easy tutorials </p>
    </div>
</div>

<!------------------js for toggle menu---------->
<script>
    var  MenuItems = document.getElementById("MenuItems");
    MenuItems.style.maxHeight="0px";

    function menutoggle()
    if(MenuItems.style.maxHeight  ="0px")
    {
        MenuItems.style.maxHeight="200px";
    }

    else
    {
        MenuItems.style.maxHeight="0px";
    }
  </script>
</body>
</html>