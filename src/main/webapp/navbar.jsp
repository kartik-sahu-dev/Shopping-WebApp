<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <title>Document</title>
</head>
<body>

        <div class="header">
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
                        <li><a href="adminHome.jsp">Admin</a></li>
                    </ul>
                </nav>
                <img src="image\cart.png" alt="cart" width="30px" height="30px">
                <img src="image\menu.png" class="menu-icon" onclick="menutoggle()">
            </div>
        </div>

</body>
</html>