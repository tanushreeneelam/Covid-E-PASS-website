   
package newpackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/VerifyCode"})
public class VerifyCode extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            HttpSession session = request.getSession();
            User user= (User) session.getAttribute("authcode");
            
            String code = request.getParameter("authcode");
            
            if(code.equals(user.getCode())){
                
               //insert data 
               try{
                   Class.forName("com.mysql.jdbc.Driver");
                   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/virtusa","root","project");
                   out.println("Connected");
                   
                   PreparedStatement st = con.prepareStatement("insert into users values(?,?,?,?,?)"); 
                   out.println("1--Verification Done and succefully registered");
                   
                   st.setString(1,null); 
                   st.setString(2,user.getName()); 
                   st.setString(3,user.getEmail()); 
                   st.setString(4,"123"); 
                   st.setString(5,user.getCode()); 
                   st.executeUpdate(); 
                   
                   session.setAttribute("aadhar_no",user.getCode());
                   session.setAttribute("name",user.getName());
                   
                   out.println("Verification Done and succefully registered");
                   response.sendRedirect("home.jsp");
               }catch(Exception e){
                   out.println("database connection failed");
               }
            }else{
                out.println("Incorrect verification code");
            }
            
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}

    