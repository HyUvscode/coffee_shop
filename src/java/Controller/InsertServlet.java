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
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 *
 * @author khuy
 */
public class InsertServlet extends HttpServlet {

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
                  out.println("<title>Servlet InsertServlet</title>");
                  out.println("</head>");
                  out.println("<body>");
                  out.println("<h1>Servlet InsertServlet at " + request.getContextPath() + "</h1>");
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
//            System.out.println(path);
            if (path.endsWith("/insert/Ad")) {
                  request.getRequestDispatcher("/insertStaff.jsp").forward(request, response);
//            } else if (path.endsWith("/insert/Cus")) {
//                  request.getRequestDispatcher("/admin").forward(request, response);
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
            String fullname = request.getParameter("fullname");
            int age = Integer.parseInt(request.getParameter("age"));
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String myCity = request.getParameter("myCity");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String admin_id = request.getParameter("admin_id");

            accounts acc = new accounts(username, getMd5(password), 1, fullname, age, email, myCity, phone, "St");
            AccountDAO aD = new AccountDAO();
            int count = aD.insertAccount(acc);

            if (!(count > 0)) {
                  System.out.println("fail");
            }

            HttpSession session = request.getSession();
            session.setAttribute("login", "admin");
            response.sendRedirect("/role/Ad?admin=" + String.valueOf(admin_id));

      }

      public String getMd5(String input) {
            try {

                  // Static getInstance method is called with hashing MD5
                  MessageDigest md = MessageDigest.getInstance("MD5");

                  // digest() method is called to calculate message digest
                  // of an input digest() return array of byte
                  byte[] messageDigest = md.digest(input.getBytes());

                  // Convert byte array into signum representation
                  BigInteger no = new BigInteger(1, messageDigest);

                  // Convert message digest into hex value
                  String hashtext = no.toString(16);
                  while (hashtext.length() < 32) {
                        hashtext = "0" + hashtext;
                  }
                  return hashtext;
            } // For specifying wrong message digest algorithms
            catch (NoSuchAlgorithmException e) {
                  throw new RuntimeException(e);
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
