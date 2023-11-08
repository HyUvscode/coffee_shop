package Controller;

import DAOs.AccountDAO;
import Models.accounts;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.security.SecureRandom;

public class forgot extends HttpServlet {

    private static final String CHARACTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String type = request.getParameter("type");
        if (type.equals("sendmail")) {
            int stop = 0;
            String to = request.getParameter("email");
            final String from = "nguyenphuoclocbt28@gmail.com"; // Địa chỉ email của bạn
            final String password = "cpxo rlct zkit xfco"; // Mật khẩu email của bạn

            AccountDAO aD = new AccountDAO();
            accounts acc = aD.Check_Realaccount(to);
            if (acc == null) {
                String status = "error";
                // Tạo chuỗi JSON
                String json = "{\"status\":\"" + status + "\",\"msg\":\"Email khong ton tai \"}";
                PrintWriter out = response.getWriter();
                out.println(json);
            } else {

                // Cấu hình thông tin kết nối Gmail
                Properties properties = new Properties();
                properties.put("mail.smtp.host", "smtp.gmail.com");
                properties.put("mail.smtp.port", "587");
                properties.put("mail.smtp.auth", "true");
                properties.put("mail.smtp.starttls.enable", "true");

                Session session = Session.getDefaultInstance(properties, new Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(from, password);
                    }
                });

                response.setContentType("text/html");
                PrintWriter out = response.getWriter();

                try {
                    MimeMessage message = new MimeMessage(session);
                    System.out.println("message: " + message);
                    message.setFrom(new InternetAddress(from));
                    message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
                    message.setSubject("Forgot Password MAIL_SEND");
                    //////////// tao key
                    int length = 10; // Độ dài của chuỗi ngẫu nhiên
                    StringBuilder randomString = new StringBuilder();

                    SecureRandom secureRandom = new SecureRandom();
                    for (int i = 0; i < length; i++) {
                        int randomIndex = secureRandom.nextInt(CHARACTERS.length());
                        char randomChar = CHARACTERS.charAt(randomIndex);
                        randomString.append(randomChar);
                    }
                    /////////
                    message.setText("Ma reset pass: " + randomString.toString());

                    Transport.send(message);

                    aD.insertKey(acc.getUsername(), acc.getEmail(), randomString.toString());

                    // Các giá trị chuỗi
                    String status = "success";

                    // Tạo chuỗi JSON
                    String json = "{\"status\":\"" + status + "\"}";

                    out.println(json);

                } catch (MessagingException mex) {
                    String status = "error";
                    String msg = mex.getMessage();
                    String json = "{\"status\":\"" + status + "\",\"msg\":\"" + msg + "\"}";
                    out.println(json);
                }

            }
        } else {

            AccountDAO aD = new AccountDAO();
            String key_forgot = request.getParameter("key_forgot");
            String password = request.getParameter("password");
            String username = aD.Check_Keyforgot(key_forgot);
            if (username == null) {
                String status = "error";
                // Tạo chuỗi JSON
                String json = "{\"status\":\"" + status + "\",\"msg\":\"Sai key \"}";
                PrintWriter out = response.getWriter();
                out.println(json);
            } else {

                aD.ChangePass(username, password);
                aD.deleteKey(username);

                String status = "success";
                // Tạo chuỗi JSON
                String json = "{\"status\":\"" + status + "\",\"msg\":\"Success \"}";
                PrintWriter out = response.getWriter();
                out.println(json);
            }
        }
    }
}
