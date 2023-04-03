package com.example.demo.Sellers;


import com.example.demo.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;

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

        // Generate salt for password encryption
        SecureRandom random = new SecureRandom();
        byte[] salt = new byte[16];
        random.nextBytes(salt);

        // Hash password with salt
        byte[] hashedPassword = null;
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            digest.reset();
            digest.update(salt);
            hashedPassword = digest.digest(password.getBytes("UTF-8"));
        } catch (Exception e) {
            // Handle encryption error
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Encryption error: " + e.getMessage());
            return;
        }

        // Encode salt and hashed password as base64 strings
        String encodedSalt = Base64.getEncoder().encodeToString(salt);
        String encodedPassword = Base64.getEncoder().encodeToString(hashedPassword);


        try {
            Connection conn = DBConnection.getConn();

            // Check if the user already exists
            PreparedStatement checkStmt = conn.prepareStatement(
                    "SELECT COUNT(*) FROM customer WHERE username = ?");
            checkStmt.setString(1, username);
            ResultSet result = checkStmt.executeQuery();
            result.next();
            int count = result.getInt(1);
            if (count > 0) {
                // Handle username already exists error
                response.sendError(HttpServletResponse.SC_CONFLICT, "Username already exists");
                return;
            }

            // Insert user data into database table
            PreparedStatement insertStmt = conn.prepareStatement(
                    "INSERT INTO customer (username, email, password_salt, password) VALUES (?, ?, ?, ?)");
            insertStmt.setString(1, username);
            insertStmt.setString(2, email);
            insertStmt.setString(3, encodedSalt);
            insertStmt.setString(4, encodedPassword);
            insertStmt.executeUpdate();

        } catch (SQLException e) {
            // Handle database error
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error: " + e.getMessage());
            return;
        }

        // Redirect user to a success page
        response.sendRedirect("success.jsp");
    }
}
