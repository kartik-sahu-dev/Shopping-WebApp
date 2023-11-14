<%
    if(session.getAttribute("name") == null) {
        response.sendRedirect("login_register.jsp");
    }
%>
<%@ page import="com.Service.CartService"%>
<%@ page import="com.beans.CartBean"%>
<%@ page import="java.util.*"%>

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

<!--getting cart Items-->
<%
    int cartId = Integer.parseInt((String)session.getAttribute("cartId"));
    CartService cartService = new CartService();
    List<CartBean> cartItems = new ArrayList<CartBean>();
    cartItems = cartService.getAllCartItems(1);

    double subTotal=0;
    double total=0;

    for(CartBean bean : cartItems){
        out.println(bean.getpName());
        out.println(bean.getQuantity());

    }
%>

    
    <div class="small-container  cart-page">

        <table>
            <tr>
                <th>Product</th>
                <th>Quantity</th>
                <th>Subtotal</th>
            </tr>
            <%
            for(CartBean bean : cartItems) {

            %>

            <tr>
                <td>


                    <div class="cart-info">
                        <img src="showImage?pId=<%=bean.getpId() %>" width="60px" height="60px" >
                        <div>
                            <p><%=bean.getpName() %></p>
                            <small><%=bean.getPrice() %></small>
                            <br>
                            <a href="removeProduct?cartId=<%=bean.getCartId() %>&pId=<%=bean.getpId() %>">Remove</a>
                        </div>
                    </div>
                </td>
                <td><input type="number" value="1"></td>
                <td><%
                        subTotal = bean.getQuantity() *  bean.getPrice();
                        total += subTotal;
                    %> &#8377; <%=subTotal%></td>
            </tr>
            <%
                }
            %>
<!--            <tr>-->
<!--                <th>Product</th>-->
<!--                <th>Quantity</th>-->
<!--                <th>Subtotal</th>-->
<!--            </tr>-->
<!--            <tr>-->
<!--                <td>-->
<!--                    <div class="cart-info">-->
<!--                        <img src="image\buy-2.jpg" >-->
<!--                        <div>-->
<!--                            <p>Red Printed Tshirt</p>-->
<!--                            <small>Price: $50.00</small>-->
<!--                            <br>-->
<!--                            <a href="">Remove</a>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                </td>-->
<!--                <td><input type="number" value="1"></td>-->
<!--                <td>$50</td>-->
<!--            </tr>-->
<!--            <tr>-->
<!--                <th>Product</th>-->
<!--                <th>Quantity</th>-->
<!--                <th>Subtotal</th>-->
<!--            </tr>-->
<!--            <tr>-->
<!--                <td>-->
<!--                    <div class="cart-info">-->
<!--                        <img src="image\buy-3.jpg" >-->
<!--                        <div>-->
<!--                            <p>Red Printed Tshirt</p>-->
<!--                            <small>Price: $70.00</small>-->
<!--                            <br>-->
<!--                            <a href="">Remove</a>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                </td>-->
<!--                <td><input type="number" value="1"></td>-->
<!--                <td>$70</td>-->
<!--            </tr>-->
<!--        </table>-->
<!--        <div class="total-price">-->

<!--            <table>-->
<!--                <tr>-->
<!--                    <td>Subtotal</td>-->
<!--                    <td>$200.00</td>-->
<!--                </tr>-->
<!--                <tr>-->
<!--                    <td>tax</td>-->
<!--                    <td>$35.00</td>-->
<!--                </tr>-->
                <tr>
                    <td>Total</td>
                    <td> <p style="text-align: right;"></p>&#8377;<%=total%></p></td>
                </tr>
            </table>
        </div>
    </div>
    
   <!-------footer-->
    <%@include file="footer.html"%>

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