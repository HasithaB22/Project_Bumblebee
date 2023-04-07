<%@ page import="com.example.demo.DBConnection" %>
<%@ page import="java.sql.Connection" %><%--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">--%>
<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>--%>
<%--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">--%>



<style>
    .avatar {
        display: inline-block;
        width: 25px;
        height: 25px;
        border-radius: 50%;
        background-color: #007bff;
        color: #fff;
        font-size: 12px;
        line-height: 25px;
        text-align: center;
        margin-right: 10px;
    }
    .fonts {
        font-size: 12px;
        line-height: 25px;
        align-items: center;
        margin-top: 10px;
    }
</style>


<body>




<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/homepage">
            <img src="${pageContext.request.contextPath}/recourses/images/navbar/logo.png" alt="" style="width:40px;" class="rounded-pill">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="mynavbar">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link" href="javascript:void(0)">Today's Deals</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="javascript:void(0)">Gift Cards</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="javascript:void(0)">Electronics</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./seller/sellerlogin.jsp">Seller Login</a>
                </li>


                <li class="nav-item">
                    <a class="nav-link" href="viewCart"><i class="fa fa-shopping-cart"></i></a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="./login.jsp"><i class="fa fa-user"></i></a>

                </li>


            </ul>



            <i class="fa-solid fa-user"></i>






            <form action="${pageContext.request.contextPath}/search" class="d-flex">

                <input class="form-control me-2" id="keyword" name="keyword" type="text" placeholder="Search">
                <button class="btn btn-primary" type="submit">Search</button>
            </form>
        </div>

    </div>


    <h4 class="text-info">welcome <%=session.getAttribute("userEmail")%></h4>



</nav>

