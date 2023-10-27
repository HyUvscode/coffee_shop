/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAOs.ProductDAO;
import Models.cart;
import Models.cart_items;
import Models.products;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 *
 * @author khuy
 */
public class CartServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet cartServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet cartServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String path = request.getRequestURI();
        //System.out.println(path);
        HttpSession session = request.getSession();
        if ((session.getAttribute("login") != null) && (session.getAttribute("login").equals("customer"))) {
            if (path.startsWith("/cart/add")) {
                int quantity = 1;
                int id;
                if (request.getParameter("product_id") != null) {
                    id = Integer.parseInt(request.getParameter("product_id"));
                    ProductDAO pD = new ProductDAO();
                    products p = pD.getProductByID(request.getParameter("product_id"));
                    if (p != null) {
                        quantity = 1;
                    }
                    if (session.getAttribute("cart") == null) {
                        cart c = new cart();
                        ArrayList<cart_items> lp = new ArrayList<>();
                        c.setItems(lp);
                        cart_items ct = new cart_items();
                        ct.setQuantity(quantity);
                        ct.setProduct_id(p.getProduct_id());
                        ct.setCard_id("" + 1);
                        ct.setPrice(p.getPrice());
                        lp.add(ct);
                        c = new cart("" + 1, (String) session.getAttribute("login"), lp, ct.getPrice() * quantity);
                        session.setAttribute("cart", c);
                    } else {
                        cart c = (cart) session.getAttribute("cart");
                        ArrayList<cart_items> lp = new ArrayList<>();
                        lp = c.getItems();
                        boolean flag = false;
                        for (cart_items cp : lp) {
                            if (cp.getProduct_id() == p.getProduct_id()) {
                                cp.setQuantity(cp.getQuantity() + 1);
                                System.out.println(cp.getQuantity());
                                flag = true;
                            }
                        }
                        if (!flag) {
                            cart_items ct = new cart_items();
                            ct.setQuantity(quantity);
                            ct.setProduct_id(p.getProduct_id());
                            ct.setCard_id("" + 1);
                            ct.setPrice(p.getPrice());
                            lp.add(ct);
                        }
                        c.setItems(lp);
                        session.setAttribute("cart", c);
                    }
                    response.sendRedirect("/cart.jsp");
                }
            }
        } else {
            response.sendRedirect("/login");
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
