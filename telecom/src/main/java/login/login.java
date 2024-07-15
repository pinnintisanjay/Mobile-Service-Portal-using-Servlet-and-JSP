package login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/login")
public class login extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mobilenumber = request.getParameter("mobilenumber");
        String password = request.getParameter("password");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase", "root", "Sanjay@123");
            
            String query = "select *from users where mobile_number=? and password=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, mobilenumber);
            pstmt.setString(2, password);
            ResultSet rs=pstmt.executeQuery();
            
            if(rs.next()) {
            	String userType = rs.getString("type");

                HttpSession session = request.getSession();
                session.setAttribute("mobileNumber", mobilenumber);
                session.setAttribute("userType", userType);
                System.out.println("details saved in session");
            	response.sendRedirect("home.jsp");
            }
            else {
            	response.sendRedirect("invalid.jsp");
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        
	}

}
