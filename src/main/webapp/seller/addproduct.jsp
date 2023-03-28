<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Add Product Interface - Bootstrap 5</title>--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1">--%>
<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css">--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="container py-4">--%>
<%--    <h1 class="text-center mb-4">Add Product</h1>--%>
<%--    <form>--%>
<%--        <div class="row mb-3">--%>
<%--            <label for="product-name" class="col-sm-2 col-form-label">Name</label>--%>
<%--            <div class="col-sm-10">--%>
<%--                <input type="text" class="form-control" id="product-name" required>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="row mb-3">--%>
<%--            <label for="product-description" class="col-sm-2 col-form-label">Description</label>--%>
<%--            <div class="col-sm-10">--%>
<%--                <textarea class="form-control" id="product-description" rows="3" required></textarea>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="row mb-3">--%>
<%--            <label for="product-price" class="col-sm-2 col-form-label">Price</label>--%>
<%--            <div class="col-sm-10">--%>
<%--                <div class="input-group">--%>
<%--                    <span class="input-group-text">$</span>--%>
<%--                    <input type="number" class="form-control" id="product-price" required>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="row mb-3">--%>
<%--            <label for="product-image" class="col-sm-2 col-form-label">Image</label>--%>
<%--            <div class="col-sm-10">--%>
<%--                <input type="file" class="form-control" id="product-image" required>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="row mb-3">--%>
<%--            <div class="col-sm-10 offset-sm-2">--%>
<%--                <button type="submit" class="btn btn-primary">Submit</button>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </form>--%>
<%--</div>--%>

<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>--%>
<%--</body>--%>
<%--</html>--%>









<%--
  Created by IntelliJ IDEA.
  User: Veeshan
  Date: 3/28/2023
  Time: 4:02 PM
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <title>Title</title>
</head>
<body>


<%--<h1>Add Product Details</h1>--%>
<%--<form action="../AddProductServlet" method="POST" enctype="multipart/form-data">--%>
<%--    <label for="name">Name:</label>--%>
<%--    <input type="text" name="name" id="name" required><br>--%>
<%--    <label for="description">Description:</label>--%>
<%--    <textarea name="description" id="description"></textarea><br>--%>
<%--    <label for="category">Category:</label>--%>
<%--    <input type="text" name="category" id="category"><br>--%>
<%--    <label for="price">Price:</label>--%>
<%--    <input type="number" id="price" name="price" step="0.01" min="0" required><br>--%>
<%--    <label for="image" >Image:</label>--%>
<%--    <input type="file" id="image" name="image"><br>--%>
<%--    <label for="dimensions" >Dimensions:</label>--%>
<%--    <input type="text" id="dimensions" name="dimensions"><br>--%>
<%--    <label for="weight" >Weight:</label>--%>
<%--    <input type="text" id="weight" name="weight"><br>--%>
<%--    <label for="color">Color:</label>--%>
<%--    <input type="text" id="color" name="color"><br>--%>
<%--    <input type="submit" value="Add Product">--%>
<%--</form>--%>


<div class="container mt-5">
    <h1>Add Product Details</h1>
    <form action="./AddProductServlet" method="POST" enctype="multipart/form-data">
        <fieldset>
            <legend>Product Information</legend>
            <div class="mb-3">
                <label for="name" class="form-label">Name:</label>
                <input type="text" name="name" id="name" class="form-control" placeholder="Enter product name" required>
            </div>
            <div class="mb-3">
                <label for="description" class="form-label">Description:</label>
                <textarea name="description" id="description" class="form-control" placeholder="Enter product description"></textarea>
            </div>
            <div class="mb-3">
                <label for="category" class="form-label">Category:</label>
                <input type="text" name="category" id="category" class="form-control" placeholder="Enter product category">
            </div>
            <div class="mb-3">
                <label for="price" class="form-label">Price:</label>
                <input type="number" id="price" name="price" step="0.01" min="0" class="form-control" placeholder="Enter product price" required>
            </div>
            <div class="mb-3">
                <label for="image" class="form-label">Image:</label>
                <input type="file" id="image" name="image" class="form-control">
            </div>
            <div class="mb-3">
                <label for="dimensions" class="form-label">Dimensions:</label>
                <input type="text" id="dimensions" name="dimensions" class="form-control" placeholder="Enter product dimensions">
            </div>
            <div class="mb-3">
                <label for="weight" class="form-label">Weight:</label>
                <input type="text" id="weight" name="weight" class="form-control" placeholder="Enter product weight">
            </div>
            <div class="mb-3">
                <label for="color" class="form-label">Color:</label>
                <input type="text" id="color" name="color" class="form-control" placeholder="Enter product color">
            </div>
        </fieldset>
        <div class="d-grid gap-2">
            <input type="submit" value="Add Product" class="btn btn-primary">
        </div>
    </form>
</div>
</body>
</html>
