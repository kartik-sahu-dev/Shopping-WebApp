

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<div class="header">
    <div class="container">
        <div class="navbar">
            <div class="logo">
                <a href="index.html"><img src="image\logo.png" alt="LOGO" width="100px"></a>
            </div>

        </div>
        <br>
        <div class="container admin">
            <div class="row mt-3">

                <div class="col-4">
                    <div class="card">
                        <div class="card-body"text-center >
                            <img  style="max-width: 125px;" class="img-fluid" src="\image\team.png" >
                            <h1 style="color: red;">2333232</h1>
                            <h1>USER</h1>
                        </div>
                    </div>
                </div>

                <div class="col-4">
                    <div class="card" data-toggle="modal" data-target="#add-Modal">
                        <div class="card-body "text-center >
                            <img  style="max-width: 125px;" class="img-fluid" src="image\categories.png" >
                            <h1 style="color: red;">2333232</h1>
                            <h1>CATEGORIES</h1>
                        </div>
                    </div>

                </div>

                <div class="col-4">
                    <div class="card" data-toggle="modal" data-target="#add-product">
                        <div class="card-body "text-center >
                            <img  style="max-width: 125px;" class="img-fluid" src="image\add-product.png" >
                            <h1 style="color: red;">2333232</h1>
                            <h1>ADD PRODUCTS</h1>
                        </div>
                    </div>

                </div>






            </div>
        </div>

        <!----add categories model-->


        <!-- Modal -->
        <div class="modal fade" id="add-Modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>


        <!---end categories model-->

        <!----Product Model-->


        <!-- Modal -->
        <div class="modal fade" id="add-product" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog model-lg"  role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Product details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="addProduct" method="post" enctype="multipart/form-data">
                            <!----product title-->
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Enter title of product" name="pName">
                            </div>
                            <!----product description-->
                            <div class="form-group">
                                <textarea  style="height: 150px;" class="form-control" placeholder="Enter product Description" name="descrip"></textarea>
                            </div>
                            <!---Product price--->
                            <div class="form-group">
                                <input type="number" class="form-control" placeholder="Enter price of product" name="price">
                            </div>

                            <!---Product quantity--->
                            <div class="form-group">
                                <input type="number" class="form-control" placeholder="Enter  product quantity" name="stock">
                            </div>
                            <!---Product categories--->
                            <div class="form-group">
                                <select name="category" class="form-control">
                                    <option value="laptop">Laptop</option>
                                    <option value="laptop">Laptop</option>
                                    <option value="laptop">Laptop</option>
                                </select>
                            </div>
                            <!---Product file--->
                            <div class="form-group">
                                <label for="Ppic">Select Picture of Product</label>
                                <br>
                                <input type="file" id="Ppic" name="image" required>
                            </div>

                            <!----Submit Button-->
                            <div class="container text-center">
                                <button class="btn-outline-success">Add Product</button>
                            </div>

                        </form>



                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>



        <!----end Product Model-->
</body>
</html>