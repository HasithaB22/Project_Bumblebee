package com.example.demo.order;

import com.example.demo.DBConnection;
import com.example.demo.Sellers.Product;
import com.example.demo.cart.shoppingcart;
import com.example.demo.cart.shoppingcartitems;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static com.example.demo.Sellers.Product.closeResources;

@WebServlet("/orderConfirmation")
public class OrderConfirmation extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String userEmail = (String) session.getAttribute("userEmail");
        if (userEmail == null) {
            response.sendRedirect("home.jsp");
            return;
        } else {


            List<shoppingcartitems> items = new ArrayList<>();

            Connection conn = null;
            PreparedStatement stmt = null;
            ResultSet rs = null;

            try {
                conn = DBConnection.getConn();
                stmt = conn.prepareStatement("SELECT * FROM cart WHERE user_email = ?");
                stmt.setString(1, userEmail);
                rs = stmt.executeQuery();

                while (rs.next()) {
                    int productId = rs.getInt("product_id");
                    int quantity = rs.getInt("quantity");

                    Product product = Product.getProductById(productId);
                    shoppingcartitems item = new shoppingcartitems(product, quantity);
                    item.setPrice(product.getPrice()); // Set the price of the item
//                item.setSubtotal(item.getSubtotal()); // Calculate and set the subtotal of the item
                    items.add(item);
                }

            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                closeResources(conn, stmt, rs);
            }

            BigDecimal total = shoppingcart.getTotal(items);
            request.setAttribute("items", items);
            request.setAttribute("total", total); // Add the total price to the request

            request.getRequestDispatcher("customer/checkout.jsp").forward(request, response);
        }

    }
}
