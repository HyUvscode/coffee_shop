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
import jakarta.servlet.http.Cookie;
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
public class LoginServlet extends HttpServlet {

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
                  out.println("<title>Servlet LoginServlet</title>");
                  out.println("</head>");
                  out.println("<body>");
                  out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
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
            HttpSession session = request.getSession();
            if (path.endsWith("/login") && session.getAttribute("login") == null) {
                  // khoi tao session 

                  request.getRequestDispatcher("/login.jsp").forward(request, response);
            } else {
                  if (path.endsWith("/login/Create")) {
                        request.getRequestDispatcher("/register.jsp").forward(request, response);
                  }else {
                        request.getRequestDispatcher("/profileCus.jsp").forward(request, response);
                  }
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
            if (request.getParameter("btnSigin") != null) {
                  String username = request.getParameter("txtUS");
                  String password = request.getParameter("txtPwd");
                  boolean rememberMe = "on".equals(request.getParameter("remember"));

                  AccountDAO aD = new AccountDAO();
                  accounts acc = aD.checkLogin(username, getMd5(password));
                  if (acc != null) {
                        request.getSession().setAttribute("", username);

                        if (rememberMe) {
                              Cookie cookie = new Cookie("loginCookie", username);
                              cookie.setMaxAge(20 * 24 * 60 * 60);
                              response.addCookie(cookie);
                        } else {

                              Cookie[] cookies = request.getCookies();
                              if (cookies != null) {
                                    for (Cookie cookie : cookies) {
                                          if (cookie.getName().equals("loginCookie")) {
                                                cookie.setMaxAge(0);
                                                response.addCookie(cookie);
                                                break;
                                          }
                                    }
                              }
                        }

                        HttpSession session = request.getSession();
                        if (acc.getRole_id().equals("St")) {
                              session.setAttribute("login", "staff");
                              response.sendRedirect("/role/St?staff=" + String.valueOf(acc.getAccount_id()));
                        } else if (acc.getRole_id().equals("Ad")) {
                              session.setAttribute("login", "admin");
                              response.sendRedirect("/role/Ad?admin=" + String.valueOf(acc.getAccount_id()));
                        } else if (acc.getRole_id().equals("Cus")) {
                              session.setAttribute("login", "customer");
                              session.setAttribute("Cus_id", acc.getAccount_id()+"");
                              response.sendRedirect("/role/Cus?customer=" + String.valueOf(acc.getAccount_id()));
                        }
                  } else {
                        request.setAttribute("error", "Username or password is wrong");
                        request.getRequestDispatcher("/login.jsp").forward(request, response);
                  }
            }
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
