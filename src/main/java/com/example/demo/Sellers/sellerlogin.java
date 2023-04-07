



package com.example.demo.Sellers;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/Admin_login")
public class sellerlogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equals("admin") && password.equals("admin")) {
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Login Successful!');");
            out.println("window.location.href='seller/addproduct.jsp';");
            out.println("</script>");
        } else {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Invalid username or password!');");
            out.println("window.location.href='admin/adlogin';");
            out.println("</script>");
        }

    }
}