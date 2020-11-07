<%@page import="com.itextpdf.text.FontFactory"%>
<%@page import="com.itextpdf.text.Font"%>
<%@page import="com.itextpdf.kernel.colors.WebColors"%>
<%@page import="com.itextpdf.text.BaseColor"%>
<%@page import="com.itextpdf.text.Phrase"%>
<%@page import="com.itextpdf.text.pdf.PdfPCell"%>
<%@page import="com.itextpdf.text.pdf.PdfPTable"%>
<%@page import="com.itextpdf.layout.element.Table"%>
<%@page import="com.itextpdf.text.Chunk"%>
<%@page import="com.itextpdf.text.Element"%>
<%@page import="com.itextpdf.text.pdf.PdfWriter"%>
<%@page import="com.itextpdf.text.Paragraph"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="com.itextpdf.text.Document"%>
<%@page import="com.itextpdf.layout.element.Cell"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
            //feth form value
           //String fname = request.getParameter("number");
           //HttpSession session=request.getSession();  
           String fname=(String)session.getAttribute("aadhar_no");
           String name = (String) session.getAttribute("name");
           String src = (String) session.getAttribute("source");
           String dest = (String) session.getAttribute("destination");
           
           String file_name="C:\\Users\\Tanushree Neelam\\Documents\\NetBeansProjects\\Virtusa\\web\\files\\"+fname+".pdf";
           Document document=new Document();
           PdfWriter.getInstance(document,new FileOutputStream(file_name));
           
           document.open();
           
           //Font fontStyle_Bold =  FontFactory.getFont(FontFactory.TIMES, 16f, Font.BOLD);
           Paragraph para=new Paragraph("COVID E-PASS");
           para.setAlignment(Element.ALIGN_CENTER);
           document.add(para);
           
           document.add(Chunk.NEWLINE );
           document.add(Chunk.NEWLINE );
           
           para=new Paragraph("Aadhar :"+fname);
           document.add(para);
           para=new Paragraph("Name   :"+name);
           document.add(para);
           
           document.add(Chunk.NEWLINE );
           document.add(Chunk.NEWLINE );
           
           PdfPTable table=new PdfPTable(2);
           PdfPCell c1=new PdfPCell(new Phrase("Source"));
           c1.setFixedHeight(28f);
           c1.setBackgroundColor(new BaseColor(217,246,249));
           c1.setHorizontalAlignment(Element.ALIGN_CENTER);
           table.addCell(c1);
           
           c1=new PdfPCell(new Phrase("Destination"));
           c1.setFixedHeight(28f);
           c1.setBackgroundColor(new BaseColor(217,246,249));
           c1.setHorizontalAlignment(Element.ALIGN_CENTER);
           table.addCell(c1);
           table.setHeaderRows(1);

           table.addCell(src);
           table.addCell(dest);
           document.add(table);
           
           document.add(Chunk.NEWLINE );
           document.add(Chunk.NEWLINE );
           document.add(Chunk.NEWLINE );
           
           para=new Paragraph("All right reserved");
           para.setAlignment(Element.ALIGN_CENTER);
           document.add(para);
          
           document.close();
           //out.println("dkakjejfk");
           response.sendRedirect("download.jsp");
           
        } catch(Exception e){
            //PrintWriter out = response.getWriter();
            //out.println("jksfhkjdhfjkhdskjhdkjfkjfe");
        }
            //           float [] pointColumnWidths = {150F, 150F};   
//           Table table = new Table(pointColumnWidths);    
//
//        // Adding cells to the table       
//           table.addCell(new Cell().add("Name"));       
//           table.addCell(new Cell().add("Raju"));
           
//	  PdfPTable table = new PdfPTable(new float[] { 2, 1, 2 });
//	  table.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
//	  table.addCell("Name");
//          table.addCell("Age");
//          table.addCell("Location");
        %>
           
    </body>
</html>

<!-- 
 <form action="GeneratePdf" method="post">
                <input type="submit" value="Enter"> 
            </form>


           try{
            //feth form value
           //String fname = request.getParameter("number");
            
           //HttpSession session = request.getSession();
           String fname = (String) session.getAttribute("aadhar_no");
           String name = (String) session.getAttribute("name");
           String src = (String) session.getAttribute("source");
           String dest = (String) session.getAttribute("destination");
           
           String file_name="C:\\Users\\Tanushree Neelam\\Documents\\NetBeansProjects\\Virtusa\\web\\files\\"+fname+".pdf";
           Document document=new Document();
           
           PdfWriter.getInstance(document,new FileOutputStream(file_name));
           
           document.open();
           
           Paragraph para=new Paragraph("Aadhar: "+fname);
           document.add(para);
           para=new Paragraph("Name: "+name);
           document.add(para);
           para=new Paragraph("Source: "+src);
           document.add(para);
           para=new Paragraph("Destination: "+dest);
           document.add(para);
           
           document.close();
           response.sendRedirect("download.jsp");
           
        } catch(Exception e){
            
        }
            
--!>