/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(urlPatterns = {"/ResendOTP"})
public class ResendOTP extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("saiwuerio");
            HttpSession session = request.getSession();
            User user= (User) session.getAttribute("authcode");
            
            out.println("jdgjhwahdu");
        	//create instance object of the SendEmail Class
           SendEmail sm = new SendEmail();
      		//get the 6-digit code
           String code = sm.getRandom();
           user.setCode(code);
          
           boolean test = sm.sendEmail(user);
          out.println(test);
      		//check if the email send successfully
           if(test){
               //HttpSession session  = request.getSession();
               //session.setAttribute("authcode", user);
               response.sendRedirect("verify.jsp");
           }else{
      		  out.println("Failed to send verification email");
      	   }
        }finally {            
            //out.close();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        processRequest(request, response);
    }

   
}
