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
<div class="header">
<%@include file="navbar.jsp"%>



 <!---- cart item details---->
    <div class="small-container  cart-page">

        <table>
            <tr>
                <th>Product</th>
                <th>Quantity</th>
                <th>Subtotal</th>
            </tr>
            <tr>
                <td>
                    <div class="cart-info">
                        <img src="image\buy-1.jpg" >
                        <div>
                            <p>Red Printed Tshirt</p>
                            <small>Price: $50.00</small>
                            <br>
                            <a href="">Remove</a>
                        </div>
                    </div>
                </td>
                <td><input type="number" value="1"></td>
                <td>$50</td>
            </tr>
            <tr>
                <th>Product</th>
                <th>Quantity</th>
                <th>Subtotal</th>
            </tr>
            <tr>
                <td>
                    <div class="cart-info">
                        <img src="image\buy-2.jpg" >
                        <div>
                            <p>Red Printed Tshirt</p>
                            <small>Price: $50.00</small>
                            <br>
                            <a href="">Remove</a>
                        </div>
                    </div>
                </td>
                <td><input type="number" value="1"></td>
                <td>$50</td>
            </tr>
            <tr>
                <th>Product</th>
                <th>Quantity</th>
                <th>Subtotal</th>
            </tr>
            <tr>
                <td>
                    <div class="cart-info">
                        <img src="image\buy-3.jpg" >
                        <div>
                            <p>Red Printed Tshirt</p>
                            <small>Price: $70.00</small>
                            <br>
                            <a href="">Remove</a>
                        </div>
                    </div>
                </td>
                <td><input type="number" value="1"></td>
                <td>$70</td>
            </tr>
        </table>
        <div class="total-price">

            <table>
                <tr>
                    <td>Subtotal</td>
                    <td>$200.00</td>
                </tr>
                <tr>
                    <td>tax</td>
                    <td>$35.00</td>
                </tr>
                <tr>
                    <td>Total</td>
                    <td>$230.00</td>
                </tr>
            </table>
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