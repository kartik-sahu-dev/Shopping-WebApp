<%@ page import="com.beans.*,com.serv.*,com.Service.*,java.util.* ,java.io.*"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>All Categories</title>


    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
<div class="header">
    <%@include file="adminNavbar.jsp" %>
    <p style="color: green; font-size: 24px; font-weight: bold; " class="text-center">Available Categories</p>
    <div class="container">
        <div class="table-responsive ">
            <table class="table table-hover table-sm">
                <thead style="background-color: #e2e2e2; color: white; font-size: 18px;">
                <tr>
                    <th>CategoryId</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th colspan="2" style="text-align: center">Actions</th>
                </tr>
                </thead>
                <tbody style="background-color: white; font-size: 16px;">

                <%!
                CategoryService categoryService = new CategoryService();
                List<CategoryBean> categories = new ArrayList<CategoryBean>();

                    %>
                    <%
                    categories = categoryService.getAllCategories();
                    for (CategoryBean category : categories) {
                    %>

                    <tr> 
                        <td style="text-align: center;"><%=category.getCategoryId()%></td>
                        <td><%=category.getCategoryName()%></td>


                        <td><%=category.getCategoryDescription()%></td>

                        <td>
                            <form method="post">
                                <button type="submit"
                                        formaction=" "
                                        class="btn btn-primary">Update</button>
                            </form>
                        </td>
                        <td>
                            <form method="post">
                                <button type="submit" formaction=""
                                        class="btn btn-danger">Remove</button>
                            </form>
                        </td>

                    </tr>

                    <%
                    }
                    %>
                    <%
                    if (categories.size() == 0) {
                    %>
                    <tr style="background-color: grey; color: white;">
                        <td colspan="7" style="text-align: center;">No Items
                            Available</td>

                    </tr>
                    <%
                    }
                    %>
                </tbody>
            </table>
        </div>
    </div>`
</div>

<%@ include file="footer.html"%>
</body>
</html>