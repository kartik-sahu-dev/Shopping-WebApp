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
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="products.jsp">Products</a></li>
                    <li><a href="">About</a></li>
                    <li><a href="logout">Logout</a></li>
                    <li><a href="Account.html">Account</a></li>
                </ul>
            </nav>
            <img src="image\cart.png" alt="cart" width="30px" height="30px">
            <img src="image\menu.png" class="menu-icon" onclick="menutoggle()">
            
           </div> 
            
    </div>
    <!------Account page-->
    <div class="account-page">
        <div class="container">
            <div class="row">
                <div class="col-2">
                    <img src="image\image1.png" width="100%" >
                </div>
                <div class="col-2">
                    <div class="form-container">
                        <div class="form-btn">
                            <span onclick="login()">Login</span>
                            <span onclick="register()">Register</span>
                            <hr id="Indicator">
                        </div>
                        <form id="LoginForm" action = "login" method = "post">
                            <input type="text" placeholder="Username" name="username">
                            <input type="password" placeholder="Password" name="pword">
                            <button type="submit" class="btn">Login</button>
                            <a href="">Forget Password</a>
                        </form>

                        <form id="RegForm" action = "register" method = "post">
                            <input type="text" placeholder="First name" name="fName" >
                            <input type="text" placeholder="Last name" name="lName">
                            <input type="Mobile No." placeholder="Mobile No." name="phone">
                            <input type="Email" placeholder="Email" name="mail">
                            <input type="password" placeholder="Password" name="pword">
                            <button type="submit" class="btn">Register</button>
                            
                        </form>
                    </div>
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

<!------------------js for toggle form---------->
</body><script>
    var LoginForm = document.getElementById("LoginForm")
    var RegForm = document.getElementById("RegForm")
    var Indicator = document.getElementById("Indicator")

    function register(){
        RegForm.style.transform =  "translateX(0px)";
        LoginForm.style.transform =  "translateX(0px)";
        Indicator.style.transform =  "translateX(100px)";

    }
    function login(){
        RegForm.style.transform =  "translateX(300px)";
        LoginForm.style.transform =  "translateX(300px)";
        Indicator.style.transform =  "translateX(0px)";

    }
</script>
</html>