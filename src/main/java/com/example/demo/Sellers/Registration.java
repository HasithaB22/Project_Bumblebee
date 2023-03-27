package com.example.demo.Sellers;


import com.example.demo.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/signup")
//@WebServlet(name = "sellerRegister", value = "/seller-register")
public class Registration extends HttpServlet {
    private static final long serialVersionUID = 1L;



        public void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

            // Retrieve user input
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            // Validate input
            if (username == null || username.trim().equals("") ||
                    email == null || email.trim().equals("") ||
                    password == null || password.trim().equals("")) {
                // Handle invalid input error
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid input data");
                return;
            }

            // Establish database connection

            try {
                Connection conn = DBConnection.getConn();

                // Insert user data into database table
                PreparedStatement stmt = conn.prepareStatement(
                        "INSERT INTO customer (username, email, password) VALUES (?, ?, ?)");
                stmt.setString(1, username);
                stmt.setString(2, email);
                stmt.setString(3, password);
                stmt.executeUpdate();

            } catch (SQLException e) {
                // Handle database error
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error: " + e.getMessage());
                return;
            }

            // Redirect user to a success page
            response.sendRedirect("registration_success.html");
        }
    }
