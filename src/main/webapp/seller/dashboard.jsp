
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Seller's Product Management Page - Bootstrap 5</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css">
</head>
<body>


<div class="container-fluid">
    <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
            <div class="sidebar-sticky">
                <div class="text-center my-3">
                    <img src="../Images/logo2.png" alt="Your Logo" height="50">
                    <h5 class="mt-3">Bumble Bee</h5>
                </div>
                <ul class="nav flex-column">

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="customersDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-users"></i> Product
                        </a>
                        <div class="dropdown-menu" aria-labelledby="customersDropdown">
                            <a class="dropdown-item" href="addproduct.jsp">Add Product</a>
                            <a class="dropdown-item" href="${pageContext.request.contextPath}/view-products">View Product</a>
                            <a class="dropdown-item" href="#">Update Product</a>
                            <a class="dropdown-item" href="#">Delete Product</a>
                        </div>
                    </li>

                    <ul class="nav flex-column">

                        <li class="nav-item">
                            <a class="nav-link" href="home-view">
                                <i class="fas fa-users"></i> Customers
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <i class="fas fa-chart-bar"></i> Reports
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <i class="fas fa-cog"></i> Settings
                            </a>
                        </li>
                    </ul>
                </ul>
            </div>
        </nav>




       <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script>


        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    </div>
</div>

</body>
</html>


