/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author khuy
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
            String role_id = request.getParameter("role_id");
            int account_id = Integer.parseInt(request.getParameter("account_id"));
            
            HttpSession session = request.getSession();
            if (role_id.equals("St")) {
                  session.setAttribute("login", "staff");
                  response.sendRedirect("/role/St?staff=" + String.valueOf(account_id));
            } else if (role_id.equals("Ad")) {
                  session.setAttribute("login", "admin");
                  response.sendRedirect("/role/Ad?admin=" + String.valueOf(account_id));
            } else if (role_id.equals("Cus")) {
                  session.setAttribute("login", "customer");
                  response.sendRedirect("/role/Cus?customer=" + String.valueOf(account_id));
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
