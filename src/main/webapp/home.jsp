
<%--    <meta charset="UTF-8">--%>
<%--    <meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">--%>
<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>--%>
<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">--%>
<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.css">--%>
<%--    <script src="https://kit.fontawesome.com/c6b5381962.js" crossorigin="anonymous"></script>--%>
<%--    <script src="https://kit.fontawesome.com/c6b5381962.js" crossorigin="anonymous"></script>--%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.css">
<script src="https://kit.fontawesome.com/c6b5381962.js" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/c6b5381962.js" crossorigin="anonymous"></script>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="includes/navbar.jsp"%>


<section class="d-flex " style="margin-top: 20px;">
    <div class="container-fluid d-flex" style="max-width: 1200px">

    <div class="main-items w-25 d-flex justify-content-center " style="max-width: 500px;">
        <div class="tabbable tabs-left bg-light d-flex justify-content-center" style="width: 90%; height: auto; padding-left: 5px;">
            <div class="list-group">
                <h1>Categary Menu</h1>
                <button type="button" class="list-group-item list-group-item-action active" aria-current="true">

                </button>
                <button type="button" class="list-group-item list-group-item-action">Health & Beauty</button>
                <button type="button" class="list-group-item list-group-item-action">Electronic Devices</button>
                <button type="button" class="list-group-item list-group-item-action">Men's Fashion</button>
                <button type="button" class="list-group-item list-group-item-action" >Kid's Fashion</button>
                <button type="button" class="list-group-item list-group-item-action" >Medicine</button>
                <button type="button" class="list-group-item list-group-item-action" >Agriculture</button>
                <button type="button" class="list-group-item list-group-item-action" >Oral Care</button>
                <button type="button" class="list-group-item list-group-item-action" >Perfumes</button>
                <button type="button" class="list-group-item list-group-item-action" >Skin Care</button>
                <button type="button" class="list-group-item list-group-item-action" >Kitchen Items</button>
            </div>


            </div>

    </div>


    <div id="carousel" class="carousel carousel-fade slide normalsize centerslider w-100" data-bs-interval="3000" data-bs-ride="carousel" >
        <div class="carousel-inner">
            <div class="carousel-item active ">
                <img src="recourses/images/home/Electronic.png" class="d-block img-fluid w-120 "  >
            </div>
            <div class="carousel-item">
                <img src="recourses/images/home/computers.jpg" class="d-block img-fluid w-120" >
            </div>
            <div class="carousel-item">
                <img src="recourses/images/home/phones.jpg" class="d-block img-fluid w-120"  >
            </div>
        </div>
        </div>

    </div>
</section>

<%@include file="includes/productcarousel.jsp"%>
<jsp:include page="includes/viewproduct.jsp"/>
<%@include file="includes/footer.jsp"%>





