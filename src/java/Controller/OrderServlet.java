/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAOs.AccountDAO;
import DAOs.OrderDAO;
import DAOs.ProductDAO;
import Models.accounts;
import Models.orderDetail;
import Models.orders;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.time.LocalDate;

/**
 *
 * @author khuy
 */
public class OrderServlet extends HttpServlet {

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
                  out.println("<title>Servlet OrderServlet</title>");
                  out.println("</head>");
                  out.println("<body>");
                  out.println("<h1>Servlet OrderServlet at " + request.getContextPath() + "</h1>");
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
            if (path.endsWith("/order")) {
                  request.getRequestDispatcher("/order.jsp").forward(request, response);
//            } else if (path.endsWith("/order/Pay")) {
//                  request.getRequestDispatcher("/payByStaff.jsp").forward(request, response);
//            } else {
//                  if (path.startsWith("/order/Delete")) {
//                        String id_order = request.getParameter("id_order");
//                        String id_staff = request.getParameter("staff");
//                        CUD_DAO cud_dao = new CUD_DAO();
//                        int count_1 = cud_dao.deleteOrderDetails(id_order);
//                        int count_2 = cud_dao.deleteOrder(id_order);
//                        if (count_1 > 0 && count_2 > 0) {
//                              response.sendRedirect(request.getContextPath() + "/Role/NV?staff=" + id_staff);
//                        } else {
//                              PrintWriter out = response.getWriter();
//                              out.print("fail");
//                        }
//                  }
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
            if (request.getParameter("btnChoose") != null) {
                  request.setAttribute("check", "done");
                  request.setAttribute("staff", request.getParameter("staff_id"));
                  request.setAttribute("category_id", request.getParameter("optCategory"));
                  request.getRequestDispatcher("/order.jsp").forward(request, response);
            }

            if (request.getParameter("btnOrder") != null) {
                  AccountDAO aC = new AccountDAO();
                  ProductDAO aP = new ProductDAO();
                  OrderDAO aO = new OrderDAO();
                  accounts acc = aC.getCusByPhone(request.getParameter("phone").toString());
                  if (acc != null) {
                        if (acc.getRole_id().equals("Cus")) {
                              String[] values = request.getParameterValues("box_product");

                              for (int i = 0; i < values.length; i++) {
                                    int order_id = aO.getMaxOfOrderID();
                                    int staff_id = Integer.parseInt(request.getParameter("staff_id"));
                                    accounts staff_acc = aC.getAccount(staff_id + "");
                                    String customer_username = acc.getUsername();

                                    LocalDate myObj = LocalDate.now();
                                    Date date = Date.valueOf(myObj);

                                    int quantity = Integer.valueOf(request.getParameter("quantity"));
                                    int product_id = Integer.parseInt(values[i]);
                                    double total_price = (int) aP.getTotalPrice(product_id, quantity);

                                    //System.out.println(order_id);

                                    orders order = new orders(order_id, date, staff_acc.getUsername(), customer_username);

                                    orderDetail orderdetails = new orderDetail();
                                    orderdetails = new orderDetail(1, quantity, total_price, product_id, order_id);

                                    int count_order = 0;
                                    count_order = aO.insertOrder(order);
                                    int count_orderDetails = 0;
                                    count_orderDetails = aO.insertOrderDetails(orderdetails);
                                    System.out.println(count_order +" " +count_orderDetails);
                                    if (count_order > 0 && count_orderDetails > 0) {
                                          response.sendRedirect("role/St?staff=" + staff_id);
                                    } else {
                                          // phone trung voi phone cua nhan vien hoac quan ly
                                          request.setAttribute("check", "order fail");
                                          request.setAttribute("staff", request.getParameter("staff_id"));
                                          request.getRequestDispatcher("/order.jsp").forward(request, response);
                                    }
                              }

                        } else {
                              // phone trung voi phone cua nhan vien hoac quan ly
                              request.setAttribute("check", "phone same in dastabase");
                              request.setAttribute("staff", request.getParameter("staff_id"));
                              request.getRequestDispatcher("/order.jsp").forward(request, response);
                        }
                  } else {
                        // khong ton tai 
                        request.setAttribute("check", "The customer's phone number or name does not exist");
                        request.setAttribute("staff", request.getParameter("staff_id"));
                        request.getRequestDispatcher("/order.jsp").forward(request, response);
                  }
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
