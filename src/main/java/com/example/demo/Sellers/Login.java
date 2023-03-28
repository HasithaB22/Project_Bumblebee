package com.example.demo.Sellers;



import com.example.demo.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;


@WebServlet("/login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve user input
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Validate input
        if (username == null || username.trim().equals("") ||
                password == null || password.trim().equals("")) {
            // Handle invalid input error
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid input data");
            return;
        }


        try {
            Connection conn = DBConnection.getConn();

            // Retrieve user data from database
            PreparedStatement stmt = conn.prepareStatement(
                    "SELECT password_salt, password FROM customer WHERE username = ?");
            stmt.setString(1, username);
            ResultSet result = stmt.executeQuery();
            if (!result.next()) {
                // Handle invalid username error
                response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "Invalid username or password");
                return;
            }
            String encodedSalt = result.getString("password_salt");
            String encodedPassword = result.getString("password");

            // Decode salt and hashed password from base64 strings
            byte[] salt = Base64.getDecoder().decode(encodedSalt);
            byte[] hashedPassword = Base64.getDecoder().decode(encodedPassword);

            // Hash password with retrieved salt
            byte[] inputHashedPassword = null;
            try {
                MessageDigest digest = MessageDigest.getInstance("SHA-256");
                digest.reset();
                digest.update(salt);
                inputHashedPassword = digest.digest(password.getBytes("UTF-8"));
            } catch (Exception e) {
                // Handle encryption error
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Encryption error: " + e.getMessage());
                return;
            }

            // Check if hashed password matches retrieved hashed password
            if (!MessageDigest.isEqual(hashedPassword, inputHashedPassword)) {
                // Handle invalid password error
                response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "Invalid username or password");
                return;
            }

            // User authenticated, store username in session
            HttpSession session = request.getSession();
            session.setAttribute("username", username);

        } catch (SQLException e) {
            // Handle database error
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error: " + e.getMessage());
            return;
        }

        // Redirect user to a success page
        response.sendRedirect("success.jsp");
    }
}



