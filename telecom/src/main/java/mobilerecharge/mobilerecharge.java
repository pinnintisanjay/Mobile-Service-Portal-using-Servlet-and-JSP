package mobilerecharge;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/mobilerecharge")
public class mobilerecharge extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String userType = (String) session.getAttribute("userType");

        if ("prepaid".equals(userType)) {
            response.sendRedirect("prepaid_mobile_recharge.jsp");
        } else if ("postpaid".equals(userType)) {
            response.sendRedirect("postpaid_mobile_recharge.jsp");
        } else {
            response.sendRedirect("home.jsp"); 
        }
    }
}
