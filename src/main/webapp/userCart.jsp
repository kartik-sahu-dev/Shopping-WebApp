<%
    if(session.getAttribute("name") == null) {
        response.sendRedirect("login_register.jsp");
    }
%>
<%@ page import="com.Service.CartService"%>
<%@ page import="com.beans.CartBean"%>
<%@ page import="java.util.*"%>
<%@ page import="java.lang.*"%>

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
    cartItems = cartService.getAllCartItems(cartId);

    double subTotal=0;
    double total=0;
    int i = 1;


%>


    <div class="small-container ">

        <table>
            <tr>
                <th>No.</th>
                <th>Product</th>
                <th>Quantity</th>
                <th>Subtotal</th>
            </tr>
            <%
            for(CartBean bean : cartItems) {

            %>

            <tr>
                <td style="text-align: center;"><%=i%></td>

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

                <td>
                    <button onclick="updateCart(cartId,pId,minus);">-</button>
                    <input type="number" value="<%=bean.getQuantity()%>" min="1">
                    <button onclick="updateCart(cartId,pId,plus);">+</button>

                </td>

                <td><%
                        i++;
                        subTotal = bean.getQuantity() *  bean.getPrice();
                        total += subTotal;
                    %> &#8377; <%=subTotal%></td>
            </tr>
            <%
                }
            %>
                <tr>
                    <td style="text-align: right;" colspan="2"><strong>Total</strong></td>
                    <td > <p style="text-align: right;">&#8377; <%=total%></p></td>
                </tr>
            </table>
        </div>
    <br><br>
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

    <!--update to cart-->
    function updateCart(cartId, pId, action){

        fetch('/updateCartQuantity?cartId=${cartId}&pId=${pId}&action=${action})
            .then(response => response.json())
            .then(data => {
                document.getElementById('quantity-${cartItemId').innerText = data.quantity;
                })
                .catch(error => console.error('Error updating quantity', error));
                }


  </script>


</body>
</html>