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
    <title>All Product | RedStore</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>

    <div class="container">
        <div class="navbar">
            <div class="logo">
                <img src="image\logo.png" alt="LOGO" width="125px">
            </div>
             <nav>
                            <ul id="MenuItems">
                                <li><a href="index.html">Home</a></li>
                                 <li><a href="products.jsp">Products</a></li>
                                <li><a href="">About</a></li>
                                <li><a href="">Contact</a></li>
                                <li><a href="logout">Logout</a></li>
                                <li><a href="showAllProduct.jsp">All Product</a></li>
                            </ul>
                         </nav>
            <img src="image\cart.png" alt="cart" width="30px" height="30px">
            <img src="image\menu.png" class="menu-icon" onclick="menutoggle()">
            
           </div> 
            
          
           
    </div>

   
    <div class="small-container">
    <div class="row row-2">
        <h2>All Products</h2>
        <select >
            <option>Default Shorting</option>
            <option>Short by price</option>
            <option>Short by popularity</option>
            <option>Short by rating</option>
            <option>Short by sale</option>
        </select>
    </div>
        <div class="row">
            <div class="col-4">
                <img src="image\product-1.jpg">
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
            <div class="page-btn">
                <span>1</span>
                <span>2</span>
                <span>3</span>
                <span>4</span>
                <span><i class="fa-solid fa-arrow-right"></i></span>
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