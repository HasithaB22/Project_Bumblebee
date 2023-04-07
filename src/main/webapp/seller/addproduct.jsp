

<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
</head>
<body>



<jsp:include page="../includes/navbar.jsp" />

<div class="container d-block justify-content-center">
<%@include file="dashboard.jsp"%>
<div class="container mt-5">
    <h1>Add Product Details</h1>
    <form action="../AddProductServlet" method="POST" enctype="multipart/form-data" class="d-block">
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
</div>
</body>
</html>
