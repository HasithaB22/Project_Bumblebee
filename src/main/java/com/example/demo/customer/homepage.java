package com.example.demo.customer;

import com.example.demo.Sellers.Product;
import com.example.demo.Sellers.productDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "homepage", value = "/homepage")
public class homepage extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final productDAO productDAO = new productDAO();

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            List<Product> products = productDAO.getAllProducts();
            request.setAttribute("products", products);
            request.getRequestDispatcher("home.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle the error case
        }
    }
}
