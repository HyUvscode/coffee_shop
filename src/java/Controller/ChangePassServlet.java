/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAOs.AccountDAO;
import Models.accounts;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Dao Thien Hieu Loi - CE171675
 */
public class ChangePassServlet extends HttpServlet {

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
            try ( PrintWriter out = response.getWriter()) {
                  /* TODO output your page here. You may use following sample code. */
                  out.println("<!DOCTYPE html>");
                  out.println("<html>");
                  out.println("<head>");
                  out.println("<title>Servlet changePassServlet</title>");
                  out.println("</head>");
                  out.println("<body>");
                  out.println("<h1>Servlet changePassServlet at " + request.getContextPath() + "</h1>");
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
            if (path.endsWith("/profile")) {
                  request.getRequestDispatcher("/profile.jsp").forward(request, response);
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
            //String password = request.getParameter("");
            String username = request.getParameter("username");
        String oldPass = request.getParameter("oldPass");
        String newPass = request.getParameter("newPass");

        AccountDAO aD = new AccountDAO();
        accounts acc = aD.checkLogin2(username, oldPass);
        if (acc == null) {
            String status = "error";
            // Tạo chuỗi JSON
            String json = "<script>alert('mat khau cu sai');</script><script>setTimeout(function() {window.location.href = '/profile?admin=2';}, 1000);</script>";
            PrintWriter out = response.getWriter();
            out.println(json);
            
            //response.sendRedirect("/profile?admin=2");
        } else {
            aD.ChangePass(username, newPass);
            HttpSession session = request.getSession();
            session.invalidate();
            response.sendRedirect("/login");
        }
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
