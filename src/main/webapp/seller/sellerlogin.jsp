<%--
  Created by IntelliJ IDEA.
  User: Hasitha Piyumal PC
  Date: 4/6/2023
  Time: 9:58 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="java.sql.Connection" %>
<%@ page import="com.example.demo.DBConnection" %><%--

--%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">






<section class="vh-100 " style="max-width: 1200px; margin:0 auto" >
    <div class="container-fluid h-custom">

        <div class="row d-flex justify-content-center align-items-center h-100">

            <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                    <a href="../index.jsp"><button type="button" class="btn-close btn-close-primary " aria-label="Close"></button></a>
                </div>
                <form action="../Admin_login" method="post">


                    <div class="heding">
                        <h1>Seller Login</h1>
                    </div>




                    <div class="form-outline mb-2">
                        <input type="text" id="username" name="username" class="form-control form-control-lg"
                               placeholder="Enter username" />
                        <label class="form-label" for="username">Username</label>
                    </div>

                    <!-- Password input -->
                    <div class="form-outline mb-3">
                        <input type="password" id="password" name="password" class="form-control form-control-lg"
                               placeholder="Enter password" />
                        <label class="form-label" for="password">Password</label>
                    </div>



                    <div class="text-center text-lg-start mt-4 pt-2">
                        <button type="submit" class="btn btn-primary btn-lg" id="login"
                                style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>

                    </div>

                </form>
            </div>
        </div>
    </div>

</section>