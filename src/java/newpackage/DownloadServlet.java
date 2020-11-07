package newpackage;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException; 
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "DownloadServlet", urlPatterns = {"/DownloadServlet"})
public class DownloadServlet extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        try {
            
            String name = request.getParameter("filename");
            String path=getServletContext().getRealPath("/"+"files"+File.separator+name); 
            
            response.setContentType("APPLICATION/OCTET-STREAM");
            response.setHeader("Content-Disposition","attachment; filename=\"" + name + "\"");
            
            FileInputStream ins = new FileInputStream(path);
            int i;   
            while ((i=ins.read())!= -1) {  
                 out.write(i);   
            }
             ins.close();
             out.close();
             
             //response.sendRedirect("home.jsp");
        } catch(Exception e) {            
            out.println("downloadddd");
        }
    }
}
    /*
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        

        try (PrintWriter out = response.getWriter()) {

            String name = request.getParameter("filename");
            String path = getServletContext().getRealPath(File.separator + "files" + File.separator + name);

            File dwFile = new File(path);
            if (dwFile.exists()) {
                
                // gets MIME type of the file
                String mimeType = getServletContext().getMimeType(path);
                if (mimeType == null) {
                    // set to binary type if MIME mapping not found
                    mimeType = "APPLICATION/OCTET-STREAM";
                }
                response.setContentType("APPLICATION/OCTET-STREAM");
                response.setContentLength((int) dwFile.length());
                
                response.setHeader("Content-Disposition", "attachment; filename=\""+dwFile.getName()+"\"");

                FileInputStream in = new FileInputStream(dwFile);

                //byte[] buffer = new byte[in.available()];
                
                int i;
                while((i=in.read())!= -1){
                    out.write(i);
                }
                in.close();
                out.close();
            } else {
                out.println("file not available");
            }
        }
    }*/